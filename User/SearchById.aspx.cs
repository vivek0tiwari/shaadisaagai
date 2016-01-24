using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

public partial class User_SearchById : System.Web.UI.Page
{
    Search ObjSearch = new Search();
    ExpressInterest objIntrest = new ExpressInterest();
    string LokkingFor;
    public int Add_ExpressIntrest()
    {
        objIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];
        objIntrest.Recever = lblMembetId.Text;
        objIntrest.Sending_Date = DateTime.Now;
        objIntrest.Status = 0;
        objIntrest.Msg = "Hello";
        return objIntrest.Add_ExpressInterest();
    }
    protected string GetLokkingFor()
    {
        return (Session["uid_gender"].ToString().Split('_')[1] == "Male" ? "Bried" : "Groom");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uid_gender"] != null)
            {

                if (Request.QueryString["ProfileID"] != null)
                {

                    ListView1.DataSource = ObjSearch.UserById(Session["uid_gender"].ToString().Split('_')[0], Request.QueryString["ProfileID"].ToString(),GetLokkingFor());
                    ListView1.DataBind();
                }
                else
                {
                    //Response.Redirect("UserHome.aspx");
                }
            }
            else
            {
                //Response.Redirect("UserHome.aspx");
            }
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("SearchById.aspx?ProfileID=" +txtProfileID.Text.Trim() + "&LokingFor=" + GetLokkingFor());
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

        if (e.CommandName == "ExpressInterest")
        {
            if (Session["uid_gender"] != null)
            {
                ListViewDataItem Edit = (ListViewDataItem)e.Item;
                Label lblname = (Label)Edit.FindControl("Label14");
                lblMemberName.Text = lblname.Text;
                //lblMsg.Text = "Hi \n " + lblMemberName.Text + " Please Accept My request. ";
                lblMembetId.Text = Convert.ToString(ListView1.DataKeys[Edit.DisplayIndex].Value.ToString());
                Image img = (Image)Edit.FindControl("Image2");
                Image1.ImageUrl = img.ImageUrl;
                pnlExpress.Visible = true;
                objIntrest.Recever = lblMembetId.Text;
                objIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];
                if (objIntrest.checkExpressInterest())
                {
                    btnExpressIntrest.Enabled = false;
                    lblStatus.Text = "you have Already Sended Request.";
                    ModalPopupExtender1.OkControlID = "btnExpressIntrest";

                }
                else
                {
                    btnExpressIntrest.Enabled = true;
                    ModalPopupExtender1.OkControlID = "";
                }
                ModalPopupExtender1.Show();


            }
            else
            {

                // Response.Redirect("Default.aspx");
            }
        }
    }

    protected void btnExpressIntrest_Click(object sender, EventArgs e)
    {
        try
        {
            if (!Convert.ToBoolean(Add_ExpressIntrest()))
            {
                pnlExpress.Visible = false;
                ModalPopupExtender1.Hide();
                // pnlConfirmation.Visible = true;
                //WebMsgBox.Show("Your Intrest Request Sended Successfully");
                ucMessage.ShowMessage("Your Intrest Request Sended Successfully", Message.Type.success.ToString());
            }
        }
        catch (Exception ex)
        {
            WebMsgBox.Show(ex.Message);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}