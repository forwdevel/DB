import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.Label;
import java.awt.TextField;
import java.awt.Button;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import daovo.MemberVo;
import daovo.MemberDAO;

public class TextFieldTest {
      public static void main(String[] args) {
            MemberDAO dao = new MemberDAO();
            Frame f = new Frame("Login");

            f.setSize(600, 80);
            f.setLayout(new FlowLayout());

            Button con = new Button("Confirm");
            Button cen = new Button("Cancle");

            Label lid = new Label("ID : ", Label.RIGHT);
            Label lpwd = new Label("Password : ", Label.RIGHT);
            TextField tfMsg = new TextField(5);

            TextField id = new TextField(10);
            TextField pwd = new TextField(10);
            pwd.setEchoChar('*');

            con.addActionListener(new ActionListener() {
                  @Override
                  public void actionPerformed(ActionEvent e) {
                        if (id.getText().equals("")) {
                              tfMsg.setText("Enter ID.");
                        } else if (pwd.getText().equals("")) {
                              tfMsg.setText("Enter Password");
                        } else {
                              System.out.println(id.getText());
                              System.out.println(pwd.getText());

                              MemberVo vo = new MemberVo(id.getText(), pwd.getText());
                              boolean b = dao.list(vo);
                              tfMsg.setText(String.valueOf(b));
                        }
                        id.getText();
                        pwd.getText();
                  }
            });

            cen.addActionListener(new ActionListener() {
                  @Override
                  public void actionPerformed(ActionEvent e) {
                        System.exit(0);
                  }
            });

            f.add(lid);
            f.add(id);
            f.add(lpwd);
            f.add(pwd);
            f.add(con);
            f.add(cen);
            f.add(tfMsg);
            f.setVisible(true);
      }
}
