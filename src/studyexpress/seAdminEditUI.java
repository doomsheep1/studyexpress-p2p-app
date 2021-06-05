package studyexpress;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.swing.JOptionPane;

class adminEditController
{
    private seAdminHomeUI back;
    private seAdminEditUI refresh;
    
    private admin userList;
    private student indiStudent;
    
    private static int rowIndex;
    
    public adminEditController ()
    {
        
    }
    
    public adminEditController (int rowIndex)
    {
        this.rowIndex = rowIndex;
    }
    
    public void backBtnController ()
    {
        back = new seAdminHomeUI ();
        back.setVisible (true);
    }
    
    private ArrayList <student> matchCurrentUser ()
    {
        userList = new admin ();
        return userList.currentList();
    }
    
   public student selectedStudent ()
    {
        for (int i = 0; i < matchCurrentUser ().size (); i++)
        {
            if (rowIndex == i)
            {
               indiStudent = new student (matchCurrentUser ().get (i).getUsername (), matchCurrentUser ().get (i).getPassword (), 
                                          matchCurrentUser ().get (i).getsId (),  matchCurrentUser ().get (i).getFullName (), 
                                          matchCurrentUser ().get (i).getEmail (), matchCurrentUser ().get (i).getPhone (),
                                          matchCurrentUser ().get (i).getPartRating(), matchCurrentUser ().get (i).getStatus(), 
                                          matchCurrentUser ().get (i).getNoOfQns(), matchCurrentUser ().get (i).getNoOfAns(), 
                                          matchCurrentUser ().get (i).getNoOfCmt());
            }
        }
        return indiStudent;
    }
    
    private static boolean isAlpha(String fullnameCheck) 
    { 
        
        String regex = "^[a-zA-Z ]+$";
                              
        Pattern pat = Pattern.compile(regex); 
        if (fullnameCheck == null) 
            return false; 
        return pat.matcher(fullnameCheck).matches(); 
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
    
   private boolean saveFieldsChecker (String passTF, String fullnameTF, String email, String phone)
    {
        boolean fields = true;
        if (passTF.isEmpty () || fullnameTF.isEmpty () || email.isEmpty () || phone.isEmpty ())
        {
            fields = false;
            JOptionPane.showMessageDialog (null, "Information not saved, all fields are required");
        }
        else
        {
            if (Pattern.matches("^[89]{1}[0-9]{7}$", phone))
            {
                //Phone format OK
            }
            else
            {
                fields = false;
                JOptionPane.showMessageDialog (null, "Information not saved, check phone number");
            }
            if (isAlpha(fullnameTF)) 
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
        }
        return fields;
    }
    
    public boolean saveBtnController (String passTF, String fullnameTF, String emailTF, String phoneTF)
    {
        indiStudent = selectedStudent ();
        boolean fields2 = false;
        if (saveFieldsChecker (passTF, fullnameTF, emailTF, phoneTF))
        {
            fields2 = true;
            indiStudent.setPassword (passTF);
            indiStudent.setFullName (fullnameTF);
            indiStudent.setEmail (emailTF);
            indiStudent.setPhone (Integer.parseInt (phoneTF));
            userList = new admin ();
            try {
                userList.updateStudent (indiStudent);
            } catch (Exception ex) {
                JOptionPane.showMessageDialog (null, "Either phone or email taken");
            }
            JOptionPane.showMessageDialog(null, "Saved, user profile has been updated!");
            refresh = new seAdminEditUI ();
            refresh.setVisible (true);
        }
        return fields2;
    }
    
    public void banBtnController (String statusLbl)
    {
        indiStudent = selectedStudent ();
        userList = new admin ();
        if (statusLbl.equals ("Active"))
        {
            indiStudent.setStatus (0);
            JOptionPane.showMessageDialog (null, "User has been banned");
        }
        else if (statusLbl.equals ("Banned"))
        {
            indiStudent.setStatus (1);
            JOptionPane.showMessageDialog (null, "User has been unbanned");
        }
        try {
            userList.updateStudent (indiStudent);
        } catch (Exception ex) {
            Logger.getLogger(adminEditController.class.getName()).log(Level.SEVERE, null, ex);
        }
        refresh = new seAdminEditUI ();
        refresh.setVisible (true);
    }
}


class seAdminEditUI extends javax.swing.JFrame {

    private adminEditController pageLogic;
    
