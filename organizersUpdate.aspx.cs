using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections;

namespace csharp3rdHandin
{
    public partial class organizersUpdate : System.Web.UI.Page
    {
        ArrayList Organizerlist;
        protected void Page_Load(object sender, EventArgs e)
        {
            loadListBox();
        }
        public void loadListBox()
        {
            ListBoxOrganizers.Items.Clear();

            try
            {
                Organizerlist = FileUtility.ReadFile(Server.MapPath("~/App_Data/organizers.ser"));
                Application["AllOrganizers"] = Organizerlist;
                if (Organizerlist.Count == 0)
                {
                    LabelMessage.Text = "No Organizers in file";
                }
                else
                {
                    for (int i = 0; i < Organizerlist.Count; i++)
                    {
                        ListBoxOrganizers.Items.Add(Organizerlist[i].ToString() + "\n");
                    }
                }
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message;

            }
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("organizers.aspx");
        }

        protected void ButtonChangeEmail_Click(object sender, EventArgs e)
        {
            string oldEmail = TextBoxOldEmail.Text;
            string newEmail = TextBoxNewEmail.Text;

            foreach (Organizers o in Organizerlist)
            {

                if (o.Email == oldEmail)
                {
                    if (o.ChangeEmail(newEmail))
                    {
                        o.ChangeEmail(newEmail);
                        LabelMessage.Text = oldEmail + " was changed to " + newEmail;
                        Organizerlist = (ArrayList)Application["AllOrganizers"];
                        FileUtility.WriteFile(Organizerlist, Server.MapPath("~/App_Data/organizers.ser"));
                        loadListBox();
                    }
                    else
                    {
                        LabelMessage.Text = "Email must end with @poke.dk";
                    }                  
                }
                else
                {
                    continue;
                }

            }
        }
    }
}