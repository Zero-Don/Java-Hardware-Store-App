
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import javax.swing.JFrame;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Daryl Branford
 */
public class NewClass extends JFrame{
    static String username = "root";
    static String password = "root";
    static String url = "jdbc:mysql://localhost:3306/ZeroHardware";
    public static void main(String[] args) throws SQLException{
        Connection connect = null;
        Statement captain = null;
        PreparedStatement find_user = null;
        ResultSet marvel = null;
        ResultSet user_acc = null;
//        try {
//            connect = DriverManager.getConnection(url,username,password);
//            System.out.println("Connected");
//            captain = connect.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
//            marvel = captain.executeQuery("Select * from User_Information");
//            while(marvel.next()){
//            System.out.println(marvel.getString("User_Name"));}
//            while(marvel.next()){
//            System.out.println(marvel.getString("User_Name"));}
//        } catch (SQLException ex) {
//            Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
//        } 
//        finally{
//            connect.close();
//        }
        
        
        try {
            connect = DriverManager.getConnection(url,username,password);
            System.out.println("Connected");
            find_user = connect.prepareStatement("Select User_ID from User_Information Where User_ID = ?");
            find_user.setInt(1, 658258);
            user_acc = find_user.executeQuery();
            while(user_acc.next()){
                if(user_acc.getInt("User_ID") == 658258 ) {
                    System.out.print("True0");
                    MainMenu mainMenu = new MainMenu();
                    mainMenu.setVisible(true);
                    System.out.print("True");
                }
                else {
                    System.out.println("False");
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            connect.close();
        }
        
        
    }
    
}
