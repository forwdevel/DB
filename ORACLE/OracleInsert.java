import java.sql.*;

public class OracleInsert {
      public static void main(String[] args) {
            String driver = "oracle.jdbc.driver.OracleDriver";
            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String user = "c##green";
            String password = "green1234";

            try {
                  Class.forName(driver);
                  System.out.println("jdbc driver loading success.");
                  Connection conn = DriverManager.getConnection(url, user, password);
                  System.out.println("oracle connection success.\n");

                  Statement stmt = conn.createStatement();

                  String sql = "SELECT deptno, dname, loc FROM dept order by deptno";
                  ResultSet rs = stmt.executeQuery(sql);
                  String lastKey = "";
                  while (rs.next()) {
                        lastKey = rs.getString("deptno");
                        System.out.println("lastkey : " + lastKey);
                  }
                  String ideptno = "" + (Integer.parseInt(lastKey) + 10), sdname = "IT", sloc = "SEOUL";
                  String addSql = "insert into dept values('" + ideptno + "','" + sdname + "','" + sloc + "')";
                  boolean b = stmt.execute(addSql);

                  if (!b) {
                        System.out.println("input success\n");
                  } else {
                        System.out.println("input fail\n");
                  }
                  rs = stmt.executeQuery(sql);
                  while (rs.next()) {
                        System.out.print(rs.getString("deptno") + "\t");
                        System.out.print(rs.getString("dname") + "\t");
                        System.out.println(rs.getString("loc") + " ");
                  }

            } catch (ClassNotFoundException e) {
                  System.out.println("jdbc driver loading fail");
                  e.printStackTrace();
            } catch (SQLException e) {
                  System.out.println("oracle connection fail.");
                  e.printStackTrace();
            }
      }
}