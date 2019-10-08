using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSD_Project
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.IsInRole("administrators"))
            {
                administratorsDiv.Visible = true;
            }
            else if (HttpContext.Current.User.IsInRole("tipsters"))
            {
                tipstersDiv.Visible = true;
            }
            else
            {
                anonymousDiv.Visible = true;
            }
        }
    }
}