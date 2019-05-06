<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@ page import= "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
body{
	margin: 30px;
	font-size: 12px;
	font-family: Helvetica;
	background-color: white;
	align: center;
	font-family:Helvetica;
	width:80%;
	height: 100px;
	border: 1px solid black;
    border-collapse: collapse;
    padding: 50px;
    align: center;
	 
}
#cliente{
	background-color:white;
	font-family:Helvetica;
	width:110%;
	height: 100px;
	border: 1px solid black;
    border-collapse: collapse;
    padding: 50px;
    align: center;
    text-align: center;
	
	}

	
}
#cliente th{

	background-color:#ddd;
	color:black;
	text-align: left;
}
#cliente tr{

	background-color:#ddd;
	color:black;

}
#cliente td{

	background-color:black;
	color:white;


}

#cliente th:hover{

	background-color:white;
	color:black;

}



</style>
<title>Lista de Compras</title>
</head>
<body>
<h1 id="titulo" align = "center">                                       -- Lista de Compras --</h1>
<br>


</br>
<%

String wCliente=request.getParameter("txt_cliente");
String wproduto=request.getParameter("txt_produto");
String wsuper=request.getParameter("txt_super");



try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection ligacao=DriverManager.getConnection("jdbc:mysql://localhost:3306/poupar","bruna","folhas");
	Statement comando=ligacao.createStatement();
	Statement comando2=ligacao.createStatement();
	comando.executeUpdate("insert into lista(Cliente)values('"+wCliente+"')");
	comando2.executeUpdate("insert into compras(Cliente, Produto, Estabelicimento)values('"+wCliente+"','"+wproduto+"','"+wsuper+"')");
	
}
catch(Exception e){
	out.println(e);
}

%>

<script>
	alert("Lista de Compras Atualizada!");
</script>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection ligacao=DriverManager.getConnection("jdbc:mysql://localhost:3306/poupar","bruna","folhas");
	Statement comando5=ligacao.createStatement();
	Statement comando6=ligacao.createStatement();
	Statement comando3=ligacao.createStatement();
	Statement comando4=ligacao.createStatement();
	Statement comando2=ligacao.createStatement();
	ResultSet rst5=comando5.executeQuery("select * from compras");
	ResultSet rst6=comando6.executeQuery("select * from lista");
	ResultSet rst3=comando3.executeQuery("select * from produtos");
	ResultSet rst4=comando4.executeQuery("select * from supermercado");
	ResultSet rst2=comando2.executeQuery("select * from produto");
	


%>
<form method="POST" action="Nova_lista_compras.jsp">



		<td align="center"><b>-- Cliente: </b></td> 
		<td align="center"><b><%out.println(wCliente);%></b></td> 
		<td align="center"><b> -- </b></td>
		
<table id="cliente">  

		<%
		
		while(rst5.next())
		{
			
			
			%>
			<tr>
			<th><%out.println(rst5.getString("Cliente"));%></th>
			<th><%out.println(rst5.getString("Estabelicimento"));%></th>
			<th><%out.println(rst5.getString("Produto"));%></th>
			</tr>
			<%
		}
		%>



<%
}
catch(Exception e){
	out.println(e);
}
%>
<tr><input type="submit" value="Voltar"></tr></form>
</table>


</form>
</table>
</body>
</html>