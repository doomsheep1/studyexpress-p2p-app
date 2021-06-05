package studyexpress;

import java.util.ArrayList;
import java.util.regex.Pattern;
import javax.swing.JOptionPane;

class registerController
{   
    private seLoginUI loginPage;
    private student studentInfo;
    private admin duplicate;
    
    public void backBtnController ()
    {
        loginPage = new seLoginUI ();
        loginPage.setVisible (true);
    }
    
    private ArrayList <student> pendingDuplicateChecker ()
    {
        duplicate = new admin ();
        return duplicate.pendingList ();
    }
    
    private ArrayList <student> currentDuplicateChecker ()
    {
        duplicate = new admin ();
        return duplicate.currentList();
    }
    
    private static boolean isAlpha(String fullnameCheck) 
    { 
        
        String regex = "^[a-zA-Z ]+$";
                              
        Pattern pat = Pattern.compile(regex); 
        if (fullnameCheck == null) 
            return false; 
        return pat.matcher(fullnameCheck).matches(); 
    } 
    
    private static boolean isAlphaNumeric(String usernameCheck) 
    { 
        
        String regex = "^[a-zA-Z0-9]+$";
                              
        Pattern pat = Pattern.compile(regex); 
        if (usernameCheck == null) 
            return false; 
        return pat.matcher(usernameCheck).matches(); 
    } 
    
    private static boolean isValid(String email) 
    { 
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+ 
                            "[a-zA-Z0-9_+&*-]+)*@" + 
                            "(?:[a-zA-Z0-9-]+\\.)+[a-z" + 
                            "A-Z]{2,7}$"; 
                              
        Pattern pat = Pattern.compile(emailRegex); 
        if (email == null) 
            return false; 
        return pat.matcher(email).matches(); 
    } 
    

    public boolean fieldsChecker (String username, String password, String conPass, int sId, String fullname, String email, String phone )
    {
        boolean fields = true;
        if (username.isEmpty () || password.isEmpty () || conPass.isEmpty () || fullname.isEmpty () || email.isEmpty () || String.valueOf (phone).isEmpty ())
        {
            fields = false;
            JOptionPane.showMessageDialog (null, "All fields are required");
        }
        else if (!password.equals (conPass))
        {
            fields = false;
            JOptionPane.showMessageDialog (null, "Registration failed, check password");
        }
        else 
        {
            for (int i = 0; i < pendingDuplicateChecker ().size (); i++)
            {
                if (pendingDuplicateChecker ().get (i).getUsername ().equals (username))
                {
                    fields = false;
                    JOptionPane.showMessageDialog (null, "Username taken");
                }
                else if (pendingDuplicateChecker ().get (i).getsId () == sId)
                {
                    fields = false;
                    JOptionPane.showMessageDialog (null, "Student ID has already been registered");
                }
                else if (pendingDuplicateChecker ().get (i).getEmail().equals (email))
                {
                    fields = false;
                    JOptionPane.showMessageDialog (null, "Email taken");
                }
                else if (pendingDuplicateChecker ().get (i).getPhone () == Integer.parseInt (phone))
                {
                    fields = false;
                    JOptionPane.showMessageDialog (null, "Phone number taken");
                }
            }
            if (isAlphaNumeric(username))
            {
                 //Username OK
            }
            else
            {
                fields = false;
                JOptionPane.showMessageDialog (null, "Username can only contain alphanumeric characters");   
            }
            if (isAlpha(fullname)) 
            {
                //Full name format is OK
            }
            else
            {
                fields = false;
                JOptionPane.showMessageDialog (null, "Please check your full name");                      
            }  
            if (isValid(email))
            {    
                 //Email format is OK
            }
            else
            {
                fields = false;
                JOptionPane.showMessageDialog (null, "Incorrect Email Format");
            }
            if(Pattern.matches("^[89]{1}[0-9]{7}$", phone))
            {
                //Phone format is OK
            }
            else
            {
                fields = false;
                JOptionPane.showMessageDialog (null, "Registration failed, check phone number");
            }
            for (int i = 0; i < currentDuplicateChecker ().size (); i++)
            {
                if (currentDuplicateChecker ().get (i).getUsername ().equals (username))
                {
                    fields = false;
                    JOptionPane.showMessageDialog (null, "Username taken");
                }
                else if (currentDuplicateChecker ().get (i).getsId () == sId)
                {
                    fields = false;
                    JOptionPane.showMessageDialog (null, "Student ID has already been registered");
                }
                else if (currentDuplicateChecker ().get (i).getEmail().equals (email))
                {
                    fields = false;
                    JOptionPane.showMessageDialog (null, "Email taken");
                }
                else if (currentDuplicateChecker ().get (i).getPhone () == Integer.parseInt (phone))
                {
                    fields = false;
                    JOptionPane.showMessageDialog (null, "Phone number taken");
                }
             }
        }
        return fields;
    }
    
