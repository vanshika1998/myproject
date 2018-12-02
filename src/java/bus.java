import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class bus extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            String un= request.getParameter("username");
            String req= request.getParameter("req");
        try  
        {
            
            Class.forName("com.mysql.jdbc.Driver");  
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb?useSSL=false&allowPublicKeyRetrieval=true","root","anonymous10293"); 
            
            ArrayList<String> al=new ArrayList<String>();
            if(req.equals("r"))
            {
                 RequestDispatcher rd=request.getRequestDispatcher("Studentinfo.jsp");
                   PreparedStatement stmt = conn.prepareStatement("SELECT * FROM student_detail WHERE Username=?"); 
               stmt.setString(1,un);
                  ResultSet rs = stmt.executeQuery();
               
               while(rs.next())
               {
                    String s=rs.getString("Username");
                    al.add(s);
                    s=rs.getString("name");
                    al.add(s);
                    s=rs.getString("phno");
                    al.add(s);
                    s=rs.getString("email");
                    al.add(s);
                    s=rs.getString("batch");
                    al.add(s);
               }
                
                request.setAttribute("student", al);
               rd.forward(request, response);
              
              
            }
            else
            {
                if(req.equals("i"))
                {
                     RequestDispatcher rd=request.getRequestDispatcher("Businfo.jsp");
                   PreparedStatement stmt = conn.prepareStatement("SELECT * FROM bus_detail WHERE Username=?"); 
               stmt.setString(1,un);
                  ResultSet rs = stmt.executeQuery();
               
               while(rs.next())
               {
                    String s=rs.getString("Username");
                    al.add(s);
                    s=rs.getString("busno");
                    al.add(s);
                    s=rs.getString("divername");
                    al.add(s);
                    s=rs.getString("driverphn");
                    al.add(s);
                     s=rs.getString("route");
                    al.add(s);
               }
                
                request.setAttribute("student", al);
               rd.forward(request, response);
                }
                else
                {
                    if(req.equals("f"))
                    {
                        RequestDispatcher rd=request.getRequestDispatcher("Feeinfo.jsp");
                   PreparedStatement stmt = conn.prepareStatement("SELECT * FROM fee_detail WHERE Username=?"); 
               stmt.setString(1,un);
                  ResultSet rs = stmt.executeQuery();
               
               while(rs.next())
               {
                    String s=rs.getString("Username");
                    al.add(s);
                    s=rs.getString("name");
                    al.add(s);
                    s=rs.getString("academicfee");
                    al.add(s);
                    s=rs.getString("transportfee");
                    al.add(s);
               }
                
                request.setAttribute("student", al);
               rd.forward(request, response); 
                    }
                    else
                    {
                        if(req.equals("p"))
                        {
                            response.sendRedirect("fine.jsp");
                        }
                    }
                }
            }
            //conn.close();  
             
        }
        catch(Exception e)
    {
        System.out.println(e);
    }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}