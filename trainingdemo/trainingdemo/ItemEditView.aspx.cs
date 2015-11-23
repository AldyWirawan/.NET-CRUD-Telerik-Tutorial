using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using training.data;

public partial class trainingdemo_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        if (!IsPostBack && Request.QueryString["id"] != null)
        {
            String id = Request.QueryString["id"];
            HidParentID.Value = id;
            _GetParentInfo(id);
        }
        //DivXtremax.Visible = false;
    }

    private void _GetParentInfo(string id)
    {
        int ParentID = Convert.ToInt32(id);
        using (trainingEntities DBContext = new trainingEntities())
        {
            var parent = DBContext.Parents.Where(a => a.ParentID == ParentID).FirstOrDefault();
            if (parent != null)
            {
                TxtName.Text = parent.Name;
                TxtAge.Text = parent.Age.ToString();
                if (RblstGender.Items.FindByValue(parent.Gender) != null)
                {
                    RblstGender.Items.FindByValue(parent.Gender).Selected = true;
                }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (trainingEntities DBContext = new trainingEntities())

        {
            Parent parent = null;
            if (HidParentID.Value != "")
            {
                int ParentID = Convert.ToInt32(HidParentID.Value);
                parent = DBContext.Parents.Where(a => a.ParentID == ParentID).FirstOrDefault();
                if (parent != null)
                {
                    parent.Name = TxtName.Text;
                    parent.Age = Convert.ToInt32(TxtAge.Text);
                    parent.Gender = RblstGender.SelectedValue;
                }
                else
                {
                    //LblMessage.Text = "Fail to load parent info.";
                    return;
                }
            }
            else
            {
                parent = new Parent()
                {
                    ParentID = Convert.ToInt32(TxtID.Text),
                    Name = TxtName.Text,
                    Age = Convert.ToInt32(TxtAge.Text),
                    Gender = RblstGender.SelectedValue
                };
                DBContext.Parents.Add(parent);
            }
            DBContext.SaveChanges();
        }
        Response.Redirect("RadGridDemo.aspx");
    }
}