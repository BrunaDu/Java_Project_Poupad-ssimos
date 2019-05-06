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
	background-color:black;
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
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection ligacao=DriverManager.getConnection("jdbc:mysql://localhost:3306/poupar","bruna","folhas");
	Connection ligacao2=DriverManager.getConnection("jdbc:mysql://localhost:3306/poupar","bruna","folhas");
	Statement comando5=ligacao.createStatement();
	Statement comando2=ligacao2.createStatement();
	Statement comando3=ligacao.createStatement();
	Statement comando4=ligacao.createStatement();
	Statement comando6=ligacao.createStatement();
	ResultSet rst5=comando5.executeQuery("select * from Supermercado");
	ResultSet rst2=comando2.executeQuery("select * from produto");
	ResultSet rst3=comando3.executeQuery("select * from Produtos");
	ResultSet rst4=comando4.executeQuery("select * from compras");
	ResultSet rst6=comando6.executeQuery("select * from lista");
	//String wCliente=request.getParameter("txt_cliente");
	String ID_Cliente = "";


%>
<form method="POST" action="concluida.jsp">
<table>
<tr>
    
       <td align="center"><b>Nome</b></td>
       <td><input type="text" name="txt_cliente" required style="width:100px;"></td>
      <td align="center"><b>Produto</b></td>
        <td><input type="text" name="txt_produto" required style="width:100px;"></td>
       <td align="center"><b>Estabelecimento</b></td>
       <td><input type="text" name="txt_super" required style="width:100px;"></td>

       <td><input type="submit" value="Adicionar na Lista de Compras"></td></form>

</tr>    
</table>

<table id="cliente">   
	<%
	while(rst2.next())
	{

		%>
		
			<tr>	
				

			<th><%out.println(rst2.getString("Id_Prod"));%></th>
			<th><%out.println(rst2.getString("Produto"));%></th>
			<th><%out.println(rst2.getString("Supermercado"));%></th>
			<th><%out.println(rst2.getString("Preço")+"€");%></th>
			</tr>
	
			  
	
		
			<%
		}

}
catch(Exception e){
	out.println(e);
}



%>
</table>
</body>
</html>