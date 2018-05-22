<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%@ page import="java.io.*,java.util.*,java.sql.*"%>

	<%

    int id=0;

    if(request.getParameter("book_id")!=null && request.getParameter("book_id")!="")

    {

  id = Integer.parseInt(request.getParameter("book_id").toString());

    }

	 String connectionURL = "jdbc:mysql://localhost/demo";

	  String url=request.getParameter("WEB_URL");

	  String Content=new String("");

	  Statement stmt=null;

      Connection con=null;

    try

    {

	String filename="data"+id+".pdf";

	 Class.forName("com.mysql.jdbc.Driver").newInstance();

      con=DriverManager.getConnection(connectionURL,"root",""); 

      stmt=con.createStatement();

	  String qry = "select * from book_data where book_id="+id;

	  ResultSet rst= stmt.executeQuery(qry);

			if(rst.next())

			{
				
					
					Blob b = rst.getBlob("book");
					response.setContentType("application/pdf");
					response.setContentLength( (int) b.length());
					InputStream is = b.getBinaryStream();
					OutputStream os = response.getOutputStream();
					byte buf[] = new byte[(int) b.length()];
					is.read(buf);
					os.write(buf);
					os.close();
					 
    
    
				/* Content=rst.getString("book"); */
    
    }

			out.println(Content);

		/* byte requestBytes[] = Content.getBytes();

		ByteArrayInputStream bis = new ByteArrayInputStream(requestBytes);

		response.reset();

		response.setContentType("application/pdf");

		response.setHeader("Content-disposition","attachment; filename=" +filename);

		byte[] buf = new byte[1024];

		  int len;

		  while ((len = bis.read(buf)) > 0){

				  response.getOutputStream().write(buf, 0, len);

				 }

		bis.close();

		response.getOutputStream().flush(); 
 */
    }

    catch(Exception e){

	e.printStackTrace();

    }

    %>
</body>
</html>
