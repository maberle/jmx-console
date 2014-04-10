<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.*,org.jboss.jmx.adaptor.control.*,org.jboss.jmx.adaptor.model.*,java.io.*"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <title>JBoss Object Index</title>
    <link rel="stylesheet" href="style_master.css" type="text/css">
    <meta http-equiv="cache-control" content="no-cache"/>
</head>

<body leftmargin="10" rightmargin="10" topmargin="10">

<table width="226" cellspacing="0" cellpadding="0" border="0">
	<tr>
		<td>
			<img src="images/as7_logo.png" align="center" border="0" alt="JBoss">
		</td>
	</tr>
</table>

&nbsp;

<table width="226" cellspacing="0" cellpadding="0" border="0">

	<tr><td><h2>Object Name Filter</h2></td></tr>
	<tr><td><h3><a href="HtmlAdaptor?action=displayMBeans&filter=" target="ObjectNodeView">Remove Object Name Filter</a></h3></td></tr>
<%
   Iterator mbeans = (Iterator) Server.getDomainData("");
   int i=0;
   while( mbeans.hasNext() )
   {
      DomainData domainData = (DomainData) mbeans.next();
      out.println(" <tr>");
      out.println("  <td>");
      out.println("   <li><a href=\"HtmlAdaptor?action=displayMBeans&filter="+domainData.getDomainName()+"\" target=\"ObjectNodeView\">"+domainData.getDomainName()+"</a></li>");
      out.println("  </td>");
      out.println(" </tr>");
   }
%>
</table>

</body>
</html>

