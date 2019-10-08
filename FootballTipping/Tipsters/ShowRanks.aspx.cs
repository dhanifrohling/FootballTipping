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
    public partial class ShowRanks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Create connection-string.
            String connectionString = WebConfigurationManager.ConnectionStrings["TippingConnection"].ConnectionString;

            // Connect to database.
            SqlConnection con = new SqlConnection(connectionString);

            // Open sql-connection.
            con.Open();

            // Create SQL-query.
            String sql = "SELECT * FROM tips WHERE username = '" + Page.User.Identity.Name + "';";

            // Run SQL-query.
            SqlCommand cmd = new SqlCommand(sql, con);

            // Create object to store queries data.
            SqlDataReader allOfUsersTips = cmd.ExecuteReader();

            // If the logged-in user has made no tips.
            if (!allOfUsersTips.HasRows)
            {
                // Close reader.
                allOfUsersTips.Close();

                // Output user has made no tips.
                message.Text = "You have not made any tip yet.";
            }
            // Else, if they have made tips.
            else
            {
                // Close reader.
                allOfUsersTips.Close();

                // Create new SQL-query.
                sql = "SELECT roundID FROM tips WHERE username = '" + Page.User.Identity.Name + "' GROUP BY roundID;";

                // Run new SQL-query.
                cmd.Parameters.Clear();
                cmd = new SqlCommand(sql, con);

                // Create object to store queries data.
                SqlDataReader allRounds = cmd.ExecuteReader();

                // For each round in the SQL-query.
                while (allRounds.Read())
                {
                    // Add the given round to the dropdown-list.
                    ddlRounds.Items.Add(new ListItem("Round " + allRounds["roundID"].ToString(), allRounds["roundID"].ToString()));
                }

                // Close reader.
                allRounds.Close();

                // Display dropdown-list containign rounds.
                tipsFound.Visible = true;
            }

            // Close SQL-connection.
            con.Close();
        }

        protected void view2OfRanks_Activate(object sender, EventArgs e)
        {
            // Get selected-round.
            String round = ddlRounds.SelectedValue.ToString();

            // Create an empty buffer.
            String buffer = "<table border=1><tr><th>Rank</th><th>Firstname</th><th>Lastname</th><th>Error Point</th></tr>";

            // Create connection-string.
            String connectionString = WebConfigurationManager.ConnectionStrings["TippingConnection"].ConnectionString;

            // Connect to database.
            SqlConnection con = new SqlConnection(connectionString);
           
            String sRound = ddlRounds.SelectedValue.ToString();

            con.Open();

            

                // Generate SQL-query. To Select all games where tip is relevent. 
                String sql = "SELECT ABS((tips.game1 - results.game1) + (tips.game2 - results.game2) + (tips.game3 - results.game3) + (tips.game4 - results.game4) + (tips.game5 - results.game5) + (tips.game6 - results.game6) + (tips.game7 - results.game7) + (tips.game8 - results.game8)+ (tips.game9 - results.game9)) as totalErrors, tipsters.gname, tipsters.sname FROM tips INNER JOIN results on tips.roundID = results.roundID INNER JOIN tipsters ON tips.username = tipsters.username WHERE tips.roundID =" + ddlRounds.SelectedValue + " ORDER BY totalErrors;";

                // Run SQL-query.
                SqlCommand cmd = new SqlCommand(sql, con);
                // Create object & store the queries data.
                SqlDataReader reader = cmd.ExecuteReader();
                int i = 1;

                while (reader.Read())
                {

                    // Add to HTML-buffer.

                    buffer += "<tr><td>" + i.ToString() + "</td><td>" + (string)reader["gname"] + "</td><td>" + (string)reader["sname"] + "</td><td>" + reader["totalErrors"].ToString() + "</td></tr>";
                i++;
                }
                reader.Close();
            

            con.Close();

            buffer += "</table>";

            // Output games.
            tipsTable.InnerHtml = buffer;

            // Display dropdown-list containign rounds.
            tipsTable.Visible = true;
        }
    }
}

