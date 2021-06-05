package studyexpress;

import java.sql.*;
import java.util.ArrayList;

public class comment 
{
    Connection con;
    
    student s;
    question q;
    answer a;
    String subject, comment;
    int subId, cmtId;
    
    public comment()
    {
        try
        {  
            Class.forName("com.mysql.cj.jdbc.Driver"); 
           // con=DriverManager.getConnection(  
           // "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit"); 
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            stmt.execute("create table if not exists studentid.comments (" +
                                    "timestamp  TIMESTAMP DEFAULT CURRENT_TIMESTAMP," +
                                    "cmtId int NOT NULL AUTO_INCREMENT," +
                                    "comment VARCHAR (255) NOT NULL," +
                                    "snumber int NOT NULL," +
                                    "vote int NOT NULL," +
                                    "PRIMARY KEY (cmtId)," +
                                    "FOREIGN KEY (snumber) REFERENCES sinfoafter(snumber))"
                        );
            stmt.execute("create table if not exists studentid.qComment (" +
                                    "qId int NOT NULL," +
                                    "cmtId int NOT NULL," +
                                    "FOREIGN KEY (qId) REFERENCES questions(qId)," +
                                    "FOREIGN KEY (cmtId) REFERENCES comments(cmtId))"
                        );
            stmt.execute("create table if not exists studentid.aComment (" +
                                    "aId int NOT NULL," +
                                    "cmtId int NOT NULL," +
                                    "FOREIGN KEY (aId) REFERENCES answers(aId)," +
                                    "FOREIGN KEY (cmtId) REFERENCES comments(cmtId))"
                        );
            con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
    public comment(student s, String subject, int subId, Object qOa, String a, String comment)
    {
        this.s = s;
        this.subject = subject;
        this.subId = subId;
        if(qOa instanceof question)
            this.q = (question)qOa;
        else if(qOa instanceof answer)
            this.a = (answer)qOa;
        this.comment = comment;
    }
    
    public comment(int subId, Object qOa, String comment, int cmtId)
    {
        this.subject = subject;
        this.subId = subId;
        if(qOa instanceof question)
            this.q = (question)qOa;
        else if(qOa instanceof answer)
            this.a = (answer)qOa;
        this.comment = comment;
        this.cmtId = cmtId;
    }
    
    public int getCommentId()
    {
        return cmtId;
    }
    
    public void setCmt(student s, String subject, int subId, Object qOa, String newCmt)
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
          //  con=DriverManager.getConnection(  
          //  "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit"); 
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            stmt.execute("insert into studentid.comments(comment, snumber, vote) values ('" + newCmt + "','" + s.getsId() + "'," + 0 + ")");
            if(qOa instanceof question)
            {
                stmt.execute("insert into studentid.qComment (qId, cmtId) values ('" + ((question) qOa).getQuestionId() + "',"
                           + "   (select cmtId from studentid.comments where studentid.comments.cmtId=(select max(cmtId) from studentid.comments)))");
            }
            else if(qOa instanceof answer)
            {
                stmt.execute("insert into studentid.aComment (aId, cmtId) values ('" + ((answer) qOa).getAnswerId() + "',"
                           + "   (select cmtId from studentid.comments where studentid.comments.cmtId=(select max(cmtId) from studentid.comments)))");
            }
            con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
    public ArrayList<Object> getComment(Object qOa)
    {
        ArrayList<Object>obj = new ArrayList<>();
        String str = new String();
        if(qOa instanceof question)
            str += "inner join studentid.qcomment on studentid.qcomment.qId='" + ((question) qOa).getQuestionId() + 
                   "' and studentid.comments.cmtId=studentid.qcomment.cmtId";

        else if(qOa instanceof answer)
            str += "inner join studentid.acomment on studentid.acomment.aId='" + ((answer) qOa).getAnswerId() + 
                   "' and studentid.comments.cmtId=studentid.acomment.cmtId";
        str += " inner join studentid.sinfoafter on sinfoafter.snumber = comments.snumber order by comments.cmtId";
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); //can change if using different one
          //  con=DriverManager.getConnection(  
          //  "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit");
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            ResultSet rs = stmt.executeQuery("select * from studentid.comments " + str);
            while(rs.next())
            {
                obj.add(rs.getString("comment"));
                obj.add(rs.getInt("cmtId"));
                obj.add("Commenter: " + rs.getString("username") + "\nNo of vote:" + rs.getInt("vote") + "\nDate created: " + rs.getString("timestamp"));
                obj.add(rs.getInt("snumber"));
            }
            con.close();  
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return obj;
    }
    
    public String getComment()
    {
        return comment;
    }
}

class commentController
{
    comment cmt;
    seNewCommentUI newCmtPage;
    
    public commentController(){}
    
    public void newCmt(student s, String subject, int subId, Object qOa)
    {
        cmt = new comment();
        newCmtPage = new seNewCommentUI();
        newCmtPage.setVisible(true);
        newCmtPage.setInfo(s, subject, subId, qOa);
    }
    
    public void addNewCmt(student s, String subject, int subId, Object qOa, String newCmt)
    {
        cmt = new comment();
        cmt.setCmt(s, subject, subId, qOa, newCmt);
        s.setNoOfComment();
    }
    
    public void backBtnController(Object qOa, student s, String subject, int subId)
    {
        cmt = new comment();
        answer ans = new answer();
        
        if(qOa instanceof question)
        {
            questionController back = new questionController();
            back.viewQns((question)qOa, s, subject, subId, ((question) qOa).getQuestionId());
        }
        else if(qOa instanceof answer)
        {
            answerController back = new answerController();
            back.viewAns(s, subject, subId, ((answer)qOa).getQuestion(), ((answer)qOa));
        }
    }
}
