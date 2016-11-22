using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections;

namespace csharp3rdHandin
{
    public partial class organizers : System.Web.UI.Page
    {
        ArrayList Organizerlist;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Application["AllOrganizers"] == null)
                {
                    Organizerlist = new ArrayList();
                    Application["AllOrganizers"] = Organizerlist;
                }

                Organizerlist = (ArrayList)Application["AllOrganizers"];

                if (Organizerlist.Count == 0)
                {
                    LabelOrganizers.Text = "No Organizers";
                }
                else
                {
                    ListBoxOrganizers.Items.Clear();
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

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            Organizerlist = (ArrayList)Application["AllOrganizers"];
            FileUtility.WriteFile(Organizerlist, Server.MapPath("~/App_Data/organizers.ser"));
            LabelMessage.Text = "Information has been saved in file";
        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("orgranizersCreate.aspx");
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("organizersUpdate.aspx");
        }

        protected void ButtonRead_Click(object sender, EventArgs e)
        {
            ListBoxOrganizers.Items.Clear();
            try
            {
                Organizerlist = FileUtility.ReadFile(Server.MapPath("~/App_Data/organizers.ser"));
                Application["AllOrganizers"] = Organizerlist;
                if (Organizerlist.Count == 0)
                {
                    ListBoxOrganizers.Text = "No organizers in file";
                }
                else
                {
                    ListBoxOrganizers.Text = "Organizers from file\n";
                    for (int i = 0; i < Organizerlist.Count; i++)
                    {
                        ListBoxOrganizers.Items.Add(Organizerlist[i].ToString() + "\n");
                    }

                    //foreach(Person p in PokehunterList)
                    //{
                    //if (p == (Organizers)p)
                    //{
                    //    Person o = p as Organizers;

                    //    ListBoxOrganizers.Items.Add("" + o.ToString());
                    //}
                    //else
                    //{
                    //    continue;
                    //}
                    //}
                }
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message;

            }
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("organizersDelete.aspx");
        }
    }
}