<%@page contentType = "text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- 最新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.2/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.2/js/bootstrap.min.js"></script>
    <style>
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        html {
            -ms-touch-action: none;
        }

        .row { margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px; border-width: 1px; border-color: red; border-style: solid;}
        .col-lg-4 { border-width: 1px; border-color: black; border-style: solid; }
        .container { border-width: 1px; border-color: blue; border-style: solid; padding: 0px 0px 0px 0px; text-align: center; vertical-align: middle;}
        #circle {
            border-radius:150px 150px 150px 150px;
            box-shadow:0px 0px 0px #000;
            background:transparent;
            width: 300px;
            height: 300px;
            border:#06c 3px solid;
            vertical-align:middle;
            display:inline-block;
        }

        ul,li {
            padding: 0;
            margin: 0;
            border: 0;
        }

        #header {
            width: 100%;
            height: 45px;
            line-height: 45px;
            background: #CD235C;
            padding: 0;
            color: #eee;
            font-size: 20px;
            text-align: center;
            font-weight: bold;
        }

        #wrapper {
            position: absolute;
            z-index: 1;
            top: 45px;
            bottom: 48px;
            left: 0;
            width: 100%;
            background: #ccc;
            overflow: hidden;
        }

        #scroller {
            position: absolute;
            z-index: 1;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
            width: 5000px;
            height: 160;
            background-color: #a00;
            -webkit-transform: translateZ(0);
            -moz-transform: translateZ(0);
            -ms-transform: translateZ(0);
            -o-transform: translateZ(0);
            transform: translateZ(0);
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            -webkit-text-size-adjust: none;
            -moz-text-size-adjust: none;
            -ms-text-size-adjust: none;
            -o-text-size-adjust: none;
            text-size-adjust: none;
        }

        #scroller ul {
            list-style: none;
            padding: 0;
            margin: 0;
            width: 100%;
            height: 160;
            text-align: center;
        }

        #scroller li {
            display: block;
            float: left;
            width: 100px;
            height: 160;
            border-right: 1px solid #ccc;
            background-color: #fafafa;
            font-size: 14px;
        }
        body {
            /*background-image: url(http://cl.ly/EXdC/darkdenim.png);*/
            /*background-color: black;*/
            overflow: hidden;
        }
    </style>

    <script type="text/javascript" src="resources/iscroll.js"></script>
    <script type="text/javascript">
        var myScroll;

        function loaded () {
            myScroll = new IScroll('#wrapper', { scrollX: true, scrollY: false, mouseWheel: true });
        }
        document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
    </script>
</head>
<body onload="loaded()">
    <div class="container">
        <div id="header">iScroll</div>
        <div style="text-align: center;"><h4>2013.12</h4></div>
        <%--<div class="row">
            <div class="col-lg-4 col-xs-4 col-sm-4 col-md-4">
                周一
                <div>上班: 10:00</div>
                <div>下班: 20:00</div>
                <div>时长: 10:59'</div>
            </div>
            <div class="col-lg-4 col-xs-4 col-sm-4 col-md-4">
                周二
                <div>上班: 10:00</div>
                <div>下班: 20:00</div>
                <div>时长: 10:59'</div>
            </div>
            <div class="col-lg-4 col-xs-4 col-sm-4 col-md-4">
                周三
                <div>上班: 10:00</div>
                <div>下班: 20:00</div>
                <div>时长: 10:59'</div>
            </div>
        </div>--%>
        <div id="wrapper">
            <div id="scroller">
                <ul>
                    <li>Pretty cell 1</li>
                    <li>Pretty cell 2</li>
                    <li>Pretty cell 3</li>
                    <li>Pretty cell 4</li>
                    <li>Pretty cell 5</li>
                    <li>Pretty cell 6</li>
                    <li>Pretty cell 7</li>
                </ul>
            </div>
        </div>
        <h4>Ctrip</h4>
        <%--<div>
            <div class="progress">
                <div class="progress-bar progress-bar-success" style="width: 0%">
                    <span class="badge pull-right">0</span>
                </div>
                <div class="progress-bar progress-bar-warning" style="width: 100%">
                    <span class="badge pull-right">198</span>
                </div>
            </div>
        </div>--%>
        <h4><label>本月累计工时:</label> 100:59'</h4>
        <p>&nbsp;<p>&nbsp;
        <div style="vertical-align:middle; text-align:center; border-width: 1px; border-color: blue; border-style: solid;">
            <div id="circle">&nbsp;</div>
        </div>

    </div>


</body>
</html>