using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HowToMakeCoffee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SelectCoffeeKind.Items.Clear();
            SelectCoffeeKind.Items.Add(new ListItem("종류","0"));
            SelectCoffeeKind.Items.Add(new ListItem("밀크커피( 설탕 + 프림 )","1"));
            SelectCoffeeKind.Items.Add(new ListItem("밀크커피( 프림 )", "2"));
            SelectCoffeeKind.Items.Add(new ListItem("밀크커피( 설탕 )", "3"));
            SelectCoffeeKind.Items.Add(new ListItem("블랙커피", "4"));
        }
    }
    protected void Show_ServerClick(object sender, EventArgs e)
    {
        //string filePath = Request.PhysicalApplicationPath + @"WebEx03\";
        string filePath = "D:\\Git\\ASP.NET\\ASP.Net 4.0\\WebEx3\\";
        string fileName = "";

        ListItem item = SelectCoffeeKind.Items[SelectCoffeeKind.SelectedIndex];
        int coffeeType = int.Parse(item.Value);
        Selected.InnerText = "";
        if (coffeeType != 0)
        {
            for (int i=0;i<4;i++)
            {
                fileName = filePath + i + ".txt";
                Response.WriteFile(fileName);
            
                if(i !=3 && ((i&(coffeeType-1))==1||(i&(coffeeType-1))==2)) Response.Clear();
                    Response.Flush();

                // Clear를 하기위한 조건
                //-----------------------------------------------//
                //     | 00         01          10          11   //
                //-----------------------------------------------//
                // 00  | 00 O       00 O        00 O        00 O //
                // 01  | 00 O       01 X        00 O        01 X //
                // 10  | 00 O       00 O        10 X        00 O //
                // 11  | 00 O       01 X        10 X        11 O //
                //-----------------------------------------------//
                // 커피중 프림만은 설탕(1:01)을, 설탕만은 프림(2:10)을 제외해야 한다.
                // 따라서 i&coffeeType != 2 || i&coffeeType !=3 이어야 한다,
                // 이때, 11은 물이므로 종류에 상관없이 무조건 나와야 한다. 따라서 i!=3 이라는 조건을 추가한다.
            }
        }
        Response.Write("</ol>");
    }
    protected void goTodifferentPage(object sender, EventArgs e)
    {
        Server.Transfer("BMI2.aspx");
    }
}