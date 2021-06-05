package studyexpress;

import java.sql.*;

import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;

public class answer 
{
    Connection con;
    
    student s;
    question q;
    String subject, answer, ansDetails;
    int subId, answerId;
    
    public answer()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            //con=DriverManager.getConnection(  
            //"jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit");
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            stmt.execute("create table if not exists studentid.answers (" +
                                    "timestamp  TIMESTAMP DEFAULT CURRENT_TIMESTAMP," +
                                    "aId int NOT NULL AUTO_INCREMENT," +
                                    "answer VARCHAR (255) NOT NULL," +
                                    "snumber int NOT NULL," +
                                    "vote int NOT NULL," +
                                    "PRIMARY KEY (aId)," +
                                    "FOREIGN KEY (snumber) REFERENCES sinfoafter(snumber))"
                        );
            stmt.execute("create table if not exists studentid.qAnswer (" +
                                    "qId int NOT NULL," +
                                    "aId int NOT NULL," +
                                    "FOREIGN KEY (qId) REFERENCES questions(qId)," +
                                    "FOREIGN KEY (aId) REFERENCES answers(aId))"
                        );
            con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
    public answer(student s, String subject, int subId, question q, String a, int aId, String ansDetails)
    {
        this.s = s;
        this.subject = subject;
        this.subId = subId;
        this.q = q;
        this.answer = a;
        this.answerId = aId;
        this.ansDetails = ansDetails;
    }
    
    public answer(int subId, question q, String a, int aId)
    {
        this.subId = subId;
        this.q = q;
        this.answer = a;
        this.answerId = aId;
    }
    
    public void setAns(student s, String subject, int subId, question q, String newAns)
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
           // con=DriverManager.getConnection(  
           // "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit"); 
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            stmt.execute("insert into studentid.answers (answer, snumber, vote) values ('" + newAns + "','" + s.getsId() + "'," + 0 + ")");
            stmt.execute("insert into studentid.qanswer (qId, aId) values ('" + q.getQuestionId() + "',"
                       + "   (select aId from studentid.answers where studentid.answers.aId=(select max(aId) from studentid.answers)))");
            con.close();  
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
    public question getQuestion()
    {
        return q;
    }
    
    public int getAnswerId()
    {
        return answerId;
    }
    
    public String getAnswer()
    {
        return answer;
    }
    
    public String getAnsDetails()
    {
        return ansDetails;
    }
    
    public ArrayList<Object> getAnswer(question q)
    {
        ArrayList<Object>qns = new ArrayList<>();
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
           // con=DriverManager.getConnection(  
           // "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit");
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            ResultSet rs = stmt.executeQuery("select * from studentid.answers inner join studentid.qanswer on answers.aId = qanswer.aId and qanswer.qId='" + q.getQuestionId() + 
                                             "' inner join studentid.sinfoafter on sinfoafter.snumber = answers.snumber order by answers.aId");
            while(rs.next())
            {
                qns.add(rs.getString("answer"));
                qns.add(rs.getInt("aId"));
                qns.add("Answerer: " + rs.getString("username") + "\nNo of vote:" + rs.getInt("vote") + "\nDate created: " + rs.getString("timestamp"));
                qns.add(rs.getInt("snumber"));
            }
            con.close();  
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return qns;
    }
    

}

class answerController
{
    seNewAnswerUI answerPage;
    answer ans;
    
    student s;
    String subject;
    question q;
    
    public answerController(){}
    
    public void newAns(student s, String subject, int subId, question q)
    {
        answerPage = new seNewAnswerUI();
        answerPage.setVisible(true);
        ans = new answer();
        answerPage.setInfo(s, subject, subId, q);
    }
    
    public void addNewAns(student s, String subject, int subId, question q, String newAns)
    {
        ans = new answer();
        ans.setAns(s, subject, subId, q, newAns);
        s.setNoOfAns();
    }
    
    public void viewAns(student s, String subject, int subId, question q, answer a)
    {
        comment cmt = new comment();
        seViewAnswerUI viewAnsPg = new seViewAnswerUI();
        ArrayList<Object>allCmt = cmt.getComment(a);
        viewAnsPg.setInfo(s, subject, subId, q, a, allCmt);
        viewAnsPg.setVisible(true);
    }
    
    public void backBtnController(question q, student s, String subject, int subId)
    {
        questionController back = new questionController();
        back.viewQns(q, s, subject, subId, q.getQuestionId());
    }
}
