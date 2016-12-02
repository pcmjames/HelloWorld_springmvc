<%--
  Created by IntelliJ IDEA.
  User: PENG027
  Date: 2016/11/21
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
    <script src="../js/jquery.min.js"></script>
    <script type="text/javascript">
        function login() {
            var name=$("#id1").val();
            var pwd=$("#id2").val();
            var json = {"username":name,"password":pwd};
            $.ajax({
                url:'/hello2',
                type:'post',
                contentType:'application/json',
                data:JSON.stringify(json),
                dataType:'json',
                async:false,
                success:function (msg) {
                    alert("success");

                },
                error:function () {
                    alert("failure");
                }
            });
        }
    </script>
</head>
<body>
username:<input id="id1" type="text" name="username"/><br>
password:<input id="id2" type="password" name="password"/><br>
<input id="id3" type="button" value="登录" onclick="login()"/><br>
</body>
</html>
