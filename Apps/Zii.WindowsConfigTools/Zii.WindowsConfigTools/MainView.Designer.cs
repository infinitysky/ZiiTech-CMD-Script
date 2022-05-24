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
            this.menuStrip1.Size = new System.Drawing.Size(800, 24);
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
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(93, 22);
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
            this.SetAUTimeZoneButton.Location = new System.Drawing.Point(122, 110);
            this.SetAUTimeZoneButton.Name = "SetAUTimeZoneButton";
            this.SetAUTimeZoneButton.Size = new System.Drawing.Size(128, 48);
            this.SetAUTimeZoneButton.TabIndex = 1;
            this.SetAUTimeZoneButton.Text = "Set Time Zone To Australia";
            this.SetAUTimeZoneButton.UseVisualStyleBackColor = true;
            // 
            // SystemSettinginitButton
            // 
            this.SystemSettinginitButton.Location = new System.Drawing.Point(122, 56);
            this.SystemSettinginitButton.Name = "SystemSettinginitButton";
            this.SystemSettinginitButton.Size = new System.Drawing.Size(128, 48);
            this.SystemSettinginitButton.TabIndex = 2;
            this.SystemSettinginitButton.Text = "System Setting initialization";
            this.SystemSettinginitButton.UseVisualStyleBackColor = true;
            // 
            // addNewNETPrinterButton
            // 
            this.addNewNETPrinterButton.Location = new System.Drawing.Point(499, 56);
            this.addNewNETPrinterButton.Name = "addNewNETPrinterButton";
            this.addNewNETPrinterButton.Size = new System.Drawing.Size(103, 48);
            this.addNewNETPrinterButton.TabIndex = 3;
            this.addNewNETPrinterButton.Text = "Add New NET Printer";
            this.addNewNETPrinterButton.UseVisualStyleBackColor = true;
            // 
            // addOKAMINETPrinterButton
            // 
            this.addOKAMINETPrinterButton.Location = new System.Drawing.Point(499, 110);
            this.addOKAMINETPrinterButton.Name = "addOKAMINETPrinterButton";
            this.addOKAMINETPrinterButton.Size = new System.Drawing.Size(103, 48);
            this.addOKAMINETPrinterButton.TabIndex = 4;
            this.addOKAMINETPrinterButton.Text = "Add OKAMI NET Printer";
            this.addOKAMINETPrinterButton.UseVisualStyleBackColor = true;
            // 
            // MainView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
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
    }
}

