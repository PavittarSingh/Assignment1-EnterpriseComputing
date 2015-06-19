using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameCalculator
{
    public partial class _default : System.Web.UI.Page
    {
        // Findout of wins/losses
        int winCounter = 0;
        int lossCounter = 0;
        // total amount of games
        double maxGames = 4;
        // total points scored and allowed across all games
        decimal pointsScored = 0;
        decimal pointsAllowed = 0;
        decimal pointDifferential = 0;
        // number of attendants across all games
        decimal totalAttendance = 0;
        decimal averageAttendance = 0;
        
        //when page is loaded
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //calculate the wins/losses
            calculateOutput(rblResult1.SelectedItem.Text);
            calculateOutput(rblResult2.SelectedItem.Text);
            calculateOutput(rblResult3.SelectedItem.Text);
            calculateOutput(rblResult4.SelectedItem.Text);

            //show the total wins
            lblWins.Text = winCounter.ToString();

            //show the total losses
            lblLosses.Text = lossCounter.ToString();

            //show the win percentage
            Double winPercentage = winCounter / (maxGames)*100;
            lblWinPercent.Text = winPercentage.ToString();

            //show total points scored
            pointsScored = Convert.ToDecimal(txtGame1Scored.Text) + Convert.ToDecimal(txtGame2Scored.Text) + Convert.ToDecimal(txtGame3Scored.Text) + Convert.ToDecimal(txtGame4Scored.Text);
            lblPointsScored.Text = pointsScored.ToString();

            //show total points allowed
            pointsAllowed = Convert.ToDecimal(txtGame1Allowed.Text) + Convert.ToDecimal(txtGame2Allowed.Text) + Convert.ToDecimal(txtGame3Allowed.Text) + Convert.ToDecimal(txtGame4Allowed.Text);
            lblPointsAllowed.Text = pointsAllowed.ToString();

            //show the point differential
            pointDifferential = pointsScored - pointsAllowed;
            lblPointDiff.Text = pointDifferential.ToString();

            //show the total attendance across all games
            totalAttendance = Convert.ToDecimal(txtGame1Spectators.Text) + Convert.ToDecimal(txtGame2Spectators.Text) + Convert.ToDecimal(txtGame3Spectators.Text) + Convert.ToDecimal(txtGame4Spectators.Text);
            lblTotalAttendance.Text = totalAttendance.ToString();

            //show the average attendance across all games
            averageAttendance = totalAttendance / Convert.ToDecimal(maxGames);
            lblAvgAttendance.Text = averageAttendance.ToString();

            //show the results panel
            pnlResults.Visible = true;
        }

        //user result win/loss
        private void calculateOutput(string gameOutcome)
        {
            if (gameOutcome == "Win")
            {
                winCounter++;
            }
            else
            {
                lossCounter++;
            }
        }

    }
}