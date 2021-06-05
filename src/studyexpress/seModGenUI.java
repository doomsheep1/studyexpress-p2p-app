package studyexpress;

import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;

class modGenController
{
    private moderatorHomeController back;
    private moderator retrieveInfo, m;
    private ArrayList <student> selectedOption1;
    private ArrayList <question> selectedOption2;
    private seModGenUI modReport;
    
    public modGenController () {}
    
    modGenController(moderator m)
    {
        this.m = m;
        modReport = new seModGenUI();
        modReport.setVisible(true);
        modReport.setInfo(m);
    }
    
    public void backBtnController (moderator m)
    {
        back = new moderatorHomeController (m);
        //back.setVisible(true);
    }
    
    public ArrayList <student> getTopStudentList ()
    {
        return selectedOption1;
    }
    
    public ArrayList <question> getTopQnList ()
    {
        return selectedOption2;
    }
    
    public boolean submitBtnController (String option)
    {
        boolean type = false;
        if (option.equals ("Top student"))
        {
            type = true;
            retrieveInfo = new moderator ();
            selectedOption1 = retrieveInfo.retrieveTopRating();
        }
        else if (option.equals ("Monthly top"))
        {
            type = true;
            retrieveInfo = new moderator ();
            selectedOption2 = retrieveInfo.retrieveTopMonth();
        }
        else if (option.equals ("Weekly top"))
        {
            type = true;
            retrieveInfo = new moderator ();
            selectedOption2 = retrieveInfo.retrieveTopWeek();
        }
        else if (option.equals ("Most interesting"))
        {
            type = true;
            retrieveInfo = new moderator ();
            selectedOption2 = retrieveInfo.retrieveMostInt();
        }
        return type;
    }
}

class seModGenUI extends javax.swing.JFrame 
{
    private modGenController pageLogic;
    private moderator m;
    
    DefaultTableModel model;
    Object [] row;
    
