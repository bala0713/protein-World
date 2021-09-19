package com.view;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author bala
 */
@WebServlet(name = "LoginDao", urlPatterns = {"/loginDao"})
public class LoginDao extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        String uname=request.getParameter("user");
        String rpass=request.getParameter("pass");
        
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/balaji","bala","1234");
            System.out.println("connected using Login page");
            String sql="select * from BALA.REGISTATION Where uname=? and rpass=?";
            PreparedStatement ps=con.prepareStatement(sql);
            
            ps.setString(1, uname);
            ps.setString(2, rpass);
            
            String unameDB="";
            String rpassDB="";
          
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
            {
            unameDB=rs.getString("uname");
            rpassDB=rs.getString("rpass");
     
            System.out.println("Database username : "+unameDB);
            System.out.println("Database password : "+rpassDB);
            
            if((uname.equals(unameDB))&&(rpass.equals(rpassDB))){
            System.out.println("Inside If");
            
            RequestDispatcher rd=request.getRequestDispatcher("pro.jsp");
            rd.forward(request,response);
            }
            }
            else{
                System.out.println("Inside else");
                RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
                rd.forward(request,response);
                
            }
            
        
    }
catch(ClassNotFoundException | SQLException e){
          System.out.println("Error From Login : "+e.getMessage());
            }
    }

}