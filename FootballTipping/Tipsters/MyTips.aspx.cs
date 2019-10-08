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
    public partial class MyTips : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
        }

        protected void DisplayTips_Click(object sender, EventArgs e)
        {
            // Create connection-string.
            String connectionString = WebConfigurationManager.ConnectionStrings["TippingConnection"].ConnectionString;

            // Connect to database.
            SqlConnection con = new SqlConnection(connectionString);

            // Open sql-connection.
            con.Open();
            
            // Initalise variables.
            String buffer = "<ul>";
            String sRound = ddlRounds.SelectedValue.ToString();

            // For each game in the selected round.
            for (int i = 1; i <= 9; i++)
            {   
                // Generate SQL-query.
                String sql = "SELECT home" + i + " AS HomeTeam, away" + i + " AS AwayTeam, results.game" + i + " AS Result, tips.game" + i + " AS Margin FROM fixtures INNER JOIN results ON fixtures.roundID = results.roundID INNER JOIN tips ON fixtures.roundID = tips.roundID WHERE fixtures.roundID = " + ddlRounds.SelectedValue + " AND username = '" + Page.User.Identity.Name + "';";

                // Run SQL-query.
                SqlCommand cmd = new SqlCommand(sql, con);

                // Create object & store the queries data.
                SqlDataReader reader = cmd.ExecuteReader();
                
                while (reader.Read())
                {
                    // Add to HTML-buffer.
                    buffer += "<li>Game " + i.ToString() + ": " + (string)reader["HomeTeam"];

                    if ((int)reader["Result"] > 0)
                        buffer += " wins ";
                    else if ((int)reader["Result"] < 0)
                        buffer += " loses to ";
                    else
                        buffer += " draws with ";

                    buffer += (string)reader["AwayTeam"];

                    if ((int)reader["Margin"] != 0)
                        buffer += " by " + ((int)reader["Margin"] - (int)reader["Result"]).ToString() + " points." + "</li>";
                }

                reader.Close();
            }

            con.Close();

            buffer += "</ul>";

            // Output games.
            tipsTable.InnerHtml = buffer;

            // Display dropdown-list containign rounds.
            tipsTable.Visible = true;
        }
    }
}