<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HowToMakeCoffee.aspx.cs" Inherits="HowToMakeCoffee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>커피 타는 법</title>
    <p>커피타기</p>
</head>
<body>
    <form id="CoffeeForm" runat="server">
        <div>
            커피 종류 선택&nbsp;:&nbsp;
            <select id="SelectCoffeeKind" runat="server" >
                <option>

                </option>
            </select>&nbsp;
            <input id ="btnSelectCoffee" type="button" runat="server" value="조리법 보기" onserverclick ="Show_ServerClick"/>
            <br />
            <br />
            <p id="Selected" runat="server">ETC</p>
            <input id="goTodifferent" type="button" runat="server" value="BMI 페이지로 이동" onserverclick="goTodifferentPage" />
            <a href="BMI2.aspx">BMI 페이지로 이동</a>
        </div>
    </form>
</body>
</html>
