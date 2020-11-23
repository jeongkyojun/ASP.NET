<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BMI.aspx.cs" Inherits="BMI" %>

<!DOCTYPE html>

<html>
    <head>
        <title>
            체질량 지수 산출기
        </title>
    </head>
    <body>
        <form id="WebForm" runat="server">
            <div align="center">
                신장 : &nbsp;
                <input id="Height" type="text" runat ="server"/>
                &nbsp;cm&nbsp;&nbsp;&nbsp;몸무게 :&nbsp;
                <input id="Weight" type="text" runat="server"/>
                &nbsp;kg
                <br /><br />
                <input id="Calc" type="submit" value="산출하기" 
                    runat ="server" onserverclick="Calc_ServerClick"/>
                <br />
                <br />
                <p id ="Result" runat="server"> ... </p>
                <!--<p> 블록 : 형식이 있는 텍스트블록을 웹페이지에 넣을때 사용한다.-->
            </div>
        </form>
    </body>
</html>
