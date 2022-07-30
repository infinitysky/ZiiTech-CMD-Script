using System;
using System.IO;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;


namespace Zii.WindowsConfigTools
{
    public partial class MainView : Form
    {
        public MainView()
        {
            InitializeComponent();
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.Application.Exit();
        }

        private void SetAUTimeZoneButton_Click(object sender, EventArgs e)
        {

           // Process proc = null;
            try
            {
                /*
                string strCmdText;
                strCmdText = "cd /d %~dp0 & ./WindowsSystemConfigrations/SetTimeZone-AU_MEL.bat";
                System.Diagnostics.Process.Start("CMD.exe", strCmdText);
                */
                /*
                string batDir = string.Format(@"%~dp0");
                proc.StartInfo.WorkingDirectory = batDir;
                
                proc = new Process();
                
                proc.StartInfo.FileName =  @"./WindowsSystemConfigrations/SetTimeZone-AU_MEL.bat";
                
                proc.StartInfo.CreateNoWindow = false;
                proc.Start();
                proc.WaitForExit();
                
                MessageBox.Show("Bat file executed !!");
                */

                String timeZoneName = "AUS Eastern Standard Time";
                var process = Process.Start(new ProcessStartInfo
                {

                    FileName = "tzutil.exe",
                    Arguments = "/s \"" + timeZoneName + "\"",
                    UseShellExecute = false,
                    CreateNoWindow = true
                });

                if (process != null)
                {
                    process.WaitForExit();
                    TimeZoneInfo.ClearCachedData();
                    MessageBox.Show("Process completed, please check you time now");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }
        }

        private void setTimeZoneTOSAButton_Click(object sender, EventArgs e)
        {
            //Process proc = null;
            try
            {
                String timeZoneName = "Cen. Australia Standard Time";
                var process = Process.Start(new ProcessStartInfo
                {

                    FileName = "tzutil.exe",
                    Arguments = "/s \"" + timeZoneName + "\"",
                    UseShellExecute = false,
                    CreateNoWindow = true
                });

                if (process != null)
                {
                    process.WaitForExit();
                    TimeZoneInfo.ClearCachedData();
                    MessageBox.Show("Process completed, please check your time now");
                    Console.WriteLine("excuted");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }

        }

        private void enableFirewallForZiiPOSButton_Click(object sender, EventArgs e)
        {
            string currentPath = Directory.GetCurrentDirectory();
            String execBatchFileName = currentPath+"\\WindowsSystemConfigrations\\SetZiiPOSPort.bat";
            try
            {
                
                System.Diagnostics.Process.Start(execBatchFileName);
                MessageBox.Show("Process completed, please check your Port");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }

        }

        private void checkPortOpenViewButton_Click(object sender, EventArgs e)
        {
            PortCheckingView newForm = new PortCheckingView();

            newForm.Visible = true;
        }

        private void EnableFirewallForDDAButton_Click(object sender, EventArgs e)
        {
            string currentPath = Directory.GetCurrentDirectory();
            String execBatchFileName = currentPath + "\\WindowsSystemConfigrations\\SetZiiPOSPort.bat";
            try
            {

                System.Diagnostics.Process.Start(execBatchFileName);
                MessageBox.Show("Process completed, please check your Port");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }

        }
    }
}
