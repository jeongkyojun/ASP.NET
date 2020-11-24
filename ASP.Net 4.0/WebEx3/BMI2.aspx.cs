using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BMI2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //IsPostBack은 처음 열리는 페이지인지 확인하는 속성(false인 경우 처음 열리는 페이지이다.)
            Measure.Items.Add(new ListItem("센티미터(cm)","0.01"));
            Measure.Items.Add(new ListItem("피트(feet)","0.3048"));
            Measure.Items.Add(new ListItem("미터(m)","1"));
        }
    }
    protected void Calc_ServerClick(object sender, EventArgs e)
    {
        try
        {
            ListItem item = Measure.Items[Measure.SelectedIndex];
            decimal height = Decimal.Parse(Height.Value) * Decimal.Parse(item.Value);
            decimal weight = Decimal.Parse(Weight.Value);

            decimal BMI = weight / (height * height);
            Result.InnerText = "체질량지수(BMI) : " + BMI.ToString().Substring(0, 6);
        }
        catch(Exception exp)
        {

        }
    }
}