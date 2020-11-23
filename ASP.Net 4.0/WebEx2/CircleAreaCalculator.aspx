﻿<%@Page Language="C#" AutoEventWireup="true" CodeFile ="CircleAreaCalculator.aspx.cs" Inherits ="CircleAreaCalculator"%>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 69px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border: 1px solid #808080; text-align: center; width: 450px; border-collapse: collapse;" >
                <tr>
                    <td colspan ="3" class="auto-style1">
                        원의 넓이 구하기
                    </td>
                </tr>
                <tr>
                    <td>
                        반지름
                    </td>
                    <td>
                        <asp:TextBox ID="textRadius" runat="server"></asp:TextBox>
                        cm
                    </td>
                    <td>
                        <asp:Button ID="btnArea" runat="server" OnClick="btnArea_click" Text="넓이 구하기" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblOutput" runat="server" Text="Label"> 
                            결과 출력
                        </asp:Label>                      
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