    public seAdminEditUI() {
        initComponents();
        displayProfile ();
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        userLbl = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        passTF = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        sIdLbl = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        fullnameTF = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        emailTF = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        phoneTF = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        statusLbl = new javax.swing.JLabel();
        banBtn = new javax.swing.JButton();
        backBtn = new javax.swing.JButton();
        saveBtn = new javax.swing.JButton();
        jLabel12 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        qAskedLbl = new javax.swing.JLabel();
        qAnsLbl = new javax.swing.JLabel();
        ratingLbl = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(1400, 800));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED), "Admin", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 24))); // NOI18N
        jPanel1.setMaximumSize(new java.awt.Dimension(1366, 768));
        jPanel1.setMinimumSize(new java.awt.Dimension(1366, 768));
        jPanel1.setPreferredSize(new java.awt.Dimension(1366, 768));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Edit User Details");
        jLabel1.setToolTipText("");
        jLabel1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 3, true));
        jLabel1.setMaximumSize(new java.awt.Dimension(1300, 100));
        jLabel1.setMinimumSize(new java.awt.Dimension(1300, 100));
        jLabel1.setPreferredSize(new java.awt.Dimension(1300, 100));

        userLbl.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        userLbl.setText("exampleUser");
        userLbl.setHorizontalTextPosition(javax.swing.SwingConstants.LEFT);

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel3.setText("Password:");

        passTF.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        passTF.setText("examplePassword");

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel4.setText("Student ID:");

        sIdLbl.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        sIdLbl.setText("exampleID");
        sIdLbl.setHorizontalTextPosition(javax.swing.SwingConstants.LEFT);

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel5.setText("Full name:");

        fullnameTF.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        fullnameTF.setText("exampleName");

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel6.setText("Email:");

        emailTF.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        emailTF.setText("exampleEmail");

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel7.setText("Phone:");

        phoneTF.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        phoneTF.setText("exampleNo");

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel10.setText("Status:");

        statusLbl.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        statusLbl.setText("Active");
        statusLbl.setHorizontalTextPosition(javax.swing.SwingConstants.LEFT);

        banBtn.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        banBtn.setText("Ban");
        banBtn.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 2, true));
        banBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                banBtnActionPerformed(evt);
            }
        });

        backBtn.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        backBtn.setText("Back");
        backBtn.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 2, true));
        backBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                backBtnActionPerformed(evt);
            }
        });

        saveBtn.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        saveBtn.setText("Save");
        saveBtn.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 2, true));
        saveBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                saveBtnActionPerformed(evt);
            }
        });

        jLabel12.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel12.setText("User:");

        jPanel3.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 2, true));
        jPanel3.setMaximumSize(new java.awt.Dimension(466, 250));
        jPanel3.setMinimumSize(new java.awt.Dimension(466, 250));

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Statistics");
        jLabel2.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 1, true));
        jLabel2.setMaximumSize(new java.awt.Dimension(466, 50));
        jLabel2.setMinimumSize(new java.awt.Dimension(466, 50));
        jLabel2.setPreferredSize(new java.awt.Dimension(466, 50));

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel8.setText("Questions asked:");

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel9.setText("Questions answered:");

        jLabel11.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel11.setText("Participation rating:");

        qAskedLbl.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        qAskedLbl.setText("jLabel13");

        qAnsLbl.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        qAnsLbl.setText("jLabel13");

        ratingLbl.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        ratingLbl.setText("jLabel13");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel8)
                    .addComponent(jLabel9)
                    .addComponent(jLabel11))
                .addGap(46, 46, 46)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(qAskedLbl, javax.swing.GroupLayout.PREFERRED_SIZE, 74, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(qAnsLbl, javax.swing.GroupLayout.PREFERRED_SIZE, 74, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ratingLbl, javax.swing.GroupLayout.PREFERRED_SIZE, 74, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(qAskedLbl, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(40, 40, 40)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(qAnsLbl, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 31, Short.MAX_VALUE)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel11)
                    .addComponent(ratingLbl, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(22, 22, 22))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(26, 26, 26)
                                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(159, 159, 159)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel10, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel12, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(emailTF, javax.swing.GroupLayout.PREFERRED_SIZE, 249, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addComponent(statusLbl, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(phoneTF, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 210, Short.MAX_VALUE))
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                            .addComponent(userLbl, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .addComponent(sIdLbl, javax.swing.GroupLayout.DEFAULT_SIZE, 210, Short.MAX_VALUE)
                                            .addComponent(passTF)
                                            .addComponent(fullnameTF))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(72, 72, 72)))))
                        .addGap(0, 16, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(backBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(banBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel1Layout.createSequentialGroup()
                    .addGap(22, 22, 22)
                    .addComponent(saveBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(1207, Short.MAX_VALUE)))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(54, 54, 54)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(userLbl, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel12))
                        .addGap(30, 30, 30)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(passTF, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(41, 41, 41)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(sIdLbl, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(43, 43, 43)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel5)
                            .addComponent(fullnameTF, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(45, 45, 45)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(emailTF, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(39, 39, 39)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(phoneTF, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(38, 38, 38)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel10)
                    .addComponent(statusLbl, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(banBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(backBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(10, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                    .addContainerGap(689, Short.MAX_VALUE)
                    .addComponent(saveBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap()))
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(12, 0, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void backBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_backBtnActionPerformed
        pageLogic = new adminEditController ();
        pageLogic.backBtnController ();
        this.setVisible (false);
    }//GEN-LAST:event_backBtnActionPerformed

    private void saveBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_saveBtnActionPerformed
        pageLogic = new adminEditController ();
        if (pageLogic.saveBtnController (getPassTF (), getFullNameTF (), getEmailTF (), getPhoneTF ()))
            this.setVisible (false);
    }//GEN-LAST:event_saveBtnActionPerformed

    private void banBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_banBtnActionPerformed
       pageLogic = new adminEditController ();
       pageLogic.banBtnController(getStatusLbl ());
       this.setVisible (false);
    }//GEN-LAST:event_banBtnActionPerformed

   private void displayProfile ()
    {
        pageLogic = new adminEditController ();
        setUserLbl (pageLogic.selectedStudent ().getUsername ());
        setPassTF (pageLogic.selectedStudent ().getPassword ());
        setSIdLbl (pageLogic.selectedStudent ().getsId ());
        setFullNameTF (pageLogic.selectedStudent ().getFullName ());
        setEmailTF (pageLogic.selectedStudent ().getEmail ());
        setPhoneTF (String.valueOf (pageLogic.selectedStudent ().getPhone ()));
        setRatingLbl (pageLogic.selectedStudent ().getPartRating());
        setStatusLbl (pageLogic.selectedStudent ().getStatus ());
        setQAskedLbl (pageLogic.selectedStudent ().getNoOfQns());
        setQAnsLbl (pageLogic.selectedStudent ().getNoOfAns());
    }
    
    private void setUserLbl (String userLabel)
    {
        userLbl.setText (userLabel);
    }
    
    private void setPassTF (String pass)
    {
        passTF.setText (pass);
    }
    
    private String getPassTF ()
    {
        return passTF.getText ();
    }
    
    private void setSIdLbl (int sIdLabel)
    {
        sIdLbl.setText (String.valueOf (sIdLabel));
    }
    
    private void setFullNameTF (String fullName)
    {
        fullnameTF.setText (fullName);
    }
    
    private String getFullNameTF ()
    {
        return fullnameTF.getText ();
    }
    
    private void setEmailTF (String email)
    {
        emailTF.setText (email);
    }
    
    private String getEmailTF ()
    {
        return emailTF.getText ();
    }
    
    private void setPhoneTF (String phone)
    {
        phoneTF.setText (phone);
    }
    
    public String getPhoneTF ()
    {
        return phoneTF.getText ();
    }
    
    private String getStatusLbl ()
    {
        return statusLbl.getText ();
    }
    
    private void setStatusLbl (int status)
    {
        if (status == 1)
        {
            statusLbl.setText ("Active");
            banBtn.setText ("Ban");
        }
        else
        {
            statusLbl.setText ("Banned");
            banBtn.setText ("Unban");
        }
    }
    
    private void setQAskedLbl (int qAsked)
    {
        qAskedLbl.setText (String.valueOf (qAsked));
    }
    
    private void setQAnsLbl (int qAns)
    {
        qAnsLbl.setText (String.valueOf (qAns));
    }
    
    private void setRatingLbl (int rating)
    {
        ratingLbl.setText (String.valueOf (rating));
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
            java.util.logging.Logger.getLogger(seAdminEditUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(seAdminEditUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(seAdminEditUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(seAdminEditUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new seAdminEditUI().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton backBtn;
    private javax.swing.JButton banBtn;
    private javax.swing.JTextField emailTF;
    private javax.swing.JTextField fullnameTF;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTextField passTF;
    private javax.swing.JTextField phoneTF;
    private javax.swing.JLabel qAnsLbl;
    private javax.swing.JLabel qAskedLbl;
    private javax.swing.JLabel ratingLbl;
    private javax.swing.JLabel sIdLbl;
    private javax.swing.JButton saveBtn;
    private javax.swing.JLabel statusLbl;
    private javax.swing.JLabel userLbl;
    // End of variables declaration//GEN-END:variables
}
