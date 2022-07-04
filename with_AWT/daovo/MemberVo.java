package daovo;

public class MemberVo {
      private String id;
      private String pw;

      public MemberVo() {

      }

      public MemberVo(String id, String pw) {
            this.id = id;
            this.pw = pw;
      }

      public String getId() {
            return id;
      }

      public String getPw() {
            return pw;
      }

}
