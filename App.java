import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class App {
    public static void main(String[] args) throws Exception {
        
        String sql= "select name from products where id=7";
        String url="jdbc:postgresql://localhost:5432/lasmer";
        String unsername="postgres";
        String password="Tazgharby7";





        Connection con= DriverManager.getConnection(url,unsername,password);
        
        Statement st= con.createStatement();
        ResultSet rs= st.executeQuery(sql);
        rs.next();
        String name= rs.getString(1);
        System.out.println(name);
        con.close();
    }
}
