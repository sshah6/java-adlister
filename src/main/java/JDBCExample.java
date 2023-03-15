
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class JDBCExample {
    public static void main(String[] args) {
        try {
            //Register Driver
            DriverManager.registerDriver(new Driver());

            //Make the connection
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/codeup_test_db?allowPublicKeyRetrieval=true&useSSL=false",
                    "root",
                    "codeup"
                    );

            //Create a statement
//            System.out.println(connection);  //ckecking if connection is successful
            Statement statement = connection.createStatement();

            //run query with statement and parse result set
            String query = "select * FROM albums";
            ResultSet rs = statement.executeQuery(query);

//            rs.next();
//            rs.next();
//            if(rs.next()){
//                System.out.println(rs.getString("artist"));
//            }

            while(rs.next()){
                String artist = rs.getString("artist");
//                System.out.println(artist);
                if(artist.equals("Santana")){
                    System.out.println(rs.getString("name"));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
