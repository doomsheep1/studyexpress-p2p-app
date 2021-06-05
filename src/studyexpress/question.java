package studyexpress;

import java.sql.*;
import java.util.ArrayList;

public class question 
{
    Connection con;
    String q, details;
    int subId, qId, vote, ansCount;
    
    public question()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
           // con=DriverManager.getConnection(  
           // "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit"); 
           con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            stmt.execute("create table if not exists studentid.subjects (" +
                                    "subId int NOT NULL AUTO_INCREMENT, " +
                                    "subName VARCHAR(50) NOT NULL," +
                                    "PRIMARY KEY (subId))"
                        );
            stmt.execute("insert into studentid.subjects (subName) select 'Mathematics' where not exists(select * from studentid.subjects where subName='Mathematics')");
            stmt.execute("insert into studentid.subjects (subName) select 'Science' where not exists(select * from studentid.subjects where subName='Science')");
            stmt.execute("create table if not exists studentid.questions (" +
                                    "timestamp  TIMESTAMP DEFAULT CURRENT_TIMESTAMP," +
                                    "qId int NOT NULL AUTO_INCREMENT," +
                                    "subId int NOT NULL," +
                                    "question VARCHAR (255) NOT NULL," +
                                    "snumber int NOT NULL," +
                                    "details VARCHAR (255)," +
                                    "vote int NOT NULL," +
                                    "PRIMARY KEY (qId)," + 
                                    "FOREIGN KEY (subId) REFERENCES subjects(subId)," +
                                    "FOREIGN KEY (snumber) REFERENCES sinfoafter(snumber))"
                        );
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
    public question(String q, String details, int subId, int qId)
    {
        this.q = q;
        this.details = details;
        this.subId = subId;
        this.qId = qId;
    }
    
    // added this for modGen and userMain moderator
    public question (String q, String details, int subId, int qId, int vote)
    {
        this.q = q;
        this.details = details;
        this.subId = subId;
        this.qId = qId;
        this.vote = vote;
    }
    
    // added this for modGen and userMain moderator
    public question (String q, String details, int subId, int qId, int vote, int ansCount)
    {
        this.q = q;
        this.details = details;
        this.subId = subId;
        this.qId = qId;
        this.vote = vote;
        this.ansCount = ansCount;
    }
    
    public String getQuestion()
    {
        return q;
    }
    
    public String getDetails()
    {
        return details;
    }
    
    public int getVote ()
    {
        return vote;
    }
    
    public int getAnsCount ()
    {
        return ansCount;
    }
    
    public ArrayList<Object> getQnsDetail()
    {
        ArrayList<Object>detail = new ArrayList<>();
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
           // con=DriverManager.getConnection(  
           // "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit");
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            ResultSet rs = stmt.executeQuery("select details from studentid.questions where qId=" + getQuestionId());
            while(rs.next())
                detail.add(rs.getString("details"));
            con.close();  
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return detail;
    }
    
    public int getSubjectId()
    {
        return subId;
    }
    
    public int getQuestionId()
    {
        return qId;
    }
    
    public ArrayList<Object> getQuestion(int subId)
    {
        ArrayList<Object>qns = new ArrayList<>();
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
          //  con=DriverManager.getConnection(  
          //  "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit"); 
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            ResultSet rs = stmt.executeQuery("select * from studentid.questions inner join studentid.sinfoafter on subId='" + subId + 
                                             "' and sinfoafter.snumber = questions.snumber order by questions.qId");
            while(rs.next())
            {
                qns.add(rs.getString("question"));
                qns.add(rs.getInt("qId"));
                qns.add("Asker: " + rs.getString("username") + "\nNo of vote:" + rs.getInt("vote") + "\nDate created: " + rs.getString("timestamp"));
                qns.add(rs.getInt("subId"));
                qns.add(rs.getInt("snumber"));
                qns.add(rs.getString("details"));
            }
            con.close();  
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return qns;
    }
    
   
    
    public void setQns(student s, int subId, String qns, String details)
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
           // con=DriverManager.getConnection(  
           // "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit"); 
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            stmt.execute("insert into studentid.questions (subId, question, details, snumber, vote) values ('" + subId + "','" + qns + "','" + details + "','" + s.getsId() 
                          + "'," + 0 + ")");
            con.close();  
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
}

class questionController
{
    private StudentHomeController back;
    private questionController backQP;
    private String subject;
    private seQuestionPageUI qPage;
    private question qns = new question();
    private ArrayList<Object>allQns = new ArrayList<>();
    private ArrayList<Object>allAns = new ArrayList<>();
    private ArrayList<Object>allQnsCmt = new ArrayList<>();
    
    private seViewQuestionUI vQns;
    
    public questionController(){}
    
    public questionController(String subject, student s)
    {
        qPage = new seQuestionPageUI();
        this.subject = subject;
        int subId = 0;
        if("Mathematics".equals(subject))
            subId = 1;
        else
            subId = 2;
        allQns = qns.getQuestion(subId);
        qPage.displayPage(this.subject, allQns);
        qPage.setSubjectInfo(s, subject, subId);
        qPage.setVisible(true);
    }
    
    public void backBtnController(student s)
    {
        back = new StudentHomeController(s);
        back.displayStudentInfo();
    }
    
    public void backBtnControllerQP(String subject, student s)
    {
        backQP = new questionController(subject, s);
    }
    
    public static void newQns(student s, String subject, int subId)
    {
        seNewQuestionUI newQns = new seNewQuestionUI();
        newQns.setNewQnsInfo(s, subject, subId);
        newQns.setVisible(true);
    }
    
    public void addNewQns(student s, int subId, String q, String details)
    {
        qns.setQns(s, subId, q, details);
        s.setNoOfQns();
    }
    
    public void viewQns(question qns, student s, String subject, int subId, int qId)
    {
        answer ans = new answer();
        comment cmt = new comment();
        allAns = ans.getAnswer(qns);
        allQnsCmt = cmt.getComment(qns);
        vQns = new seViewQuestionUI();
        vQns.setVisible(true);
        vQns.displayPage(qns, s, subject, subId, allAns, allQnsCmt);
    }
}
