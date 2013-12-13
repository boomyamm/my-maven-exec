<%@page contentType = "text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- 最新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.2/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
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

        .header {
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
        .cell-0 {
            width:120px;
            height:20px;
            z-index: 1;
            position: absolute;
            top: -75px;
            text-align: right;
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
            $("#btnSetup").on("tap",function(){
                $("#main").hide(function(){
                    $("#setup").slideDown();
                });
            });
            $("#btnOk").on("tap",function(){
                $("#setup").hide(function(){
                    $("#main").slideDown();
                });
            });
            $("#btnCancel").on("tap",function(){
                $("#setup").hide(function(){
                    $("#main").slideDown();
                });
            });
            startTime();

            initSelectHour();
            initSelectMinute();

        });

        function initSelectHour(){
            var str;
            for(var i=0; i<=23; i++){
                str = "<option> " + i + " 时 </option>"
                $("#selClosing").append(str);
                $("#selNotWorkDuringHour").append(str);
                $("#selNotWorkDuringHour2").append(str);
                $("#selNotWorkDuringHour3").append(str);
            }
        }
        function initSelectMinute(){
            for(var i=0; i<=50; i=i+10){
                str = "<option> " + i + " 分 </option>"
                $("#selNotWorkDuringMinute").append(str);
                $("#selNotWorkDuringMinute2").append(str);
                $("#selNotWorkDuringMinute3").append(str);
            }
        }

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
        <div id="main">
            <div class="header">2013.12
                <div style="float:right; border-left: 1px solid #4285b1; height:45px; width:45px;">
                    <span id="btnSetup" class="glyphicon glyphicon-cog pull-right" style="top:10px;height:45px; width:45px;"></span>
                </div>
                <div style="float:right; border-right: 1px solid #005b98;">&nbsp;</div>
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
                            <div class="cell-0"><span class="glyphicon glyphicon-pencil"></span></div>
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
        <div id="setup" style="display: none;">
            <div class="header">设置
                <div style="float:right; margin-left: 4px; margin-right: 2px;">
                    <button id="btnOk" type="button" class="btn btn-success btn-sm">确定</button>
                </div>
                <div style="float:right; border-right: 1px solid #005b98;">&nbsp;</div>
                <div style="float:left; margin-right: 4px; margin-left: 2px;">
                    <button id="btnCancel" type="button" class="btn btn-warning btn-sm">取消</button>
                </div>
                <div style="float:left; border-left: 1px solid #005b98;">&nbsp;</div>
            </div>
            <p>
            <div>
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="selClosing" class="col-sm-2 control-label pull-left" style="margin-left:5px;">每日结算时间</label>
                    <select id="selClosing" class="form-control input-sm pull-right" style="width:40%; margin-right: 20px;">
                    </select>
                </div>
                <p>
                <div class="form-group">
                    <label for="selNotWorkDuringHour" class="col-sm-2 control-label pull-left" style="margin-left:5px;">每日非工作时间段</label>
                </div>
                <div class="form-group">
                    <select id="selNotWorkDuringHour" class="form-control input-sm pull-left" style="width:40%;margin-left:20px;">
                    </select>
                    到
                    <select id="selNotWorkDuringMinute" class="form-control input-sm pull-right" style="width:40%; margin-right: 20px;">
                    </select>
                </div>
                <div class="form-group">
                    <select id="selNotWorkDuringHour2" class="form-control input-sm pull-left" style="width:40%;margin-left:20px;">
                    </select>
                    到
                    <select id="selNotWorkDuringMinute2" class="form-control input-sm pull-right" style="width:40%; margin-right: 20px;">
                    </select>
                </div>
                <div class="form-group">
                    <select id="selNotWorkDuringHour3" class="form-control input-sm pull-left" style="width:40%;margin-left:20px;">
                    </select>
                    到
                    <select id="selNotWorkDuringMinute3" class="form-control input-sm pull-right" style="width:40%; margin-right: 20px;">
                    </select>
                </div>

                <%--<label for="selClosing" class="col-sm-2 control-label pull-left">每日结算时间</label>
                <select id="selClosing" class="form-control input-sm pull-right" style="width:70%">
                    <option>0点</option>
                    <option>1点</option>
                    <option>2点</option>
                    <option>3点</option>
                    <option>4点</option>
                    <option>5点</option>
                    <option>6点</option>
                    <option>7点</option>
                    <option>8点</option>
                    <option>9点</option>
                    <option>10点</option>
                    <option>11点</option>
                    <option>12点</option>
                    <option>13点</option>
                    <option>14点</option>
                    <option>15点</option>
                    <option>16点</option>
                    <option>17点</option>
                    <option>18点</option>
                    <option>19点</option>
                    <option>20点</option>
                    <option>21点</option>
                    <option>22点</option>
                    <option>23点</option>
                </select>--%>
                </form>
            </div>

            </div>
        </div>
    </div>

</body>
</html>