using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebFormSendMessage.Models;

namespace WebFormSendMessage
{
    public partial class FormSendMessage : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillUpPageFromResource();
            GetCookies();
        }

        protected void SendMessage_Click(object sender, EventArgs e)
        {
            MessageBox messageBox = new MessageBox();

            messageBox.Email=email.Text.ToString();
            messageBox.Message = message.Text.ToString();

            var context = new ValidationContext(messageBox, serviceProvider: null, items: null);
            var results = new List<ValidationResult>();
            var isValid = Validator.TryValidateObject(messageBox, context, results, true);

            if (!isValid)
            {
                foreach (var validationResult in results)
                {
                    if (validationResult.MemberNames.First() == "Email")
                    {
                        emailValidator.IsValid = false;
                        emailValidator.Text= GetEmailEx(validationResult.ErrorMessage);
                    }
                    else
                    {
                        messageValidator.IsValid = false;
                        messageValidator.Text= Resources.Frontend.NullMessage;
                    }
                }
            }
            else
            {
                Response.Redirect("Pages/SuccessPage.aspx");
            }
        }
        private string GetEmailEx(string validationResult)
        {
            switch (validationResult)
            {
                case "Empty":
                    return Resources.Frontend.NullEmail;
                case "Incorrect":
                    return Resources.Frontend.IncorectEmail;
            }

            return null;
        }
        private void FillUpPageFromResource()
        {
            emailLabel.Text = Resources.Frontend.Email;
            messageLabel.Text = Resources.Frontend.Message;
            sendMessage.Text = Resources.Frontend.ButtonSend;

        }

        private void GetCookies()
        {
            if (Request.Cookies["email"] != null) email.Text = Request.Cookies["email"].Value;
            if (Request.Cookies["message"] != null) message.Text = Request.Cookies["message"].Value;
        }
    }

}