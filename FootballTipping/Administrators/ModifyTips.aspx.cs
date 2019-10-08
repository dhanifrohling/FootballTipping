using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSD_Project.Administrators
{
    public partial class ModifyTips : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Insert-button click-event.
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            // If all user input is valid.
            if (Page.IsValid)
            {
                // Let user know that all input is valid.
                lblResult.Text = "You have inserted your tip with all valid input!";
            }
            // Else.
            else
            {
                // Let user know that there is invalid input.
                lblResult.Text = "You have invalid input!";
            }
        }

        // Update-button click-event.
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // If all user input is valid.
            if (Page.IsValid)
            {
                // Let user know that all input is valid.
                lblResult.Text = "You have updated your tip with all valid input!";
            }
            // Else.
            else
            {
                // Let user know that there is invalid input.
                lblResult.Text = "You have invalid input!";
            }
        }
    }
}