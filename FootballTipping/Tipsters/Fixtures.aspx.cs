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
    public partial class Fixtures : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DisplayFixtures_Click(object sender, EventArgs e)
        {
            // Get selected-round.
            String round = ddlRounds.SelectedValue.ToString();

            // Create an empty buffer.
            String buffer = "<table border=1><tr><th>Game</th><th>Home-team</th><th>Away-team</th></tr>";

            // Create connection-string.
            String connectionString = WebConfigurationManager.ConnectionStrings["TippingConnection"].ConnectionString;

            // Connect to database.
            SqlConnection con = new SqlConnection(connectionString);

            con.Open();


            // For each game in the given round.
            for (int i = 1; i <= 9; i++)
            {
                // Output start of game-row & game-number.
                buffer = buffer + "<tr><td>" + i.ToString() + "</td>";

                // Generate SQL-query.
                String sql = "SELECT home" + i.ToString() + " AS team, homestate FROM fixtures INNER JOIN teams ON fixtures.home" + i.ToString() + " = teams.teamname WHERE roundID = " + round + " UNION SELECT away" + i.ToString() + " AS team, homestate FROM fixtures INNER JOIN teams ON fixtures.away" + i.ToString() + " = teams.teamname WHERE roundID = " + round + ";";

                // Run SQL-query.
                SqlCommand cmd = new SqlCommand(sql, con);
                
                // Create object to read the queries data.
                SqlDataReader reader = cmd.ExecuteReader();

                // If there's data in the queries result.
                if (reader != null)
                {
                    bool homeTeamOutputted = false;
                    while (reader.Read())
                    {
                        if (homeTeamOutputted)
                        {
                            buffer = buffer + "<td>" + (string)reader["team"] + " - " + (string)reader["homestate"] + "</td>";
                            homeTeamOutputted = true;
                        }
                        else
                        {
                            buffer = buffer + "<td>" + (string)reader["team"] + " - " + (string)reader["homestate"] + "</td>";
                            homeTeamOutputted = false;
                        }
                    }
                }
                // Else, if there's  no data in the queries result.
                else
                {
                    // Output empty game-data.
                    buffer = buffer + "<td></td><td></td>";
                }
                reader.Close();

                // Output end of game-row.
                buffer = buffer + "</tr>";
            }

            buffer = buffer + "</table>";
            
            con.Close();

            // Output games.
            fixturesTable.InnerHtml = buffer;

            // Make games-table visibile.
            fixturesTable.Visible = true;
        }
    }
}