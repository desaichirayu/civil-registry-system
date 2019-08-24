package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

@WebService(serviceName = "update_db")
public class update_db {
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    @WebMethod(operationName = "ins_basicinfo")
    public String ins_basicinfo(@WebParam(name = "id") String id, @WebParam(name = "fname") String fname, @WebParam(name = "mname") String mname, @WebParam(name = "lname") String lname, @WebParam(name = "salutation") String salutation, @WebParam(name = "dob") String dob) {
        //TODO write your implementation code here:
        String s;
        String url = "jdbc:mysql://localhost:3306/DB1";
            String driver = "com.mysql.jdbc.Driver";
            String userName = "root"; 
            String password = "";
            Connection conn;
            Statement stmt=null;
            try{
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url,userName,password);
            stmt=conn.createStatement();
            String sql = "insert into BASIC_INFO values('"+ id +"','"+ fname+ "','"+ mname + "','"
                    + lname+ "','"+salutation + "','" + dob + "')";
            stmt.executeUpdate(sql);
            s="data inserted.";
            }
            catch(Exception e){
                s=e.toString();
            }
        return s;
    }
    @WebMethod(operationName = "delete")
    public String delete(@WebParam(name = "id") String id) {
        //TODO write your implementation code here:
         String s;
        String url = "jdbc:mysql://localhost:3306/DB1";
            String driver = "com.mysql.jdbc.Driver";
            String userName = "root"; 
            String password = "";
            Connection conn;
            Statement stmt=null;
            try{
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url,userName,password);
            stmt=conn.createStatement();
            String sql = "delete from basic_info where id='"+id+"'";
            stmt.executeUpdate(sql);
            
            stmt=conn.createStatement();
            sql = "delete from personal_info where id='"+id+"'";
            stmt.executeUpdate(sql);
            
            stmt=conn.createStatement();
            sql = "delete from address where id='"+id+"'";
            stmt.executeUpdate(sql);
            
            stmt=conn.createStatement();
            sql = "delete from visual_data where id='"+id+"'";
            stmt.executeUpdate(sql);
            s="data deleted.";
            }
            catch(Exception e){
                s=e.toString();
            }
        return s;
    }

    @WebMethod(operationName = "ins_address")
    public String ins_address(@WebParam(name = "id") String id,@WebParam(name = "ofname") String ofname, @WebParam(name = "omname") String omname,
            @WebParam(name = "olname") String olname, @WebParam(name = "osalutation") String osalutation, 
            @WebParam(name = "orelation") String orelation, @WebParam(name = "hno") String hno, @WebParam(name = "street")
            String street, @WebParam(name = "landmark") String landmark, @WebParam(name = "area") 
            String area, @WebParam(name = "city") String city, @WebParam(name = "district") 
            String district, @WebParam(name = "state") String state, 
            @WebParam(name = "pincode") String pincode) {
        //TODO write your implementation code here:
        String s;
        String url = "jdbc:mysql://localhost:3306/DB1";
            String driver = "com.mysql.jdbc.Driver";
            String userName = "root"; 
            String password = "";
            Connection conn;
            Statement stmt=null;
            try{
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url,userName,password);
            stmt=conn.createStatement();
            String sql = "insert into address values('"+id + "','"+ ofname +"','"+ omname+ "','"+olname + "','"
                    + osalutation + "','" + orelation + "','" + hno + "','" + street + "','" + landmark + "','" + area + "','"
                    + city + "','" + district + "','" + state + "','" + pincode + "')";
            stmt.executeUpdate(sql);
            s="data inserted.";
            }
            catch(Exception e){
                s=e.toString();
            }
        return s;
    }
}