package studyexpress;

import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

class adminHomeController
{
    private seLoginUI adminLogout;
    private seAdminApproveUI approve;
    private seAdminEditUI edit;
    
    private admin userList;
    
    public void logoutBtnController ()
    {
        adminLogout = new seLoginUI ();
        adminLogout.setVisible (true);
    }
    
    public ArrayList <student> retrievePendingUsers ()
    {
        userList = new admin ();
        return userList.pendingList ();
    }
    
    public void selectTwoBtnController ()
    {
        approve = new seAdminApproveUI ();
        approve.setVisible (true);
    }
    
    public void selectOneBtnController ()
    {
        edit = new seAdminEditUI ();
        edit.setVisible (true);
    }
    
    public ArrayList <student> retrieveCurrentUsers ()
    {
        userList = new admin ();
        return userList.currentList();
    }
}

class seAdminHomeUI extends javax.swing.JFrame 
{
    private adminHomeController pageLogic; 
    private adminApproveController approvePageLogic;
    private adminEditController editPageLogic;
    
    DefaultTableModel model;
    Object [] row;
    
    public seAdminHomeUI() {
        initComponents();
        displayPendingUserList ();
        displayCurrentUserList ();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        logoutBtn = new javax.swing.JButton();
        selectTwo = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        selectOne = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        currentUsers = new javax.swing.JTable();
        jScrollPane4 = new javax.swing.JScrollPane();
        pendingUsers = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("seAdminHome");
        setMinimumSize(new java.awt.Dimension(1400, 800));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED), "Admin", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 24))); // NOI18N
        jPanel1.setMaximumSize(new java.awt.Dimension(1366, 768));
        jPanel1.setMinimumSize(new java.awt.Dimension(1366, 768));
        jPanel1.setPreferredSize(new java.awt.Dimension(1366, 768));
        jPanel1.setVerifyInputWhenFocusTarget(false);

        logoutBtn.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        logoutBtn.setText("LOG OUT");
        logoutBtn.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 3, true));
        logoutBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                logoutBtnActionPerformed(evt);
            }
        });

        selectTwo.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        selectTwo.setText("SELECT USER");
        selectTwo.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 3, true));
        selectTwo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                selectTwoActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("StudyExpress P2P");
        jLabel1.setToolTipText("");
        jLabel1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 3, true));
        jLabel1.setMaximumSize(new java.awt.Dimension(1300, 100));
        jLabel1.setMinimumSize(new java.awt.Dimension(1300, 100));
        jLabel1.setPreferredSize(new java.awt.Dimension(1300, 100));

        selectOne.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        selectOne.setText("SELECT USER");
        selectOne.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 3, true));
        selectOne.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                selectOneActionPerformed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel2.setText("User List");

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel3.setText("Pending Approval");

        currentUsers.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Username", "Student ID", "Full name", "Status"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, true
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane3.setViewportView(currentUsers);

        pendingUsers.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Username", "Student ID", "Full name"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane4.setViewportView(pendingUsers);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(28, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(logoutBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap())
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(26, 26, 26))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(selectOne, javax.swing.GroupLayout.PREFERRED_SIZE, 183, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGroup(jPanel1Layout.createSequentialGroup()
                                    .addGap(126, 126, 126)
                                    .addComponent(jLabel2)))
                            .addGap(130, 130, 130)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                    .addComponent(jLabel3)
                                    .addGap(228, 228, 228))
                                .addGroup(jPanel1Layout.createSequentialGroup()
                                    .addGap(162, 162, 162)
                                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(selectTwo, javax.swing.GroupLayout.PREFERRED_SIZE, 183, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGap(146, 146, 146)))))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 8, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(33, 33, 33)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(selectTwo)
                    .addComponent(selectOne))
                .addGap(18, 18, 18)
                .addComponent(logoutBtn)
                .addGap(20, 20, 20))
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void logoutBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_logoutBtnActionPerformed
        pageLogic = new adminHomeController ();
        pageLogic.logoutBtnController ();
        this.setVisible (false);
    }//GEN-LAST:event_logoutBtnActionPerformed

    private void selectTwoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_selectTwoActionPerformed
        pageLogic = new adminHomeController ();
        int rowIndex = pendingUsers.getSelectedRow ();
        if (rowIndex < 0)
            JOptionPane.showMessageDialog (null, "Please select a row.");
        else 
        {
            approvePageLogic = new adminApproveController (rowIndex);
            pageLogic.selectTwoBtnController ();
            this.setVisible (false);
        }
    }//GEN-LAST:event_selectTwoActionPerformed

    private void selectOneActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_selectOneActionPerformed
       pageLogic = new adminHomeController ();
        int rowIndex = currentUsers.getSelectedRow ();
        if (rowIndex < 0)
            JOptionPane.showMessageDialog (null, "Please select a row.");
        else
        {
            editPageLogic = new adminEditController (rowIndex);
            pageLogic.selectOneBtnController ();
            this.setVisible (false);
        }
    }//GEN-LAST:event_selectOneActionPerformed

    private void displayPendingUserList ()
    {
        pageLogic = new adminHomeController ();
        model = (DefaultTableModel) pendingUsers.getModel ();
        row = new Object [3];
        for (int i = 0; i < pageLogic.retrievePendingUsers ().size (); i++)
        {
            row [0] = pageLogic.retrievePendingUsers ().get (i).getUsername ();
            row [1] = pageLogic.retrievePendingUsers ().get (i).getsId ();
            row [2] = pageLogic.retrievePendingUsers ().get (i).getFullName ();
            model.addRow (row);
        }
    }
    
    private void displayCurrentUserList ()
    {
        pageLogic = new adminHomeController ();
        model = (DefaultTableModel) currentUsers.getModel ();
        row = new Object [4];
        String status;
        for (int i = 0; i < pageLogic.retrieveCurrentUsers().size (); i++)
        {
            row [0] = pageLogic.retrieveCurrentUsers ().get (i).getUsername ();
            row [1] = pageLogic.retrieveCurrentUsers ().get (i).getsId ();
            row [2] = pageLogic.retrieveCurrentUsers ().get (i).getFullName ();
            if (pageLogic.retrieveCurrentUsers ().get (i).getStatus () == 1)
                status = "Active";
            else
                status = "Banned";
            row [3] = status;
            model.addRow (row);
        }
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
            java.util.logging.Logger.getLogger(seAdminHomeUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(seAdminHomeUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(seAdminHomeUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(seAdminHomeUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new seAdminHomeUI().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable currentUsers;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JButton logoutBtn;
    protected javax.swing.JTable pendingUsers;
    private javax.swing.JButton selectOne;
    private javax.swing.JButton selectTwo;
    // End of variables declaration//GEN-END:variables
}
