namespace Zii.WindowsConfigTools
{
    partial class PortCheckingView
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
            this.label1 = new System.Windows.Forms.Label();
            this.IPAddressInputBox = new System.Windows.Forms.TextBox();
            this.portCheckingStartButton = new System.Windows.Forms.Button();
            this.ClosePortCheckingButton = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.PortInputBox = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(48, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(57, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "IP address";
            // 
            // IPAddressInputBox
            // 
            this.IPAddressInputBox.Location = new System.Drawing.Point(135, 65);
            this.IPAddressInputBox.Name = "IPAddressInputBox";
            this.IPAddressInputBox.Size = new System.Drawing.Size(116, 20);
            this.IPAddressInputBox.TabIndex = 1;
            this.IPAddressInputBox.Text = "127.0.0.1";
            // 
            // portCheckingStartButton
            // 
            this.portCheckingStartButton.Location = new System.Drawing.Point(66, 281);
            this.portCheckingStartButton.Name = "portCheckingStartButton";
            this.portCheckingStartButton.Size = new System.Drawing.Size(75, 23);
            this.portCheckingStartButton.TabIndex = 2;
            this.portCheckingStartButton.Text = "Start";
            this.portCheckingStartButton.UseVisualStyleBackColor = true;
            this.portCheckingStartButton.Click += new System.EventHandler(this.portCheckingStartButton_Click);
            // 
            // ClosePortCheckingButton
            // 
            this.ClosePortCheckingButton.Location = new System.Drawing.Point(208, 281);
            this.ClosePortCheckingButton.Name = "ClosePortCheckingButton";
            this.ClosePortCheckingButton.Size = new System.Drawing.Size(75, 23);
            this.ClosePortCheckingButton.TabIndex = 3;
            this.ClosePortCheckingButton.Text = "Close";
            this.ClosePortCheckingButton.UseVisualStyleBackColor = true;
            this.ClosePortCheckingButton.Click += new System.EventHandler(this.ClosePortCheckingButton_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(48, 132);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(66, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Port Number";
            // 
            // PortInputBox
            // 
            this.PortInputBox.Location = new System.Drawing.Point(135, 129);
            this.PortInputBox.Name = "PortInputBox";
            this.PortInputBox.Size = new System.Drawing.Size(116, 20);
            this.PortInputBox.TabIndex = 5;
            this.PortInputBox.Text = "8082";
            // 
            // PortCheckingView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(338, 364);
            this.Controls.Add(this.PortInputBox);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.ClosePortCheckingButton);
            this.Controls.Add(this.portCheckingStartButton);
            this.Controls.Add(this.IPAddressInputBox);
            this.Controls.Add(this.label1);
            this.Name = "PortCheckingView";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Port Checking";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox IPAddressInputBox;
        private System.Windows.Forms.Button portCheckingStartButton;
        private System.Windows.Forms.Button ClosePortCheckingButton;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox PortInputBox;
    }
}