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
    <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.2/js/bootstrap.min.js"></script>
    <style>
        .row { margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px; border-width: 1px; border-color: red; border-style: solid;}
        .col-lg-4 { border-width: 1px; border-color: black; border-style: solid; }
        .container { border-width: 1px; border-color: blue; border-style: solid; padding: 0px 0px 0px 0px; text-align: center; vertical-align: middle;}
        #circle {
            border-radius:150px 150px 150px 150px;
            box-shadow:0px 0px 0px #000;
            background:transparent;
            width: 300px;
            height: 300px;
            border:rosybrown 6px solid;
            vertical-align:middle;
            text-align: center;
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
            position: relative;
            z-index: 1;
            height: 160px;
            width: 100%;
            background: #ccc;
            overflow: hidden;
            -ms-touch-action: none;
        }

        #scroller {
            position: absolute;
            z-index: 1;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
            width: 840px;
            height: 160px;
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
            width: 100%;
            padding: 0;
            margin: 0;
        }

        #scroller li {
            width: 120px;
            height: 160px;
            float: left;
            line-height: 160px;
            border-right: 1px solid #ccc;
            border-bottom: 1px solid #ccc;
            background-color: #fafafa;
            font-size: 14px;
            overflow: hidden;
            text-align: center;
        }
        .cell {
            width: 120px;
            height: 160px;
            float: left;
            line-height: 160px;
            border-right: 1px solid #ccc;
            border-bottom: 1px solid #ccc;
            background-color: #fafafa;
            font-size: 14px;
            overflow: hidden;
            text-align: center;
        }
        .cell-1 {
            width:120px;
            height:20px;
            z-index: 1;
            position: absolute;
            top: -55px;
        }
        .cell-2 {
            width:120px;
            height:20px;
            z-index: 1;
            position: absolute;
            top: -15px;
        }
        .cell-3 {
            width:120px;
            height:20px;
            z-index: 1;
            position: absolute;
            top: 15px;
        }
        .cell-4 {
            width:120px;
            height:20px;
            z-index: 1;
            position: absolute;
            top: 45px;
        }
        body {
            /*background-image: url(http://cl.ly/EXdC/darkdenim.png);*/
            /*background-color: black;*/
        }
    </style>

    <script type="text/javascript" src="resources/iscroll.js"></script>
    <script type="text/javascript">
        $(document).on("pageinit","#btnSubmit",function(){
            $("#circle").on("tap",function(){
                alert("Hello World1.");
            });
            startTime();
        });

        var myScroll;
        function loaded () {
            myScroll = new IScroll('#wrapper', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });
        }
        document.addEventListener('DOMContentLoaded', loaded, false);

        var date = new Date();
        var milliseconds = date.getTime();
        function startTime(){
            date = new Date(milliseconds);
            var h=date.getHours();
            var m=checkTime(date.getMinutes());
            var s=checkTime(date.getSeconds());
            $("#lblTime").html(h+":"+m+":"+s);
            milliseconds = milliseconds + 1000;
//            $("#lblTime").innerHTML = h+":"+m+":"+s;
            t=setTimeout('startTime()',1000)
        }
        function checkTime(i) {
            if (i<10)
            {i="0" + i}
            return i
        }
    </script>
    <script>



    </script>
</head>
<body onload="loaded()">
    <div class="container">
        <div id="header">2013.12
            <div style="float:right;border-width: 3px; border-left-style: outset; border-color:gray; height:45px; width:45px;">
                <span class="glyphicon glyphicon-cog pull-right" style="top:10px;height:45px; width:45px;"></span>
            </div>
        </div>
        <%--<div style="text-align: center;"><h4>2013.12</h4></div>--%>
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
                <%--<div class="cell">
                    <div class="cell-1">星期一</div>
                    <div class="cell-2">上班: 10:00</div>
                    <div class="cell-3">下班: 20:00</div>
                    <div class="cell-4">时长: 10:59'</div>
                </div>
                <div class="cell">
                    <div class="cell-1">星期二</div>
                    <div class="cell-2">上班: 10:00</div>
                    <div class="cell-3">下班: 20:00</div>
                    <div class="cell-4">时长: 10:59'</div>
                </div>
                <div class="cell">
                    <div class="cell-1">星期三</div>
                    <div class="cell-2">上班: 10:00</div>
                    <div class="cell-3">下班: 20:00</div>
                    <div class="cell-4">时长: 10:59'</div>
                </div>
                <div class="cell">
                    <div class="cell-1">星期四</div>
                    <div class="cell-2">上班: 10:00</div>
                    <div class="cell-3">下班: 20:00</div>
                    <div class="cell-4">时长: 10:59'</div>
                </div>
                <div class="cell">
                    <div class="cell-1">星期五</div>
                    <div class="cell-2">上班: 10:00</div>
                    <div class="cell-3">下班: 20:00</div>
                    <div class="cell-4">时长: 10:59'</div>
                </div>
                <div class="cell">
                    <div class="cell-1">星期六</div>
                    <div class="cell-2">上班: 10:00</div>
                    <div class="cell-3">下班: 20:00</div>
                    <div class="cell-4">时长: 10:59'</div>
                </div>
                <div class="cell">
                    <div class="cell-1">星期日</div>
                    <div class="cell-2">上班: 10:00</div>
                    <div class="cell-3">下班: 20:00</div>
                    <div class="cell-4">时长: 10:59'</div>
                </div>--%>
                <ul>
                    <li>
                        <div class="cell-1">星期一</div>
                        <div class="cell-2">上班: 10:00</div>
                        <div class="cell-3">下班: 20:00</div>
                        <div class="cell-4">时长: 10:59'</div>
                    </li>
                    <li>
                        <div class="cell-1">星期二</div>
                        <div class="cell-2">上班: 10:00</div>
                        <div class="cell-3">下班: 20:00</div>
                        <div class="cell-4">时长: 10:59'</div>
                    </li>
                    <li>
                        <div class="cell-1">星期三</div>
                        <div class="cell-2">上班: 10:00</div>
                        <div class="cell-3">下班: 20:00</div>
                        <div class="cell-4">时长: 10:59'</div>
                    </li>
                    <li>
                        <div class="cell-1">星期四</div>
                        <div class="cell-2">上班: 10:00</div>
                        <div class="cell-3">下班: 20:00</div>
                        <div class="cell-4">时长: 10:59'</div>
                    </li>
                    <li>
                        <div class="cell-1">星期五</div>
                        <div class="cell-2">上班: 10:00</div>
                        <div class="cell-3">下班: 20:00</div>
                        <div class="cell-4">时长: 10:59'</div>
                    </li>
                    <li>
                        <div class="cell-1">星期六</div>
                        <div class="cell-2">上班: 10:00</div>
                        <div class="cell-3">下班: 20:00</div>
                        <div class="cell-4">时长: 10:59'</div>
                    </li>
                    <li>
                        <div class="cell-1">星期日</div>
                        <div class="cell-2">上班: 10:00</div>
                        <div class="cell-3">下班: 20:00</div>
                        <div class="cell-4">时长: 10:59'</div>
                    </li>
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
        <p>&nbsp;
        <div style="vertical-align:middle; text-align:center; border-width: 1px; border-color: blue; border-style: solid;" data-role="page" id="btnSubmit">
            <div id="circle">
                <div id="lblTime" style=" height:30px; font-size: 30px; margin-top: 50px;">10 : 59 : 59</div>
                <div id="lblStatus" style="font-size: 50px;margin-top: 25px;">上班!</div>
            </div>
        </div>

    </div>


</body>
</html>