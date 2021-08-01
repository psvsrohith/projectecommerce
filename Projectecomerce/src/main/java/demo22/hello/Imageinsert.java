package demo22.hello;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;




public class Imageinsert {

	public static void main(String[] args) {
		System.out.println("hello");

		
	        String sql = "update products set phone_image=? where product_id='P0001' ";
	        try 
	        {
	        	Class.forName("com.mysql.jdbc.Driver");
	        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=utf8","root","rohith");
			
			 
			PreparedStatement pst = conn.prepareStatement(sql) ;

	            File myFile = new File("C:/Users/dell/Desktop/download.png");
	             try (FileInputStream fin = new FileInputStream(myFile)) {
	                pst.setBinaryStream(1, fin, (int) myFile.length());
	                pst.executeUpdate();
	                System.out.println("hello");

	            } catch (IOException ex) {
	            	 System.out.println("hello1");
	                
	            }
	        }
	        catch(Exception e1)
			{
				System.out.println(e1);
			}
	    

}
}
