using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Net.Sockets;


namespace Zii.WindowsConfigTools
{
    public partial class PortCheckingView : Form
    {
        public PortCheckingView()
        {
            InitializeComponent();
        }

        private void portCheckingStartButton_Click(object sender, EventArgs e)
        {
            String targetIPaddress = IPAddressInputBox.Text;
            String targetPortNumber = PortInputBox.Text;
            int portNumber = Int32.Parse(targetPortNumber);
            using (TcpClient tcpClient = new TcpClient())
            {
                try
                {
                    tcpClient.Connect(targetIPaddress, portNumber);
                    MessageBox.Show("Port open");
                    Console.WriteLine("Port open");
                    
                }
                catch (Exception)
                {
                    MessageBox.Show("Port closed");
                    Console.WriteLine("Port closed");
                }
            }

        }

        private void ClosePortCheckingButton_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

       
    }
}
