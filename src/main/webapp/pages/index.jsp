<%--
  Created by IntelliJ IDEA.
  User: PENG027
  Date: 2016/11/11
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<html>
<head>
    <title>index</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript">
        function login() {
            var name=$("#id1").val();
            var pwd=$("#id2").val();
            var vc = Math.floor(Math.random()*1000+1000);
            $.ajax({
                url:'/login',
                type:'get',
                contentType:'text/html',
//                data:"username="+name+"&password="+pwd+"&code="+vc,
                data:{"username":name,"password":pwd,"code":vc},
                dataType:'text',
                async:false,
                success:function (msg) {
                    alert("success");
                    var obj = eval("("+msg+")");
                    alert(msg);
                    $('#p1').text(obj.msg);
                    $("#p2").text(obj.code);
                },
                error:function (msg) {
                    alert("登录失败");
                }
            });
        }
    </script>
</head>
<body>
<form>
    username:<input id="id1" type="text" name="username"/><br>
    password:<input id="id2" type="password" name="password"/><br>
    <input id="id3" type="submit" value="登录"/><br>
    <input type="button" onclick="login()" value="发送验证码"/>
    <p>jksjksasa</p>
    后台返回的消息：<p id="p1"></p><br>
    生成的验证码：<p id="p2"></p>
</form>
</body>
</html>
