using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections;

namespace csharp3rdHandin
{
    public partial class organizersDelete : System.Web.UI.Page
    {
        ArrayList Organizerlist;

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadListBox();
        }

        public void LoadListBox()
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

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            foreach (Organizers item in Organizerlist.ToArray())
            {
                if (item.Alias == TextBoxAlias.Text)
                {
                    Organizerlist.Remove(item);
                    Application["AllPokehunters"] = Organizerlist;
                    FileUtility.WriteFile(Organizerlist, Server.MapPath("~/App_Data/organizers.ser"));
                    LoadListBox();
                }
                else
                {
                    continue;
                }
            }
        }
    }
}