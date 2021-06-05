// Entity for user accounts
package studyexpress;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

class userMain 
{
    protected String username, password, fullname, email;
    protected int phone;
    protected Object userType;
    
    public userMain ()
    {
        username = "";
        password = "";
        userType = "";
    }
    
  
    public userMain (String username, String password, String fullname, String email, int phone)
    {
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
    }
    
    public String getUsername ()
    {
        return username;
    }
    
    public String getPassword ()
    {
        return password;
    }
    
    public void setPassword (String password)
    {
        this.password = password;
    }
    
    public String getFullName ()
    {
        return fullname;
    }
    
    public void setFullName (String fullname)
    {
        this.fullname = fullname;
    }
    
    public String getEmail ()
    {
        return email;
    }
    
    public void setEmail (String email)
    {
        this.email = email;
    }
    
    public int getPhone ()
    {
        return phone;
    }
    
    public void setPhone (int phone)
    {
        this.phone = phone;
    }
    
    public Object getUserType ()
    {
        return userType;
    }
    
    public static void updateAccount(String st)
    {
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit"); 
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123"); 
            Statement stmt = conn.createStatement ();
            stmt.executeUpdate(st);
            conn.close ();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
}

class admin extends userMain
{   
    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
    PreparedStatement pstmt = null;
    
    private ArrayList <student> sInfoGrp;
    private student sInfoIndi;
    
    // for default admin hardcoded account
    public admin ()
    {
        username = "admin";
        password = "admin";
        userType = "Admin";
    }
    
    public boolean validate (String username, String password, Object typeOfUser)
    {
        boolean logon = false;
        if(typeOfUser.equals(getUserType()))
        {
            try
            {
                Class.forName ("com.mysql.cj.jdbc.Driver");       
               // conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
                st = conn.createStatement ();
                rs = st.executeQuery ("SELECT * FROM studentid.useradmin");
                while (rs.next ())
                {
                    if(username.equals(rs.getString("username")) && password.equals(rs.getString("password")))
                    {
                        logon = true;
                        break;
                    }
                }
                conn.close ();
            }
            catch (Exception e)
            {
                System.out.print (e);
            }
        }
        return logon;
    }
    
    // instantiate studentInfoBefore list and store a list of students to be displayed in pending usersList in seAdminHomeUI
    // also used to match pending users to display when selected
    public ArrayList <student> pendingList ()
    {
        sInfoGrp = new ArrayList <student> ();
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            st = conn.createStatement ();
            rs = st.executeQuery ("SELECT * FROM studentid.sinfobefore");
            while (rs.next ())
            {
                sInfoIndi = new student (rs.getString ("username"), rs.getString ("password"), rs.getInt ("snumber"), rs.getString ("fullname"), rs.getString ("email"), rs.getInt ("phone")); 
                sInfoGrp.add (sInfoIndi);
            }
            conn.close ();
        }
        catch (Exception e)
        {
            System.out.print (e);
        }
        return sInfoGrp;
    }
    