    public void submitBtnController (String username, String password, int sId, String fullname, String email, String phone)
    {
        studentInfo = new student (username, password, sId, fullname, email, Integer.parseInt (phone));
        try {
            studentInfo.sendRegistration();
        } catch (Exception ex) {
            JOptionPane.showMessageDialog (null, "Student has already been registered");
        }
    }
}

class seRegisterUI extends javax.swing.JFrame {
    
    private registerController pageLogic;
    
    public seRegisterUI() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        userTF = new javax.swing.JTextField();
        passTF = new javax.swing.JPasswordField();
        passConTF = new javax.swing.JPasswordField();
        sId = new javax.swing.JComboBox<>();
        fullnameTF = new javax.swing.JTextField();
        emailTF = new javax.swing.JTextField();
        phoneTF = new javax.swing.JTextField();
        backBtn = new javax.swing.JButton();
        submitBtn = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(1400, 800));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED), "Register", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 24))); // NOI18N
        jPanel1.setMaximumSize(new java.awt.Dimension(1366, 768));
        jPanel1.setMinimumSize(new java.awt.Dimension(1366, 768));
        jPanel1.setPreferredSize(new java.awt.Dimension(1366, 768));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("StudyExpress P2P");
        jLabel1.setToolTipText("");
        jLabel1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 3, true));
        jLabel1.setMaximumSize(new java.awt.Dimension(1300, 100));
        jLabel1.setMinimumSize(new java.awt.Dimension(1300, 100));
        jLabel1.setPreferredSize(new java.awt.Dimension(1300, 100));

        jLabel12.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel12.setText("Username:");

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel3.setText("Password:");

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel4.setText("Confirm password:");

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel5.setText("Student ID:");

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel6.setText("Full name:");

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel7.setText("Email:");

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel8.setText("Phone:");

        userTF.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        userTF.setText("exampleUsername");

        passTF.setText("jPasswordField1");
        passTF.setMinimumSize(new java.awt.Dimension(6, 23));

        passConTF.setText("jPasswordField1");
        passConTF.setMinimumSize(new java.awt.Dimension(6, 23));

        sId.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        sId.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200" }));
        sId.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 2, true));

        fullnameTF.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        fullnameTF.setText("exampleName");

        emailTF.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        emailTF.setText("exampleEmail");

        phoneTF.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        phoneTF.setText("12312132");

        backBtn.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        backBtn.setText("Back");
        backBtn.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 2, true));
        backBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                backBtnActionPerformed(evt);
            }
        });

        submitBtn.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        submitBtn.setText("Submit");
        submitBtn.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 2, true));
        submitBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                submitBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(167, 167, 167)
                .addComponent(jLabel12, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(127, 127, 127)
                .addComponent(userTF, javax.swing.GroupLayout.PREFERRED_SIZE, 249, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(167, 167, 167)
                .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(127, 127, 127)
                .addComponent(passTF, javax.swing.GroupLayout.PREFERRED_SIZE, 249, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(167, 167, 167)
                .addComponent(jLabel4)
                .addGap(42, 42, 42)
                .addComponent(passConTF, javax.swing.GroupLayout.PREFERRED_SIZE, 249, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(167, 167, 167)
                .addComponent(jLabel5)
                .addGap(127, 127, 127)
                .addComponent(sId, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(167, 167, 167)
                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(127, 127, 127)
                .addComponent(fullnameTF, javax.swing.GroupLayout.PREFERRED_SIZE, 249, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(167, 167, 167)
                .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(127, 127, 127)
                .addComponent(emailTF, javax.swing.GroupLayout.PREFERRED_SIZE, 249, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(167, 167, 167)
                .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(127, 127, 127)
                .addComponent(phoneTF, javax.swing.GroupLayout.PREFERRED_SIZE, 249, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(12, 12, 12)
                .addComponent(submitBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(1080, 1080, 1080)
                .addComponent(backBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(59, 59, 59)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(2, 2, 2)
                        .addComponent(jLabel12))
                    .addComponent(userTF, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(32, 32, 32)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(2, 2, 2)
                        .addComponent(jLabel3))
                    .addComponent(passTF, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(43, 43, 43)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(2, 2, 2)
                        .addComponent(jLabel4))
                    .addComponent(passConTF, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(34, 34, 34)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(3, 3, 3)
                        .addComponent(sId, javax.swing.GroupLayout.PREFERRED_SIZE, 29, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(38, 38, 38)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(2, 2, 2)
                        .addComponent(jLabel6))
                    .addComponent(fullnameTF, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(2, 2, 2)
                        .addComponent(jLabel7))
                    .addComponent(emailTF, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(31, 31, 31)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(2, 2, 2)
                        .addComponent(jLabel8))
                    .addComponent(phoneTF, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(25, 25, 25)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(submitBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(backBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)))
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(12, 0, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void backBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_backBtnActionPerformed
        pageLogic = new registerController ();
        pageLogic.backBtnController();
        this.setVisible (false);
    }//GEN-LAST:event_backBtnActionPerformed
    
    private void submitBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_submitBtnActionPerformed
        pageLogic = new registerController ();
        if (pageLogic.fieldsChecker (getUserTF (), getPassTF (), getConPassTF (), getSId (), getFullNameTF (), getEmailTF (), getPhoneTF ()))
        {
            pageLogic.submitBtnController (getUserTF (), getPassTF (), getSId (), getFullNameTF (), getEmailTF (), getPhoneTF ());
            JOptionPane.showMessageDialog (null, "Your registration request has been sent");
            setFieldsEmpty ();
        }
        else
            setFieldsEmpty ();
    }//GEN-LAST:event_submitBtnActionPerformed

    // accessor methods for input in registerUI
    public String getUserTF ()
    {
        return userTF.getText ();
    }

    public String getPassTF ()
    {
        return passTF.getText ();
    }
    
    public String getConPassTF ()
    {
        return passConTF.getText ();
    }
    
    public int getSId ()
    {
        return Integer.parseInt (String.valueOf (sId.getSelectedItem ()));
    }
    
    public String getFullNameTF ()
    {
        return fullnameTF.getText ();
    }
    
    public String getEmailTF ()
    {
        return emailTF.getText ();
    }
    
    public String getPhoneTF ()
    {
        return phoneTF.getText ();
    }
    
    private void setFieldsEmpty ()
    {
        userTF.setText ("");
        passTF.setText ("");
        passConTF.setText ("");
        sId.setSelectedIndex(0);
        fullnameTF.setText ("");
        emailTF.setText ("");
        phoneTF.setText ("");
    }
    
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(seRegisterUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(seRegisterUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(seRegisterUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(seRegisterUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new seRegisterUI().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton backBtn;
    private javax.swing.JTextField emailTF;
    private javax.swing.JTextField fullnameTF;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField passConTF;
    private javax.swing.JPasswordField passTF;
    private javax.swing.JTextField phoneTF;
    private javax.swing.JComboBox<String> sId;
    private javax.swing.JButton submitBtn;
    private javax.swing.JTextField userTF;
    // End of variables declaration//GEN-END:variables
}


