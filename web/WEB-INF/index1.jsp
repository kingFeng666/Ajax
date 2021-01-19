<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ajax全局刷新</title>
  </head>
  <body>
  <p>Ajax全局刷新</p>
  <form action="BimAjaxServlet" method="get" >
      姓名 :<input type="text" name="name"><br>
      体重(公斤): <input type="text" name="w"><br>
      身高(米): ><input type="text" name="h"><br>
      <input type="submit" value="提交">
  </form>
  </body>
</html>
