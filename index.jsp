<%@page import="java.util.*,java.net.*" %>

<table>
 <tr>
  <td align=left><b>Variable Name</b></td>
  <td align=left><b>Value</b></td>
 </tr> <%

 Map      envs = System.getenv();
 Set      keys = envs.keySet();
 Iterator iter = keys.iterator();
 
 while ( iter.hasNext() ) {
   String key = (String) iter.next();
   String val = (String) envs.get( key ); %>
 
   <tr>
    <td valign=top> <%=key%> </td>
    <td valign=top style="max-width:700px;word-wrap:break-word;"> <%=val%> </td>
   </tr> <%
 } %>

</table>
