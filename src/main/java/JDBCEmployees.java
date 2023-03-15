import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JDBCEmployees {
    public static  void main(String[] args) {
        try {
            //Linking the driver
            DriverManager.registerDriver(new Driver());

            //Establish connection
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/employees?allowPublicKeyRetrieval=true&useSSL=false",
                    "root",
                    "codeup"
            );

            //Declare statement
            Statement statement = connection.createStatement();

            //Or you can Limit the database to 10 (Preferred for simple executions)
            String query = "select * FROM employees";
            ResultSet rs = statement.executeQuery(query);

            //declaring Arraylist
            List<String> first_names = new ArrayList<>();

            int i = 0;
            while(rs.next() && i < 10){
                //printing out of database
                System.out.println(i + 1 + ": " + rs.getString("first_name"));
                //Adding to arrayList
                first_names.add(rs.getString("first_name"));
                i++;
            }

            //Printing the arraylist to test
            System.out.println(first_names);
            System.out.println("Length of the List is: " + first_names.size());

            //printing out of the Array List
            int j = 0;
            for(String first_name: first_names){
                j++;
                System.out.println(j + ": " + first_name);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
