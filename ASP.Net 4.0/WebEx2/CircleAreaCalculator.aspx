<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border: 1px solid #808080; text-align: center; width: 450px; border-collapse: collapse;" >
                <tr>
                    <td colspan ="3" style="height: 70px">
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
                        <button id="btnArea">
                            넓이 구하기
                        </button>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <label id="lblOutput">
                           결과 출력
                        </label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