    public void deleteStudent (student selected)
    {
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            pstmt = conn.prepareStatement ("DELETE FROM studentid.sinfobefore WHERE username = ?");
            pstmt.setString (1, selected.getUsername ());
            pstmt.executeUpdate ();
            conn.close ();
        }
        catch (Exception e)
        {
            e.printStackTrace ();
        }
    }
    
    public void approveStudent (student selected)  // changes made here
    {
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            PreparedStatement pstmt = conn.prepareStatement ("insert into studentid.sinfoafter values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");               
            pstmt.setString (1, selected.getUsername ());
            pstmt.setString (2, selected.getPassword());
            pstmt.setInt (3, selected.getsId ());
            pstmt.setString (4, selected.getFullName ());
            pstmt.setString (5, selected.getEmail ());
            pstmt.setInt (6, selected.getPhone ());
            pstmt.setInt (7, 0);
            pstmt.setInt (8, 1);
            pstmt.setInt (9, 0);
            pstmt.setInt (10, 0);
            pstmt.setInt (11, 0);
            pstmt.executeUpdate();
            conn.close ();
        }
        catch (Exception e)
        {
            System.out.print (e);
        }
    }
    
    // instantiate studentInfoAfter list and store a list of students to be displayed in current usersList in seAdminHomeUI
    // also used to match current users to display when selected
    public ArrayList <student> currentList ()
    {
        sInfoGrp = new ArrayList <student> ();
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            st = conn.createStatement ();
            rs = st.executeQuery ("SELECT * FROM studentid.sinfoafter");
            while (rs.next ())
            {
                sInfoIndi = new student (rs.getString ("username"), rs.getString ("password"), rs.getInt ("snumber"), rs.getString ("fullname"), rs.getString ("email"), rs.getInt ("phone"), rs.getInt("participationRating"), 
                                         rs.getInt ("status"), rs.getInt("noOfQns"), rs.getInt("noOfAns"), rs.getInt("noOfCmt"));
                sInfoGrp.add (sInfoIndi);
            }
            conn.close ();
        }
        catch (Exception e)
        {
            System.out.print (e);
        }
        return sInfoGrp;
    }
    
    public void updateStudent (student selected) throws Exception
    {
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            pstmt = conn.prepareStatement("UPDATE studentid.sinfoafter SET username = ?, password = ?, snumber = ?, fullname = ?, email = ?, phone = ?, status = ? WHERE username = ?"); 
            pstmt.setString (1, selected.getUsername ());
            pstmt.setString (2, selected.getPassword ());
            pstmt.setInt (3, selected.getsId ());
            pstmt.setString (4, selected.getFullName ());
            pstmt.setString (5, selected.getEmail ());
            pstmt.setInt (6, selected.getPhone ());
            pstmt.setInt (7, selected.getStatus ());
            pstmt.setString (8, selected.getUsername ());
            pstmt.executeUpdate ();
            conn.close ();
        }
        catch (Exception e)
        {
            System.out.print (e);
            throw new Exception (e);
        }
    }
}

class moderator extends userMain
{
    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
    
    private student topStudent;
    private ArrayList <student> topStudGrp;
    
    private question topQn;
    private ArrayList <question> topQnGrp;
    
    SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
    Calendar cal = Calendar.getInstance ();

    public moderator ()
    {
        userType = "Moderator";
    }
// for manipulating full moderator info database
    public moderator (String username, String password, String fullname, String email, int phone)
    {
        super (username, password, fullname, email, phone);
    }

    public moderator(moderator m)
    {
        super(m.getUsername(), m.getPassword(), m.getFullName(), m.getEmail(), m.getPhone());
    }
    
    public boolean validate (String username, String password, Object typeOfUser)
    {
        boolean logon = false;
        if(typeOfUser.equals(getUserType()))
        {
            try
            {
                Class.forName ("com.mysql.cj.jdbc.Driver");
                //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
                st = conn.createStatement ();
                rs = st.executeQuery ("SELECT * FROM studentid.moderator");
                while (rs.next ())
                {
                    if(username.equals(rs.getString("username")) && password.equals(rs.getString("password")))
                    {
                        logon = true;
                        break;
                    }
                }
                conn.close ();
            }
            catch (Exception e)
            {
                System.out.print (e);
            }
        }
        return logon;
    }
    
