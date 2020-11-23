using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CircleAreaCalculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnArea_click(object sender, EventArgs e)
    {
        //try catch로 숫자가 아닌경우 오류처리 실행
        try
        {
            double radius = double.Parse(textRadius.Text);
            double area = Math.Pow(radius, 2) * Math.PI;
            lblOutput.Text = "반지름이 " + radius.ToString() + "cm인 원의 넓이는 " + area.ToString() + "cm<sup>2</sup>입니다.";
            // 여기서 <sup></sup>은 위첨자를 나타내는 html코드
        }
        catch(Exception exc)
        {
            lblOutput.Text = "잘못된 접근입니다. 숫자를 입력해 주세요";
        }
    }
}