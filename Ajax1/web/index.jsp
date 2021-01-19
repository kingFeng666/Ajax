<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>局部刷新</title>
      <%--使用javaScript--%>
      <script type="text/javascript">
          //使用异步对象来代替浏览器发起请求
          function doAjax() {
              //1.第一步先创建异步对象
              var xmlHttp=new XMLHttpRequest();
              //2.绑定事件
              xmlHttp.onreadystatechange=function () {
                  //处理服务端返回的数据,刷新当前页面
              }
              //3.处理请求的数据,三个参数第一个参数获取数据的方法,第二个参数地址,第三个参数是是否局部
              xmlHttp.open("get","bmiAjax",true);
              //4.发起请求
              xmlHttp.send();
          }
      </script>
  </head>
  <body>
  <p>使用Ajax实现局部刷新</p>
  <%--Ajax做局部刷新,不是使用form表单进行提交的--%>
  <center>
      <div>
          姓名: <input type="text" id="name"/><br>
          身高: <input type="text" id="h"/><br>
          体重(公斤) <input type="text" id="w"/><br>
          <input type="button" value="提交" onclick="doAjax()">
      </div>
  </center>
  </body>
</html>