    public moderator setSession(String username, String password)
    {
       String fullname = "", email = "";
       int phone = 0;;
       
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            st = conn.createStatement ();
            rs = st.executeQuery ("SELECT * FROM studentid.moderator where username='" + username +"' and password='" + password + "'");
            while (rs.next ())
            {
                fullname = rs.getString("fullname");
                email = rs.getString("email");
                phone = rs.getInt("phone");
            }
            conn.close ();
        }
        catch (Exception e)
        {
            System.out.print (e);
        }
        return new moderator(username, password, fullname, email, phone);
    }
    
    public ArrayList <student> retrieveTopRating ()
    {
        try
        {
            topStudGrp = new ArrayList <student> ();
            Class.forName ("com.mysql.cj.jdbc.Driver");     
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            st = conn.createStatement ();
            rs = st.executeQuery ("SELECT * FROM studentid.sinfoafter WHERE participationRating IN (SELECT MAX(participationRating) FROM studentid.sinfoafter)");
            while (rs.next ())
            {       
                topStudent = new student (rs.getString ("username"), rs.getString ("password"), rs.getInt ("snumber"), rs.getString ("fullname"), rs.getString ("email"), rs.getInt ("phone"), rs.getInt("participationRating"), 
                                         rs.getInt ("status"), rs.getInt("noOfQns"), rs.getInt("noOfAns"), rs.getInt("noOfCmt"));
                topStudGrp.add (topStudent);
            }   
        }
        catch (Exception e)
        {
            System.out.print (e);
        }
        return topStudGrp;
    }
    
    public ArrayList <question> retrieveTopMonth ()
    {
        try
        {
            topQnGrp = new ArrayList <question> ();
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            int currentYear = cal.get(Calendar.YEAR);
            System.out.println ("Year: " + currentYear);
            int currentMth = cal.get (Calendar.MONTH) + 1;
            System.out.println ("Month: " + currentMth);
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM studentid.questions WHERE vote IN (SELECT MAX(vote) FROM studentid.questions WHERE YEAR(timestamp) = ? AND MONTH(timestamp) = ?) AND YEAR(timestamp) = ? AND MONTH(timestamp) = ?");
            pstmt.setInt (1, currentYear);
            pstmt.setInt (2, currentMth);
            pstmt.setInt (3, currentYear);
            pstmt.setInt (4, currentMth);
            rs = pstmt.executeQuery();
            while (rs.next ())
            {
                topQn = new question (rs.getString ("question"), rs.getString ("details"), rs.getInt ("subId"), rs.getInt ("qId"), rs.getInt ("vote"));
                topQnGrp.add (topQn);
            }
        } 
        catch (Exception e)
        {
            System.err.print (e);
        }
        return topQnGrp;
    }
    
    public ArrayList <question> retrieveTopWeek ()
    {
        try
        {   
            topQnGrp = new ArrayList <question> ();
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            int currentYear = cal.get(Calendar.YEAR);
            int currentWeek = (cal.get (Calendar.WEEK_OF_YEAR));
            System.out.println ("week: " + currentWeek);
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM studentid.questions WHERE vote IN (SELECT MAX(vote) FROM studentid.questions WHERE YEAR(timestamp) = ? AND WEEK(timestamp, 4) = ?) AND YEAR(timestamp) = ? AND WEEK(timestamp, 4) = ?");
            pstmt.setInt (1, currentYear);
            pstmt.setInt (2, currentWeek);
            pstmt.setInt (3, currentYear);
            pstmt.setInt (4, currentWeek);
            rs = pstmt.executeQuery();
            while (rs.next ())
            {
                topQn = new question (rs.getString ("question"), rs.getString ("details"), rs.getInt ("subId"), rs.getInt ("qId"), rs.getInt ("vote"));
                topQnGrp.add (topQn);
            }
        }
        catch (Exception e)
        {
            System.err.print (e);
        }
        return topQnGrp;
    }
    
    public ArrayList <question> retrieveMostInt ()
    {
        try
        {   
            topQnGrp = new ArrayList <question> ();
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            st = conn.createStatement ();
            rs = st.executeQuery("SELECT q.qId, q.subId, q.question, q.snumber, q.details, q.vote, MAX(MIQ.NoOfAnswers) NoOfAnswers FROM studentid.questions q join (SELECT qId, count(*) NoOfAnswers FROM studentid.qanswer GROUP BY qId) MIQ ON q.qId = MIQ.qId ORDER BY NoOfAnswers DESC");
            while (rs.next())
            {
                topQn = new question (rs.getString ("question"), rs.getString ("details"), rs.getInt ("subId"), rs.getInt ("qId"), rs.getInt ("vote"), rs.getInt ("NoOfAnswers"));
                topQnGrp.add (topQn);
            }
        }
        catch (Exception e)
        {
            System.err.print (e);
        }
        return topQnGrp;
    }
}

class student extends userMain
{
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    protected int participationRating;
    protected int noOfQns;
    protected int noOfAns;
    protected int noOfComment;
    protected int noOfVote;

 
    private int studentID, status;

    public student ()
    {
        userType = "Student";
    }
    
    // for manipulating full student info database
    public student (String username, String password, int studentID, String fullname, String email, int phone)
    {
        super (username, password, fullname, email, phone);
        this.studentID = studentID;
    }
    
    
    public student (String username, String password, int studentID, String fullname, String email, int phone, int participationRating, // changes made here
                    int status, int noOfQns, int noOfAns, int noOfComment)
    {
        super (username, password, fullname, email, phone);
        this.studentID = studentID;
        this.participationRating = participationRating;
        this.status = status;
        this.noOfQns = noOfQns;
        this.noOfAns = noOfAns;
        this.noOfComment = noOfComment;
        this.noOfVote = noOfVote;
    }

    public int getsId ()
    {
        return studentID;
    }
    
    public int getStatus ()
    {
        return status;
    }
    
