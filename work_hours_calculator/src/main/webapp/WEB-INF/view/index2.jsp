<%@page contentType = "text/html;charset=UTF-8" %>
<!DOCTYPE html>
<HTML>
<HEAD>
    <TITLE> New Document </TITLE>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.2/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
</HEAD>
<BODY>
<section id="page1" data-role="page">
    <header data-role="header"><h1>JQuery Mobile</h1></header>
    <div data-role="content" class="content">
        <p>这是首页</p>
        <p><a href="#page2">详细页</a></p>
    </div>
    <footer data-role="footer"><h1>3I工作室版权所有</h1></footer>
</section>
<section id="page2" data-role="page">
    <header data-role="header"><h1>JQuery Mobile</h1></header>
    <div data-role="content" class="content">
        <p>这里是详细页</p>
        <p><a href="#page1">返回首页</a></p>
    </div>
    <footer data-role="footer"><h1>3I工作室版权所有</h1></footer>
</section>
</BODY>
</HTML> 