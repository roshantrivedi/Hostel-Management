package chitkara.controller;

import chitkara.dao.ComplaintDao;
import chitkara.dao.UserDao;
import chitkara.operation.UserOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Roshan Kumar
 */
public class AddComplaintController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
             if(request.getParameter("id")!=null)
             {
                 int id=Integer.parseInt(request.getParameter("id"));
                 String status=request.getParameter("value");
                 int i=UserOperation.updateComplaint(id,status);
                 
                 if(i>0){
                     HttpSession session = request.getSession(false);
                  session.setAttribute("message","Complaint Updated Successfully");
                  response.sendRedirect("showComplaint.jsp"); 
                 }
                 else
                 {
                     HttpSession session = request.getSession(false);
                  session.setAttribute("message","Complaint Not Udpated");
                  response.sendRedirect("showComplaint.jsp"); 
                 }
             }
             else{
            ComplaintDao com=new ComplaintDao();
            com.setFirst_name(request.getParameter("first_name"));
            com.setLast_name(request.getParameter("last_name"));
            com.setUid(request.getParameter("uid"));
            com.setComplaint(request.getParameter("comp"));
              //com.setUser_type("User");
              //com.setPassword("123456");
              int i=UserOperation.addComplaint(com);
                  
              if(i>0)
              {
                  HttpSession session = request.getSession(false);
                  session.setAttribute("message","Complaint Added Successfully");
                  response.sendRedirect("addComplaint.jsp"); 
              }
              else
              {
                  HttpSession session=request.getSession(false);
                  session.setAttribute("message","Complaint Not Added");
                  response.sendRedirect("addComplaint.jsp");
              }
             }
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
