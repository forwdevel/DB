import java.util.ArrayList;

import daovo.MemberDAO_1;
import daovo.MemberVo;

public class MemberTest_1 {
      public static void main(String[] args) {
            MemberDAO_1 dao = new MemberDAO_1();
            ArrayList<MemberVo> list = dao.list();

            for (int i = 0; i < list.size(); i++) {
                  MemberVo data = (MemberVo) list.get(i);
                  String empno = data.getEmpno();
                  String ename = data.getEname();
                  int sal = data.getSal();

                  System.out.println(empno + " : " + ename + " : " + sal);
            }
      }
}