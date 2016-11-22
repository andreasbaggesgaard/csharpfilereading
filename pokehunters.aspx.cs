using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections;

namespace csharp3rdHandin
{
    public partial class pokehunters : System.Web.UI.Page
    {
        ArrayList PokehunterList;

        protected void Page_Load(object sender, EventArgs e)
        {
       
            try
            {       
                if (Application["AllPokehunters"] == null)
                {
                    PokehunterList = new ArrayList();
                    Application["AllPokehunters"] = PokehunterList;                    
                }

                PokehunterList = (ArrayList)Application["AllPokehunters"];

                if (PokehunterList.Count == 0)
                {
                    LabelPokehunters.Text = "No Pokehunters";
                }
                else
                {
                    ListBoxPokehunters.Items.Clear();
                    for (int i = 0; i < PokehunterList.Count; i++)
                    {
                        ListBoxPokehunters.Items.Add(PokehunterList[i].ToString());
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
                PokehunterList = (ArrayList)Application["AllPokehunters"];
                FileUtility.WriteFile(PokehunterList, Server.MapPath("~/App_Data/pokehunters.ser"));
                LabelMessage.Text = "Information has been saved in file";         
        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("pokehuntersCreate.aspx");
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("pokehuntersUpdate.aspx");
        }

        protected void ButtonRead_Click(object sender, EventArgs e)
        {
            ListBoxPokehunters.Items.Clear();
            try
            {
                PokehunterList = FileUtility.ReadFile(Server.MapPath("~/App_Data/pokehunters.ser"));
                Application["AllPokehunters"] = PokehunterList;
                if (PokehunterList.Count == 0)
                {
                    LabelPokehunters.Text = "No Pokehunters in file";
                }
                else
                {
                    LabelPokehunters.Text = "Pokehunters from file\n";
                    for (int i = 0; i < PokehunterList.Count; i++)
                    {
                        ListBoxPokehunters.Items.Add(PokehunterList[i].ToString() + "\n");
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
            Response.Redirect("Index.aspx");
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("pokehuntersDelete.aspx");
        }
    }
}