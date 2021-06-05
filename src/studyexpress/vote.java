package studyexpress;

import java.sql.*;
import java.util.ArrayList;
import java.awt.*;
import java.awt.event.*;
import javax.swing.table.*;

public class vote {
    student s;
    question q;
    answer a;
    comment cmt;
    String subject;
    int subId;
    
    Connection con;
    
    public vote(){}
    
    public ArrayList<Object> getVote(Object qac)
    {
        ArrayList<Object>vote = new ArrayList<>();
        
        String st = new String();
        if(qac instanceof question)
            st += "select vote from studentid.questions where qId='" + ((question) qac).getQuestionId() + "'";
        else if(qac instanceof answer)
            st += "select vote from studentid.answers where aId='" + ((answer) qac).getAnswerId() + "'";
        else if(qac instanceof comment)
            st += "select vote from studentid.comments where cmtId='" + ((comment) qac).getCommentId() + "'";
        //System.out.println("SQL statement: " + st);
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            //con=DriverManager.getConnection(  
           // "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit");
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123"); 
            Statement stmt=con.createStatement();  
            
            ResultSet rs = stmt.executeQuery(st);
            while(rs.next())
                vote.add(rs.getInt("vote"));
            con.close();  
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return vote;
    }
    
    public void increaseVoting(Object qac)
    {
        String st = new String();
        if(qac instanceof question)
            st += "update studentid.questions set vote = vote+1 where qId='" + ((question) qac).getQuestionId() + "'";
        else if(qac instanceof answer)
            st += "update studentid.answers set vote = vote+1 where aId='" + ((answer) qac).getAnswerId() + "'";
        else if(qac instanceof comment)
            st += "update studentid.comments set vote = vote+1 where cmtId='" + ((comment) qac).getCommentId() + "'";
        //System.out.println("SQL statement: " + st);
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            //con=DriverManager.getConnection(  
            //"jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit"); 
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123");
            Statement stmt=con.createStatement();  
            stmt.execute(st);
            con.close();  
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
    public void decreaseVoting(Object qac)
    {
     String st = new String();
        if(qac instanceof question)
            st += "update studentid.questions set vote = vote-1 where qId='" + ((question) qac).getQuestionId() + "'";
        else if(qac instanceof answer)
            st += "update studentid.answers set vote = vote-1 where aId='" + ((answer) qac).getAnswerId() + "'";
        else if(qac instanceof comment)
            st += "update studentid.comments set vote = vote-1 where cmtId='" + ((comment) qac).getCommentId() + "'";
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            //con=DriverManager.getConnection(  
            //"jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit"); 
            con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT","root","qwe123");
            Statement stmt=con.createStatement();  
            stmt.execute(st);
            con.close();  
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
}

class voteController {
    private javax.swing.JPanel btnPanel;
    private javax.swing.JLabel vLabel;
    
    private final vote voting = new vote();
    
    public voteController(Object qac)
    {
        if(qac!=null)
            initUI(qac);
    }
    
    private void initUI(Object qac)
    {   
        btnPanel = new javax.swing.JPanel();
        int noVote = (int)voting.getVote(qac).get(0);
        vLabel = new javax.swing.JLabel();
        vLabel.setText(vLabel.getText() + noVote);
        btnPanel.add(vLabel);
    }
    
    public String getUpBtn()
    {
        return "↑";
    }
    
    public String getDownBtn()
    {
        return "↓";
    }
    
    public javax.swing.JPanel getBtnPanel()
    {
        return btnPanel;
    }
    
    public vote getVote()
    {
        return voting;
    }
    
    public static void increaseRating(student s)
    {
        s.increasePartRating();
    }
    
    public void getLatestVoteResult(Object qac)
    {
        btnPanel = new javax.swing.JPanel();
        int noVote = (int)voting.getVote(qac).get(0);
        vLabel = new javax.swing.JLabel();
        vLabel.setText(vLabel.getText() + noVote);
    }
}