    public seModGenUI() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        DrpDownList = new javax.swing.JComboBox<>();
        jPanel2 = new javax.swing.JPanel();
        listOptionChosen = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        reportTable = new javax.swing.JTable();
        submitBtn = new javax.swing.JButton();
        backBtn = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(1050, 800));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED), "Moderator", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 24))); // NOI18N
        jPanel1.setMaximumSize(new java.awt.Dimension(1024, 768));
        jPanel1.setMinimumSize(new java.awt.Dimension(1024, 768));
        jPanel1.setPreferredSize(new java.awt.Dimension(1024, 768));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Generate Report");
        jLabel1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 3, true));
        jLabel1.setMaximumSize(new java.awt.Dimension(960, 100));
        jLabel1.setMinimumSize(new java.awt.Dimension(960, 100));
        jLabel1.setPreferredSize(new java.awt.Dimension(960, 100));

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel2.setText("Select type:");

        DrpDownList.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        DrpDownList.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Top student", "Most interesting", "Monthly top", "Weekly top" }));
        DrpDownList.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 2, true));

        jPanel2.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 1, true));
        jPanel2.setMaximumSize(new java.awt.Dimension(960, 525));
        jPanel2.setMinimumSize(new java.awt.Dimension(960, 525));
        jPanel2.setPreferredSize(new java.awt.Dimension(960, 525));

        listOptionChosen.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        listOptionChosen.setText("Change as you need:");

        reportTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(reportTable);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(listOptionChosen)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(jScrollPane1))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(listOptionChosen)
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(68, Short.MAX_VALUE))
        );

        submitBtn.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        submitBtn.setText("Submit");
        submitBtn.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 2, true));
        submitBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                submitBtnActionPerformed(evt);
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

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(58, 58, 58)
                        .addComponent(jLabel2)
                        .addGap(18, 18, 18)
                        .addComponent(DrpDownList, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap(30, Short.MAX_VALUE)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(submitBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 115, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(backBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 115, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addGap(28, 28, 28))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(DrpDownList, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(22, 22, 22)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(submitBtn, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(backBtn, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 1030, 790));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
    private void submitBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_submitBtnActionPerformed
        pageLogic = new modGenController ();
        if (pageLogic.submitBtnController (getSelectedReport ()) && getSelectedReport ().equals ("Top student"))
            displayTopStudent (pageLogic);
        else if (pageLogic.submitBtnController (getSelectedReport ()) && getSelectedReport ().equals ("Monthly top"))
            displayMthTop (pageLogic);
        else if (pageLogic.submitBtnController (getSelectedReport ()) && getSelectedReport ().equals ("Weekly top"))
            displayWeekTop (pageLogic);
        else if (pageLogic.submitBtnController (getSelectedReport ()) && getSelectedReport ().equals ("Most interesting"))
            displayMostInt (pageLogic);
    }//GEN-LAST:event_submitBtnActionPerformed

    private void displayTopStudent (modGenController logic)
    {
        reportTable.setModel (new DefaultTableModel ());
        model = (DefaultTableModel) reportTable.getModel ();
        setListOptionChosenLbl (getSelectedReport () + "(s):");
        model.addColumn ("#");
        model.addColumn ("Full name");
        model.addColumn ("Student ID");
        model.addColumn ("Status");
        model.addColumn ("Participation Rating");
        row = new Object [5];
        for (int i = 0; i < logic.getTopStudentList ().size (); i++)
        {
            row [0] = i + 1;
            row [1] = logic.getTopStudentList ().get (i).getFullName ();
            row [2] = logic.getTopStudentList ().get (i).getsId ();
            if (logic.getTopStudentList ().get (i).getStatus () == 1)
                row [3] = "Active";
            else
                row [3] = "Banned";
            row [4] = logic.getTopStudentList ().get (i).getPartRating ();
            model.addRow (row);
        } 
    }
    
    private void displayMthTop (modGenController logic)
    {
        reportTable.setModel (new DefaultTableModel ());
        model = (DefaultTableModel) reportTable.getModel ();
        setListOptionChosenLbl ("Top question(s) of the month:");
        model.addColumn ("#");
        model.addColumn ("Question ID");
        model.addColumn ("Question");
        model.addColumn ("Votes");
        row = new Object [4];
        for (int i = 0; i < logic.getTopQnList ().size (); i++)
        {
            if (logic.getTopQnList ().get (i).getVote () != 0)
            {
                row [0] = i + 1;
                row [1] = logic.getTopQnList ().get (i).getQuestionId ();
                row [2] = logic.getTopQnList ().get (i).getQuestion ();
                row [3] = logic.getTopQnList ().get (i).getVote ();
                model.addRow (row);
            }
        }
    }
    
    private void displayWeekTop (modGenController logic)
    {
        reportTable.setModel (new DefaultTableModel ());
        model = (DefaultTableModel) reportTable.getModel ();
        setListOptionChosenLbl ("Top question(s) of the week:");
        model.addColumn ("#");
        model.addColumn ("Question ID");
        model.addColumn ("Question");
        model.addColumn ("Votes");
        row = new Object [4];
        for (int i = 0; i < logic.getTopQnList ().size (); i++)
        {
            if (logic.getTopQnList ().get (i).getVote () != 0)
            {
                row [0] = i + 1;
                row [1] = logic.getTopQnList ().get (i).getQuestionId ();
                row [2] = logic.getTopQnList ().get (i).getQuestion ();
                row [3] = logic.getTopQnList ().get (i).getVote ();
                model.addRow (row);
            }
        }
    }
    
    private void displayMostInt (modGenController logic)
    {
        reportTable.setModel (new DefaultTableModel ());
        model = (DefaultTableModel) reportTable.getModel ();
        setListOptionChosenLbl ("Most interesting question(s):");
        model.addColumn ("#");
        model.addColumn ("Question ID");
        model.addColumn ("Question");
        model.addColumn ("No. of answers");
        model.addColumn ("Votes");
        row = new Object [5];
         for (int i = 0; i < logic.getTopQnList ().size (); i++)
        {
            row [0] = i + 1;
            row [1] = logic.getTopQnList ().get (i).getQuestionId ();
            row [2] = logic.getTopQnList ().get (i).getQuestion ();
            row [3] = logic.getTopQnList ().get (i).getAnsCount ();
            row [4] = logic.getTopQnList ().get (i).getVote();
            model.addRow (row);
        }
    }
    
    public void setInfo (moderator m)
    {
        this.m = m;
    }
    
    private void backBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_backBtnActionPerformed
        pageLogic = new modGenController ();
        pageLogic.backBtnController (m);
        this.setVisible (false);
    }//GEN-LAST:event_backBtnActionPerformed

    private String getSelectedReport ()
    {
        return String.valueOf (DrpDownList.getSelectedItem ());
    }
    
    private void setListOptionChosenLbl (String label)
    {
        listOptionChosen.setText (label);
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
            java.util.logging.Logger.getLogger(seModGenUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(seModGenUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(seModGenUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(seModGenUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new seModGenUI().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> DrpDownList;
    private javax.swing.JButton backBtn;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel listOptionChosen;
    private javax.swing.JTable reportTable;
    private javax.swing.JButton submitBtn;
    // End of variables declaration//GEN-END:variables
}
