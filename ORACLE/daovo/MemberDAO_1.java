package daovo;

import java.sql.*;
import java.util.*;

public class MemberDAO_1 {
      String driver = "oracle.jdbc.driver.OracleDriver";
      String url = "jdbc:oracle:thin:@localhost:1521/xe";
      String user = "c##green";
      String password = "green1234";

      private Connection con;
      private Statement stmt;
      private ResultSet rs;

      public ArrayList<MemberVo_1> list() {
            ArrayList<MemberVo_1> list = new ArrayList<MemberVo_1>();

            try {
                  connDB();
                  String query = "SELECT * FROM emp";
                  rs = stmt.executeQuery(query);

                  while (rs.next()) {
                        String empno = rs.getString("empno");
                        String ename = rs.getString("ename");
                        int sal = rs.getInt("sal");

                        MemberVo_1 data = new MemberVo_1(empno, ename, sal);
                        list.add(data);
                  }
            } catch (Exception e) {
                  e.printStackTrace();
            }

            return list;
      }

      public void connDB() {
            try {
                  Class.forName(driver);
                  System.out.println("jdbc driver loading success.");
                  con = DriverManager.getConnection(url, user, password);
                  System.out.println("oracle connection success.");
                  stmt = con.createStatement();
                  System.out.println("statement create success.");
            } catch (Exception e) {
                  e.printStackTrace();
            }
      }
}
