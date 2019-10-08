using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

namespace WSD_Project.Administrators
{
    public partial class Statistics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlGraphType1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), ddlGraphType1.SelectedValue);
        }

        protected void ddlGraphType2_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.Chart2.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), ddlGraphType2.SelectedValue);
        }

        protected void ddlDimension1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDimension1.SelectedValue == "2D")
                this.Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
            else if (ddlDimension1.SelectedValue == "3D")
                this.Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        }

        protected void ddlDimension2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDimension2.SelectedValue == "2D")
                this.Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
            else if (ddlDimension2.SelectedValue == "3D")
                this.Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        }
    }
}