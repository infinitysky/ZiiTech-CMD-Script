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
using System.Net;



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
               
                /*Set Melbourne/Sydeny Time zone */
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
                /*Set Adelaide Time zone */
                String timeZoneName = "Cen. Australia Standard Time";
                var process = Process.Start(new ProcessStartInfo
                {

                    FileName = "tzutil.exe",
                    Arguments = "/s \"" + timeZoneName + "\"",
                    UseShellExecute = false,
                    CreateNoWindow = false
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
            String execBatchFileName = currentPath + "\\WindowsSystemConfigrations\\SetDDAPort.bat";
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

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Ziitech Help Tools V.1.0");
        }

        private void MainView_Load(object sender, EventArgs e)
        {

        }

        private void checkLicenseServerButton_Click(object sender, EventArgs e)
        {


            /*
            HttpClient client = new HttpClient();

            var client = new HttpClient();
            var content = await client.GetStringAsync("http://webcode.me");

            Console.WriteLine(content);
            */

            /*
            HttpWebRequest myReq =(HttpWebRequest)WebRequest.Create("https://kiwi-api.ziicloud.com/Status/Version");
            //HttpWebRequest request = (HttpWebRequest)WebRequest.Create(@"http://somewhere.com/client.php?locationID=1");
            HttpWebResponse response = (HttpWebResponse)myReq.GetResponse();
            //string content = new StreamReader(response.GetResponseStream()).ReadToEnd();
            //string content = new StreamReader(myReq.GetResponse()  );
            MessageBox.Show(response.ToString);

            */

            //HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create("https://kiwi-api.ziicloud.com/Status/Version");

            HttpWebRequest request = WebRequest.Create("https://kiwi-api.ziicloud.com/Status/Version") as HttpWebRequest;
            //request.Accept = "application/xrds+xml";  
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            request.Timeout = 10;


            WebHeaderCollection header = response.Headers;

            var encoding = ASCIIEncoding.UTF8;
            //using (var reader = new System.IO.StreamReader(response.GetResponseStream(), encoding))
            using (var reader = new System.IO.StreamReader(response.GetResponseStream(), encoding))
            {
                string responseText = reader.ReadToEnd();
                MessageBox.Show(responseText);

            }
            


        }

        private void autoRestartButton_Click(object sender, EventArgs e)
        {
            string currentPath = Directory.GetCurrentDirectory();
            String execBatchFileName = currentPath + "\\WindowsSystemConfigrations\\AutoRebootSystem.bat";
            try
            {

                System.Diagnostics.Process.Start(execBatchFileName);
                MessageBox.Show("Process completed");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }
        }

        private void SystemSettinginitButton_Click(object sender, EventArgs e)
        {
            string currentPath = Directory.GetCurrentDirectory();
            String execBatchFileName = currentPath + "\\WindowsSystemConfigrations\\SystemConfig.bat";
            try
            {

                System.Diagnostics.Process.Start(execBatchFileName);
                MessageBox.Show("Process completed");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }

        }

        private void createZiitechAccountButton_Click(object sender, EventArgs e)
        {
            string currentPath = Directory.GetCurrentDirectory();
            String execBatchFileName = currentPath + "\\WindowsSystemConfigrations\\CreateZiitech.bat";
            try
            {

                System.Diagnostics.Process.Start(execBatchFileName);
                MessageBox.Show("Process completed, please Reboot windows system");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }

        }

        private void disableWindowsUpdatesButton_Click(object sender, EventArgs e)
        {
            string currentPath = Directory.GetCurrentDirectory();
            String execBatchFileName = currentPath + "\\WindowsSystemConfigrations\\DisableWindowsUpdate.bat";
            try
            {

                System.Diagnostics.Process.Start(execBatchFileName);
                MessageBox.Show("Process completed, please Reboot windows system");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }

        }

        private void printChineseButton_Click(object sender, EventArgs e)
        {
            string currentPath = Directory.GetCurrentDirectory();
            String execBatchFileName = currentPath + "\\WindowsSystemConfigrations\\ChangeLanguageRegionChinese.bat";
            try
            {

                System.Diagnostics.Process.Start(execBatchFileName);
                MessageBox.Show("Process completed, please Reboot windows system");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }

        }

        private void resyncFailedItemButton_Click(object sender, EventArgs e)
        {
            string currentPath = Directory.GetCurrentDirectory();
            String execBatchFileName = currentPath + "\\WindowsSystemConfigrations\\ReSyncFailedItems_win10.bat";
            try
            {

                System.Diagnostics.Process.Start(execBatchFileName);
                MessageBox.Show("Process completed");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }

        }

        private void InstallDDAFULLButton_Click(object sender, EventArgs e)
        {
            string currentPath = Directory.GetCurrentDirectory();
            String execBatchFileName = currentPath + "\\WindowsSystemConfigrations\\RemoteDDADeployment_Full_x64.bat";
            try
            {

                System.Diagnostics.Process.Start(execBatchFileName);
                MessageBox.Show("Process completed");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());
                //Console.WriteLine(ex.StackTrace.ToString());
            }

        }

        private void ExitButton_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.Application.Exit();
        }
    }
}