    public void setStatus (int status)
    {
        this.status = status;
    }
    
    public void increasePartRating()
    {
        this.participationRating++;
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            Statement st = conn.createStatement ();
            st.executeUpdate("update studentid.sinfoafter set participationRating = '" + this.participationRating + "' where snumber='" + getsId() +"'");
            conn.close ();
        }
        catch (Exception e)
        {
            System.out.print (e);
        }
    }
    
    public void setNoOfQns()
    {
        this.noOfQns++;
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            //Connection con=DriverManager.getConnection(  
            //"jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC","root","csit");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            Statement stmt=con.createStatement();  
            stmt.executeUpdate("update studentid.sinfoafter set studentid.sinfoafter.noOfQns='" + this.noOfQns + "' where snumber='" + getsId() + "'");
            con.close();  
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        increasePartRating();
    }
    
    public void setNoOfAns()
    {
        this.noOfAns++;
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            Statement st = conn.createStatement ();
            st.executeUpdate("update studentid.sinfoafter set noOfAns = '" + this.noOfAns + "' where snumber='" + getsId() +"'");
            conn.close ();
        }
        catch (Exception e)
        {
            System.out.print (e);
        }
        increasePartRating();
    }
    
    public void setNoOfComment()
    {
        this.noOfComment++;
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            Statement st = conn.createStatement ();
            st.executeUpdate("update studentid.sinfoafter set noOfCmt = '" + this.noOfComment + "' where snumber='" + getsId() +"'");
            conn.close ();
        }
        catch (Exception e)
        {
            System.out.print (e);
        }
        increasePartRating();
    }
    

    public int getNoOfQns()
    {
        return noOfQns;
    }
    
    public int getNoOfAns()
    {
        return noOfAns;
    }
    
    public int getNoOfCmt()
    {
        return noOfComment;
    }
    
    public int getNoOfVote()
    {
        return noOfVote;
    }
    
    public int getPartRating()
    {
        return participationRating;
    }
    
    public void sendRegistration ()
    {
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");  
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            pstmt = conn.prepareStatement ("insert into studentid.sinfobefore values (?, ?, ?, ?, ?, ?)");
            pstmt.setString (1, username);
            pstmt.setString (2, password);
            pstmt.setInt (3, studentID);
            pstmt.setString (4, fullname);
            pstmt.setString (5, email);
            pstmt.setInt (6, phone);
            pstmt.executeUpdate ();
            conn.close ();
        }
        catch (Exception e)
        {
            System.out.print (e);
        }
    }
    
   public boolean validate (String username, String password, Object typeOfUser)
    {
        boolean logon = false;
        if(typeOfUser.equals(getUserType()))
        {
            try
            {
                Class.forName ("com.mysql.cj.jdbc.Driver");
                //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
                Statement st = conn.createStatement ();
                ResultSet rs = st.executeQuery ("SELECT * FROM studentid.sinfoafter");
                while (rs.next ())
                {
                    if(username.equals(rs.getString("username")) && password.equals(rs.getString("password")))
                    {
                        logon = true;
                        break;
                    }
                }
                conn.close ();
            }
            catch (Exception e)
            {
                System.out.print (e);
            }
        }
        return logon;
    }
    
    public student setSession(String username, String password)
    {
       int studentID = 0;
       String fullname = "", email = "";
       int phone = 0, status = 0;
       int noOfQns = 0, noOfAns = 0, noOfCmt = 0, pRating = 0;
       
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=UTC", "root", "csit");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useTimezone=true&serverTimezone=GMT", "root", "qwe123");
            Statement st = conn.createStatement ();
            ResultSet rs = st.executeQuery ("SELECT * FROM studentid.sinfoafter where username='" + username +"' and password='" + password + "'");
            while (rs.next ())
            {
                studentID = rs.getInt("snumber");
                fullname = rs.getString("fullname");
                email = rs.getString("email");
                phone = rs.getInt("phone");
                status = rs.getInt("status");
                noOfQns = rs.getInt("noOfQns");
                noOfAns = rs.getInt("noOfAns");
                noOfCmt = rs.getInt("noOfCmt");
                pRating = rs.getInt("participationRating");
            }
            conn.close ();
        }
        catch (Exception e)
        {
            System.out.print (e);
        }
        return new student(username, password, studentID, fullname, email, phone, pRating, status, noOfQns, noOfAns, noOfCmt);
    }
}
