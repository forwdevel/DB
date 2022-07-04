package daovo;

public class MemberVo_1 {
      private String empno;
      private String ename;
      private int sal;

      public MemberVo_1() {

      }

      public MemberVo_1(String empno, String ename, int sal) {
            this.empno = empno;
            this.ename = ename;
            this.sal = sal;
      }

      public String getEmpno() {
            return empno;
      }

      public String getEname() {
            return ename;
      }

      public int getSal() {
            return sal;
      }
}
