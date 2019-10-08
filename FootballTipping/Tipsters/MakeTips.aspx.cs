using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace WSD_Project.Tipsters
{
    public partial class MakeTips : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Create connection - string.
            String connectionString = WebConfigurationManager.ConnectionStrings["TippingConnection"].ConnectionString;

            // Connect to database.
            SqlConnection con = new SqlConnection(connectionString);

            // Open sql-connection.
            con.Open();

            // Create SQL-query.
            String sql = "SELECT roundID FROM tips WHERE username = '" + Page.User.Identity.Name + "' GROUP BY roundID;";

            // Run SQL-query.
            SqlCommand cmd = new SqlCommand(sql, con);

            // Create object to store queries data.
            SqlDataReader allTippedRounds = cmd.ExecuteReader();

            // Create list of type string containing the numbers 1-9.
            String[] numbers = new string[] { "1", "2", "3", "4", "5", "6", "7", "8", "9" };
            List<string> rounds = new List<string>(numbers);

            // For each tipped-round.
            while (allTippedRounds.Read())
            {
                rounds.Remove(allTippedRounds["roundID"].ToString());
            }
            // Loop through array "rounds" to add left over rounds (un-tipped rounds) to dropdownlist.
            for (int i = 0; i < rounds.Count; i++)
            {
                ddlRoundsNotTipped.Items.Add(new ListItem(rounds[i]));
            }
        }

        // Submit-button click-event.
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            /*// Calculate tip-margins.
            int game1, game2, game3, game4, game5, game6, game7, game8, game9;

            ListViewItem item = ListView1.Controls.

            if (view2OfMakeTips..SelectedValue.Text.Equals("Win"))
            {
                game1 = Int32.Parse(game1margin.Text);
            }
            else if (game1outcome.SelectedValue.Text.Equals("Draw"))
            {
                game1 = 0;
            }
            else
            {
                game1 = Int32.Parse(game1margin.Text) - (Int32.Parse(game1margin.Text) + Int32.Parse(game1margin.Text));
            }

            if (game2outcome.SelectedValue.Text.Equals("Win"))
            {
                game2 = Int32.Parse(game2margin.Text);
            }
            else if (game2outcome.SelectedValue.Text.Equals("Draw"))
            {
                game2 = 0;
            }
            else
            {
                game2 = Int32.Parse(game2margin.Text) - (Int32.Parse(game2margin.Text) + Int32.Parse(game2margin.Text));
            }

            if (game3outcome.SelectedValue.Text.Equals("Win"))
            {
                game3 = Int32.Parse(game3margin.Text);
            }
            else if (game3outcome.SelectedValue.Text.Equals("Draw"))
            {
                game3 = 0;
            }
            else
            {
                game3 = Int32.Parse(game3margin.Text) - (Int32.Parse(game3margin.Text) + Int32.Parse(game3margin.Text));
            }

            if (game4outcome.SelectedValue.Text.Equals("Win"))
            {
                game4 = Int32.Parse(game4margin.Text);
            }
            else if (game4outcome.SelectedValue.Text.Equals("Draw"))
            {
                game4 = 0;
            }
            else
            {
                game4 = Int32.Parse(game4margin.Text) - (Int32.Parse(game4margin.Text) + Int32.Parse(game4margin.Text));
            }

            if (game5outcome.SelectedValue.Text.Equals("Win"))
            {
                game5 = Int32.Parse(game5margin.Text);
            }
            else if (game5outcome.SelectedValue.Text.Equals("Draw"))
            {
                game5 = 0;
            }
            else
            {
                game5 = Int32.Parse(game5margin.Text) - (Int32.Parse(game5margin.Text) + Int32.Parse(game5margin.Text));
            }

            if (game6outcome.SelectedValue.Text.Equals("Win"))
            {
                game6 = Int32.Parse(game6margin.Text);
            }
            else if (game6outcome.SelectedValue.Text.Equals("Draw"))
            {
                game6 = 0;
            }
            else
            {
                game6 = Int32.Parse(game6margin.Text) - (Int32.Parse(game6margin.Text) + Int32.Parse(game6margin.Text));
            }

            if (game7outcome.SelectedValue.Text.Equals("Win"))
            {
                game7 = Int32.Parse(game7margin.Text);
            }
            else if (game7outcome.SelectedValue.Text.Equals("Draw"))
            {
                game7 = 0;
            }
            else
            {
                game7 = Int32.Parse(game7margin.Text) - (Int32.Parse(game7margin.Text) + Int32.Parse(game7margin.Text));
            }

            if (game8outcome.SelectedValue.Text.Equals("Win"))
            {
                game8 = Int32.Parse(game8margin.Text);
            }
            else if (game8outcome.SelectedValue.Text.Equals("Draw"))
            {
                game8 = 0;
            }
            else
            {
                game8 = Int32.Parse(game8margin.Text) - (Int32.Parse(game8margin.Text) + Int32.Parse(game8margin.Text));
            }

            if (game9outcome.SelectedValue.Text.Equals("Win"))
            {
                game9 = Int32.Parse(game9margin.Text);
            }
            else if (game9outcome.SelectedValue.Text.Equals("Draw"))
            {
                game9 = 0;
            }
            else
            {
                game9 = Int32.Parse(game9margin.Text) - (Int32.Parse(game9margin.Text) + Int32.Parse(game9margin.Text));
            }


            // Add tip-set to database.

            // Create connection - string.
            String connectionString = WebConfigurationManager.ConnectionStrings["TippingConnection"].ConnectionString;

            // Connect to database.
            SqlConnection con = new SqlConnection(connectionString);

            // Open sql-connection.
            con.Open();

            // Create SQL-query.
            String sql = "INSERT INTO tips VALUES ('" + Page.User.Identity.Name + "', " + ddlRoundsNotTipped.SelectedItem.Text + ", " + game1 + ", " + game2 + ", " + game3 + ", " + game4 + ", " + game4 + ", " + game5 + ", " + game6 + ", " + game7 + ", " + game8 + ", " + game9 + ", '" + DateTime.Now.ToString() + "');";

            // Run SQL-query.
            SqlCommand cmd = new SqlCommand(sql, con);

            // Create object to store queries data.
            SqlDataReader allTippedRounds = cmd.ExecuteReader();*/
        }
    }
}