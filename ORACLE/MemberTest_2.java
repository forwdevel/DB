import java.util.ArrayList;
import java.util.Scanner;

import daovo.MemberDAO;
import daovo.MemberVo;

public class MemberTest_2 {
      public static void main(String[] args) {
            System.out.print("Input ename...? ");
            Scanner scanner = new Scanner(System.in);

            String inp = scanner.next();
            scanner.close();

            MemberDAO dao = new MemberDAO();
            ArrayList<MemberVo> list = dao.list(inp);

            for (int i = 0; i < list.size(); i++) {
                  MemberVo data = (MemberVo) list.get(i);
                  String empno = data.getEmpno();
                  String ename = data.getEname();
                  int sal = data.getSal();

                  System.out.println(empno + " : " + ename + " : " + sal);
            }
      }
}
