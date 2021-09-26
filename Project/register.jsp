<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" import="java.sql.*" import="java.util.*" pageEncoding="UTF-8"%>
<% 
 
                                             try{
						 String name=request.getParameter("name");
                                                 String email = request.getParameter("email");
                                                String pass = request.getParameter("pass");
                                                String mobile = request.getParameter("mobile");
						Class.forName("com.mysql.jdbc.Driver");
						Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/video","root","");
						Statement st = cn.createStatement();
						ResultSet rs = st.executeQuery("select * from registration where email='"+email+"'");
						if(rs.next()==false){  
                                                                    Statement st1 = cn.createStatement();
									ResultSet rs1 = st1.executeQuery("select MAX(sn) from registration");
									int sn=0;
									if(rs1.next()){
									sn=rs1.getInt(1);
									
									}
									sn++;
									LinkedList l = new LinkedList();
									for(int i=0; i<=9;i++){
										l.add(i+"");
									}
									for(char i='A';i<='Z';i++){
										l.add(i+"");
										
									}
									for(char i='a'; i<='z'; i++){
									l.add(i+"");
									}
									Collections.shuffle(l);
									String code="";
									for(int i=0; i<6; i++){
                                                                                                code = code+l.get(i);
                                                                                               }
									code = code+"_"+sn;
                                                                                                
									PreparedStatement ps = cn.prepareStatement("insert into registration values(?,?,?,?,?,?)");
												ps.setInt(1,sn);
												ps.setString(2,code);
                                                                                                 ps.setString(3, name);
												 ps.setString(4, email);
                                                                                                 ps.setString(5, pass);
                                                                                                 ps.setString(6,mobile);
                                                                                               
                                                                                  if(ps.executeUpdate()>0){
													response.sendRedirect("index.jsp?success=1");
													%>
                                                                                                       
</html>

                                                                                                           
                                                                                                        <%
												}
												else{
                                                                                            		response.sendRedirect("index.jsp?error=1");
													
                                                                                                    }
												
																					
                                                                           }
                                                                        else{
                                                                            response.sendRedirect("index.jsp?exist=1");
                                                                                
                                                                                }
                                                                     cn.close();
                                        }
                                        catch(Exception er){
                                                out.println(er.getMessage());
                                        }
                
                  
                           
    %>