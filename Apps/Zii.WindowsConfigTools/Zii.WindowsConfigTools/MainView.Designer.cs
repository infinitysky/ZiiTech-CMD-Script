namespace Zii.WindowsConfigTools
{
    partial class MainView
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainView));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aboutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.SetAUTimeZoneButton = new System.Windows.Forms.Button();
            this.SystemSettinginitButton = new System.Windows.Forms.Button();
            this.addNewNETPrinterButton = new System.Windows.Forms.Button();
            this.addOKAMINETPrinterButton = new System.Windows.Forms.Button();
            this.setTimeZoneTOSAButton = new System.Windows.Forms.Button();
            this.enableFirewallForZiiPOSButton = new System.Windows.Forms.Button();
            this.checkPortOpenViewButton = new System.Windows.Forms.Button();
            this.EnableFirewallForDDAButton = new System.Windows.Forms.Button();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.aboutToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(729, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.exitToolStripMenuItem.Text = "Exit";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // aboutToolStripMenuItem
            // 
            this.aboutToolStripMenuItem.Name = "aboutToolStripMenuItem";
            this.aboutToolStripMenuItem.Size = new System.Drawing.Size(52, 20);
            this.aboutToolStripMenuItem.Text = "About";
            // 
            // SetAUTimeZoneButton
            // 
            this.SetAUTimeZoneButton.Location = new System.Drawing.Point(83, 110);
            this.SetAUTimeZoneButton.Name = "SetAUTimeZoneButton";
            this.SetAUTimeZoneButton.Size = new System.Drawing.Size(128, 48);
            this.SetAUTimeZoneButton.TabIndex = 1;
            this.SetAUTimeZoneButton.Text = "Set Time Zone To MEL/SYD time";
            this.SetAUTimeZoneButton.UseVisualStyleBackColor = true;
            this.SetAUTimeZoneButton.Click += new System.EventHandler(this.SetAUTimeZoneButton_Click);
            // 
            // SystemSettinginitButton
            // 
            this.SystemSettinginitButton.Location = new System.Drawing.Point(83, 56);
            this.SystemSettinginitButton.Name = "SystemSettinginitButton";
            this.SystemSettinginitButton.Size = new System.Drawing.Size(128, 48);
            this.SystemSettinginitButton.TabIndex = 2;
            this.SystemSettinginitButton.Text = "System Setting initialization";
            this.SystemSettinginitButton.UseVisualStyleBackColor = true;
            // 
            // addNewNETPrinterButton
            // 
            this.addNewNETPrinterButton.Location = new System.Drawing.Point(228, 56);
            this.addNewNETPrinterButton.Name = "addNewNETPrinterButton";
            this.addNewNETPrinterButton.Size = new System.Drawing.Size(128, 48);
            this.addNewNETPrinterButton.TabIndex = 3;
            this.addNewNETPrinterButton.Text = "Add New NET Printer";
            this.addNewNETPrinterButton.UseVisualStyleBackColor = true;
            // 
            // addOKAMINETPrinterButton
            // 
            this.addOKAMINETPrinterButton.Location = new System.Drawing.Point(228, 110);
            this.addOKAMINETPrinterButton.Name = "addOKAMINETPrinterButton";
            this.addOKAMINETPrinterButton.Size = new System.Drawing.Size(128, 48);
            this.addOKAMINETPrinterButton.TabIndex = 4;
            this.addOKAMINETPrinterButton.Text = "Add OKAMI NET Printer";
            this.addOKAMINETPrinterButton.UseVisualStyleBackColor = true;
            // 
            // setTimeZoneTOSAButton
            // 
            this.setTimeZoneTOSAButton.Location = new System.Drawing.Point(83, 164);
            this.setTimeZoneTOSAButton.Name = "setTimeZoneTOSAButton";
            this.setTimeZoneTOSAButton.Size = new System.Drawing.Size(128, 48);
            this.setTimeZoneTOSAButton.TabIndex = 5;
            this.setTimeZoneTOSAButton.Text = "Set Time Zone To South Australia";
            this.setTimeZoneTOSAButton.UseVisualStyleBackColor = true;
            this.setTimeZoneTOSAButton.Click += new System.EventHandler(this.setTimeZoneTOSAButton_Click);
            // 
            // enableFirewallForZiiPOSButton
            // 
            this.enableFirewallForZiiPOSButton.Location = new System.Drawing.Point(374, 110);
            this.enableFirewallForZiiPOSButton.Name = "enableFirewallForZiiPOSButton";
            this.enableFirewallForZiiPOSButton.Size = new System.Drawing.Size(128, 48);
            this.enableFirewallForZiiPOSButton.TabIndex = 6;
            this.enableFirewallForZiiPOSButton.Text = "Enable Firewall For ZiiPOS";
            this.enableFirewallForZiiPOSButton.UseVisualStyleBackColor = true;
            this.enableFirewallForZiiPOSButton.Click += new System.EventHandler(this.enableFirewallForZiiPOSButton_Click);
            // 
            // checkPortOpenViewButton
            // 
            this.checkPortOpenViewButton.Location = new System.Drawing.Point(508, 56);
            this.checkPortOpenViewButton.Name = "checkPortOpenViewButton";
            this.checkPortOpenViewButton.Size = new System.Drawing.Size(127, 48);
            this.checkPortOpenViewButton.TabIndex = 7;
            this.checkPortOpenViewButton.Text = "Check Open Port (TCP)";
            this.checkPortOpenViewButton.UseVisualStyleBackColor = true;
            this.checkPortOpenViewButton.Click += new System.EventHandler(this.checkPortOpenViewButton_Click);
            // 
            // EnableFirewallForDDAButton
            // 
            this.EnableFirewallForDDAButton.Location = new System.Drawing.Point(374, 56);
            this.EnableFirewallForDDAButton.Name = "EnableFirewallForDDAButton";
            this.EnableFirewallForDDAButton.Size = new System.Drawing.Size(128, 48);
            this.EnableFirewallForDDAButton.TabIndex = 8;
            this.EnableFirewallForDDAButton.Text = "Enable Firewall For DDA";
            this.EnableFirewallForDDAButton.UseVisualStyleBackColor = true;
            this.EnableFirewallForDDAButton.Click += new System.EventHandler(this.EnableFirewallForDDAButton_Click);
            // 
            // MainView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(729, 548);
            this.Controls.Add(this.EnableFirewallForDDAButton);
            this.Controls.Add(this.checkPortOpenViewButton);
            this.Controls.Add(this.enableFirewallForZiiPOSButton);
            this.Controls.Add(this.setTimeZoneTOSAButton);
            this.Controls.Add(this.addOKAMINETPrinterButton);
            this.Controls.Add(this.addNewNETPrinterButton);
            this.Controls.Add(this.SystemSettinginitButton);
            this.Controls.Add(this.SetAUTimeZoneButton);
            this.Controls.Add(this.menuStrip1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "MainView";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Zii.WindowsConfigurationTools";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aboutToolStripMenuItem;
        private System.Windows.Forms.Button SetAUTimeZoneButton;
        private System.Windows.Forms.Button SystemSettinginitButton;
        private System.Windows.Forms.Button addNewNETPrinterButton;
        private System.Windows.Forms.Button addOKAMINETPrinterButton;
        private System.Windows.Forms.Button setTimeZoneTOSAButton;
        private System.Windows.Forms.Button enableFirewallForZiiPOSButton;
        private System.Windows.Forms.Button checkPortOpenViewButton;
        private System.Windows.Forms.Button EnableFirewallForDDAButton;
    }
}

