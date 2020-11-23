using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BMI : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calc_ServerClick(object sender, EventArgs e)
    {
        decimal height = Decimal.Parse(Height.Value) / 100; // cm를 m로 환산
        decimal weight = Decimal.Parse(Weight.Value);

        decimal BMI = weight / (height*height);
        Result.InnerText = "체질량지수(BMI) : " + BMI.ToString().Substring(0,6);
    }
}