

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<% 
    Cookie c[] =request.getCookies();
    String email = null;
    for(int i=0; i<c.length; i++){
          if(c[i].getName().equals("user")){
                    email = c[i].getValue();
                    break;

             }
    }
    if(email != null && session.getAttribute(email)!= null ){
    response.sendRedirect("main.jsp"); 
    }
    else{
        if(request.getParameter("email").length()==0 || request.getParameter("password").length()==0 ){
        response.sendRedirect("index.jsp?empty=1");
        
        }
        else{
        email = request.getParameter("email").trim();
        String pass = request.getParameter("password");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/video","root","");
        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery("select * from registration where email = '"+email+"'");
            if(rs.next()){
            if(rs.getString("pass").equals(pass)){
            Cookie ct = new Cookie("user",email);
            ct.setMaxAge(36000);
            response.addCookie(ct);
            session.setAttribute(email, pass);
            session.setMaxInactiveInterval(2000);
            response.sendRedirect("main.jsp");
            
            }
            else{
            response.sendRedirect("index.jsp?invalid_pass=1");
            }
            
            }
            else{
            response.sendRedirect("index.jsp?invalid_email=1");
            
            }
            
        
        }
        
        catch(Exception e){
        out.println(e.getMessage());
        }
        }
        
        
    }
    
    %>
