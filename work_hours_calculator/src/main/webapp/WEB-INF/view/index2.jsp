<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

    <title>iScroll demo: Event Passthrough</title>

    <script type="text/javascript" src="resources/iscroll.js"></script>

    <script type="text/javascript">

        var myScroll;

        function loaded () {
            myScroll = new IScroll('#wrapper', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });
        }

    </script>

    <style type="text/css">
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        body,ul,li {
            padding: 0;
            margin: 0;
            border: 0;
        }

        body {
            font-size: 12px;
            font-family: ubuntu, helvetica, arial;
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
            width: 2400px;
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

        p {
            font-size: 16px;
            padding: 1.2em;
            line-height: 200%;
        }

    </style>
</head>
<body onload="loaded()">
<div id="header">iScroll</div>

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
            <li>Pretty cell 8</li>
            <li>Pretty cell 9</li>
            <li>Pretty cell 10</li>
            <li>Pretty cell 11</li>
            <li>Pretty cell 12</li>
            <li>Pretty cell 13</li>
            <li>Pretty cell 14</li>
            <li>Pretty cell 15</li>
            <li>Pretty cell 16</li>
            <li>Pretty cell 17</li>
            <li>Pretty cell 18</li>
            <li>Pretty cell 19</li>
            <li>Pretty cell 20</li>
        </ul>
    </div>
</div>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

</body>
</html>