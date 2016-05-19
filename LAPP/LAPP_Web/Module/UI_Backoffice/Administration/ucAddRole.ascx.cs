using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucAddRole : System.Web.UI.UserControl
{
    #region class Members

    LAPP_role objRole = new LAPP_role();
    LAPP_role_BAL objRoleBAL = new LAPP_role_BAL();
    LAPP_role_hist objRoleHist = new LAPP_role_hist();
    LAPP_role_histBAL objRoleHistBAL = new LAPP_role_histBAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_menu_master objMenuMaster = new LAPP_menu_master();
    LAPP_menu_master_BAL objMenuMasterBAL = new LAPP_menu_master_BAL();
    LAPP_role_menu_master_lkBAL objLkBAl = new LAPP_role_menu_master_lkBAL();

    #endregion

    #region Class Property

    public string Email
    {
        get
        {
            if (ViewState["Email"] != null)
            {
                return (ViewState["Email"]).ToString();
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["Email"] = value;
        }
    }
    public int Role_ID
    {
        get
        {
            if (ViewState["Role_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Role_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Role_ID"] = value;
        }
    }

    #endregion

    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGroupType();

        }
    }

    private void BindGroupType()
    {
        ddlGroupType.Items.Clear();
        ddlGroupType.SelectedValue = null;

        ddlGroupType.Items.Insert(0, new ListItem("Select", "-1"));
        ddlGroupType.Items.Insert(1, new ListItem(eRoleType.Administrator.ToString(), ((int)eRoleType.Administrator).ToString()));
        ddlGroupType.Items.Insert(2, new ListItem(eRoleType.Staff.ToString(), ((int)eRoleType.Staff).ToString()));
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            Save();

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "UcAddRole.ascx.cs btnSave_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }


    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UI/Role.aspx", false);
    }

    #endregion

    #region Public Methods

    public void SaveTreeView(int Role_ID)
    {
        try
        {

            objLkBAl.Delete_LAPP_role_menu_master_lk_By_Role_ID(this.Role_ID);
            TreeView tv = tvPermission;


            foreach (TreeNode tn1 in tv.Nodes)
            {
                LAPP_role_menu_master_lk objMenuLk1 = new LAPP_role_menu_master_lk();


                bool IsL1Child = Convert.ToBoolean(tn1.ImageToolTip);

                if (IsL1Child)
                {
                    objMenuLk1.LAPP_Menu_Master_Id = Convert.ToInt32(tn1.Value);
                    objMenuLk1.LAPP_Role_Id = this.Role_ID;
                    objMenuLk1.F = true;
                    objMenuLk1.C = true;
                    objMenuLk1.R = true;
                    objMenuLk1.U = true;
                    objMenuLk1.D = true;
                    objLkBAl.Save_LAPP_role_menu_master_lk(objMenuLk1);


                    ProcessLevelTwo(tn1);


                }
                else
                {
                    objMenuLk1 = new LAPP_role_menu_master_lk();
                    objMenuLk1.LAPP_Menu_Master_Id = Convert.ToInt32(tn1.Value);
                    objMenuLk1.LAPP_Role_Id = this.Role_ID;
                    foreach (TreeNode tn2 in tn1.ChildNodes)
                    {
                        if (tn2.Checked)
                        {
                            if (tn2.Value.ToLower().Trim() == "full")
                            {
                                objMenuLk1.F = true;
                            }
                            else if (tn2.Value.ToLower().Trim() == "create")
                            {
                                objMenuLk1.C = true;
                            }
                            else if (tn2.Value.ToLower().Trim() == "read")
                            {
                                objMenuLk1.R = true;
                            }
                            else if (tn2.Value.ToLower().Trim() == "update")
                            {
                                objMenuLk1.U = true;
                            }
                            else if (tn2.Value.ToLower().Trim() == "delete")
                            {
                                objMenuLk1.D = true;
                            }

                        }
                        else
                        {
                            if (tn2.Value.ToLower().Trim() == "full")
                            {
                                objMenuLk1.F = false;
                            }
                            else if (tn2.Value.ToLower().Trim() == "create")
                            {
                                objMenuLk1.C = false;
                            }
                            else if (tn2.Value.ToLower().Trim() == "read")
                            {
                                objMenuLk1.R = false;
                            }
                            else if (tn2.Value.ToLower().Trim() == "update")
                            {
                                objMenuLk1.U = false;
                            }
                            else if (tn2.Value.ToLower().Trim() == "delete")
                            {
                                objMenuLk1.D = false;
                            }
                        }


                    }
                    objLkBAl.Save_LAPP_role_menu_master_lk(objMenuLk1);

                }
                //if (tn1.Depth == 2)
                //{
                //    if (tn1.ChildNodes.Count == 0)
                //    {
                //        //objMenuLk = new LAPP_role_menu_master_lk();
                //        //objMenuLk.LAPP_menu_master_id = Convert.ToInt32(tn1.Parent.Value);
                //        //objMenuLk.full = tn1.Parent.ChildNodes[0].Checked;
                //        //objMenuLk.c = tn1.Parent.ChildNodes[1].Checked;
                //        //objMenuLk.r = tn1.Parent.ChildNodes[2].Checked;
                //        //objMenuLk.u = tn1.Parent.ChildNodes[3].Checked;
                //        //objMenuLk.d = tn1.Parent.ChildNodes[4].Checked;
                //        //objLkBAl.Save_LAPP_role_menu_master_lk(objMenuLk);
                //    }
                //    else
                //    {


                //    }
                //}
                //else if (tn1.Depth == 1)
                //{
                //    if (tn1.ChildNodes.Count == 0)
                //    {
                //        //objMenuLk = new LAPP_role_menu_master_lk();
                //        //objMenuLk.LAPP_menu_master_id = Convert.ToInt32(tn1.Parent.Value);
                //        //objMenuLk.full = tn1.Parent.ChildNodes[0].Checked;
                //        //objMenuLk.c = tn1.Parent.ChildNodes[1].Checked;
                //        //objMenuLk.r = tn1.Parent.ChildNodes[2].Checked;
                //        //objMenuLk.u = tn1.Parent.ChildNodes[3].Checked;
                //        //objMenuLk.d = tn1.Parent.ChildNodes[4].Checked;
                //        //objLkBAl.Save_LAPP_role_menu_master_lk(objMenuLk);
                //    }
                //    else
                //    {


                //    }
                //}


            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "UcAddRole.ascx.cs SaveTreeView";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void ProcessLevelThree(TreeNode tnL2)
    {
        try
        {
            LAPP_role_menu_master_lk objMenuLk3 = new LAPP_role_menu_master_lk();
            foreach (TreeNode tnL3 in tnL2.ChildNodes)
            {
                bool IsL3Child = Convert.ToBoolean(tnL3.ImageToolTip);

                if (IsL3Child)
                {
                    objMenuLk3.LAPP_Menu_Master_Id = Convert.ToInt32(tnL2.Value);
                    objMenuLk3.LAPP_Role_Id = this.Role_ID;

                    objMenuLk3.F = true;
                    objMenuLk3.C = true;
                    objMenuLk3.R = true;
                    objMenuLk3.U = true;
                    objMenuLk3.D = true;
                    objLkBAl.Save_LAPP_role_menu_master_lk(objMenuLk3);
                }
                else
                {
                    objMenuLk3 = new LAPP_role_menu_master_lk();
                    objMenuLk3.LAPP_Menu_Master_Id = Convert.ToInt32(tnL3.Value);
                    objMenuLk3.LAPP_Role_Id = this.Role_ID;
                    foreach (TreeNode tn4 in tnL3.ChildNodes)
                    {
                        if (tn4.Checked)
                        {
                            if (tn4.Value.ToLower().Trim() == "full")
                            {
                                objMenuLk3.F = true;
                            }
                            else if (tn4.Value.ToLower().Trim() == "create")
                            {
                                objMenuLk3.C = true;
                            }
                            else if (tn4.Value.ToLower().Trim() == "read")
                            {
                                objMenuLk3.R = true;
                            }
                            else if (tn4.Value.ToLower().Trim() == "update")
                            {
                                objMenuLk3.U = true;
                            }
                            else if (tn4.Value.ToLower().Trim() == "delete")
                            {
                                objMenuLk3.D = true;
                            }

                        }
                        else
                        {
                            if (tn4.Value.ToLower().Trim() == "full")
                            {
                                objMenuLk3.F = false;
                            }
                            else if (tn4.Value.ToLower().Trim() == "create")
                            {
                                objMenuLk3.C = false;
                            }
                            else if (tn4.Value.ToLower().Trim() == "read")
                            {
                                objMenuLk3.R = false;
                            }
                            else if (tn4.Value.ToLower().Trim() == "update")
                            {
                                objMenuLk3.U = false;
                            }
                            else if (tn4.Value.ToLower().Trim() == "delete")
                            {
                                objMenuLk3.D = false;
                            }
                        }


                    }
                    objLkBAl.Save_LAPP_role_menu_master_lk(objMenuLk3);

                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "UcAddRole.ascx.cs ProcessLevelThree";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void ProcessLevelTwo(TreeNode tn1)
    {
        try
        {
            LAPP_role_menu_master_lk objMenuLk2 = new LAPP_role_menu_master_lk();

            foreach (TreeNode tnL2 in tn1.ChildNodes)
            {
                bool IsL2Child = Convert.ToBoolean(tnL2.ImageToolTip);

                if (IsL2Child)
                {
                    objMenuLk2.LAPP_Menu_Master_Id = Convert.ToInt32(tnL2.Value);
                    objMenuLk2.LAPP_Role_Id = this.Role_ID;

                    objMenuLk2.F = true;
                    objMenuLk2.C = true;
                    objMenuLk2.R = true;
                    objMenuLk2.U = true;
                    objMenuLk2.D = true;
                    objLkBAl.Save_LAPP_role_menu_master_lk(objMenuLk2);


                    ProcessLevelThree(tnL2);
                }
                else
                {
                    objMenuLk2 = new LAPP_role_menu_master_lk();
                    objMenuLk2.LAPP_Menu_Master_Id = Convert.ToInt32(tnL2.Value);
                    objMenuLk2.LAPP_Role_Id = this.Role_ID;
                    foreach (TreeNode tn2 in tnL2.ChildNodes)
                    {
                        if (tn2.Checked)
                        {
                            if (tn2.Value.ToLower().Trim() == "full")
                            {
                                objMenuLk2.F = true;
                            }
                            else if (tn2.Value.ToLower().Trim() == "create")
                            {
                                objMenuLk2.C = true;
                            }
                            else if (tn2.Value.ToLower().Trim() == "read")
                            {
                                objMenuLk2.R = true;
                            }
                            else if (tn2.Value.ToLower().Trim() == "update")
                            {
                                objMenuLk2.U = true;
                            }
                            else if (tn2.Value.ToLower().Trim() == "delete")
                            {
                                objMenuLk2.D = true;
                            }

                        }
                        else
                        {
                            if (tn2.Value.ToLower().Trim() == "full")
                            {
                                objMenuLk2.F = false;
                            }
                            else if (tn2.Value.ToLower().Trim() == "create")
                            {
                                objMenuLk2.C = false;
                            }
                            else if (tn2.Value.ToLower().Trim() == "read")
                            {
                                objMenuLk2.R = false;
                            }
                            else if (tn2.Value.ToLower().Trim() == "update")
                            {
                                objMenuLk2.U = false;
                            }
                            else if (tn2.Value.ToLower().Trim() == "delete")
                            {
                                objMenuLk2.D = false;
                            }
                        }


                    }
                    objLkBAl.Save_LAPP_role_menu_master_lk(objMenuLk2);

                }

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "UcAddRole.ascx.cs ProcessLevelTwo";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public LAPP_exception_log Fetchlog()
    {
        objExLog.User_Id = UIHelper.UserIDBySession();
        objExLog.Url = string.Empty;
        objExLog.Reference_Type_Id = string.Empty;
        objExLog.Reference_Id = 1;
        objExLog.Thread = "error occured";
        objExLog.Date = DateTime.Now;
        objExLog.Level = "Low";
        objExLog.Logger = "errorLogger";
        return objExLog;
    }
    public struct sPermission
    {
        public string PermissionName { get; set; }
    }
    public void BindPermissions()
    {
        try
        {
            tvPermission.DataSource = null;
            tvPermission.Nodes.Clear();
            tvPermission.DataBind();
            //Create FCRUDE
            List<sPermission> lstPermission = new List<sPermission>();
            sPermission objPermission = new sPermission();
            objPermission.PermissionName = "Full";
            lstPermission.Add(objPermission);
            objPermission = new sPermission();
            objPermission.PermissionName = "Create";
            lstPermission.Add(objPermission);
            objPermission = new sPermission();
            objPermission.PermissionName = "Read";
            lstPermission.Add(objPermission);
            objPermission = new sPermission();
            objPermission.PermissionName = "Update";
            lstPermission.Add(objPermission);

            objPermission = new sPermission();
            objPermission.PermissionName = "Delete";
            lstPermission.Add(objPermission);
            //objPermission = new sPermission();
            //objPermission.PermissionName = "Edit";
            //lstPermission.Add(objPermission);
            //end FRUDE
            List<LAPP_menu_master> lstMenuMaster = new List<LAPP_menu_master>();
            lstMenuMaster = objMenuMasterBAL.Get_All_LAPP_menu_master();
            List<LAPP_menu_master> lstMenuMaster1 = new List<LAPP_menu_master>();
            lstMenuMaster1 = lstMenuMaster.Where(x => x.LAPP_Menu_Level == 1).ToList();
            foreach (LAPP_menu_master objMenu1 in lstMenuMaster1)
            {
                TreeNode tn = new TreeNode(objMenu1.LAPP_Menu_Name);
                tn.Value = objMenu1.LAPP_Menu_Master_Id.ToString();

                //tn.ShowCheckBox = true;
                List<LAPP_menu_master> lstMenuMaster2 = new List<LAPP_menu_master>();
                lstMenuMaster2 = lstMenuMaster.Where(x => x.LAPP_Parrent_Id == objMenu1.LAPP_Menu_Master_Id).ToList();

                if (lstMenuMaster2 != null && lstMenuMaster2.Count > 0)
                {
                    tn.ImageToolTip = "true";
                    foreach (LAPP_menu_master objMenu2 in lstMenuMaster2)
                    {
                        if (objMenu2.LAPP_Menu_Level == 2)
                        {
                            TreeNode tn2 = new TreeNode(objMenu2.LAPP_Menu_Name);
                            //tn2.ShowCheckBox = true;
                            tn2.Value = objMenu2.LAPP_Menu_Master_Id.ToString();
                            List<LAPP_menu_master> lstMenuMaster3 = new List<LAPP_menu_master>();
                            lstMenuMaster3 = lstMenuMaster.Where(x => x.LAPP_Parrent_Id == objMenu2.LAPP_Menu_Master_Id).ToList();
                            if (lstMenuMaster3 != null && lstMenuMaster3.Count > 0)
                            {
                                tn2.ImageToolTip = "true";
                                foreach (LAPP_menu_master objMenu3 in lstMenuMaster3)
                                {
                                    if (objMenu3.LAPP_Menu_Level == 3)
                                    {
                                        TreeNode tn3 = new TreeNode(objMenu3.LAPP_Menu_Name);
                                        tn3.Value = objMenu3.LAPP_Menu_Master_Id.ToString();
                                        //tn3.ShowCheckBox = true;
                                        tn3.ImageToolTip = "false";
                                        foreach (sPermission objPermission1 in lstPermission)
                                        {
                                            TreeNode tn5 = new TreeNode(objPermission1.PermissionName);
                                            tn5.ShowCheckBox = true;
                                            tn3.ChildNodes.Add(tn5);
                                            //tn3.ExpandAll();
                                        }
                                        tn2.ChildNodes.Add(tn3);
                                    }

                                }
                            }
                            else
                            {
                                tn2.ImageToolTip = "false";
                                foreach (sPermission objPermission1 in lstPermission)
                                {
                                    TreeNode tn5 = new TreeNode(objPermission1.PermissionName);
                                    tn5.ShowCheckBox = true;
                                    tn2.ChildNodes.Add(tn5);
                                    // tn2.ExpandAll();
                                }
                            }
                            tn.ChildNodes.Add(tn2);
                        }

                    }

                }
                else
                {
                    tn.ImageToolTip = "false";

                    foreach (sPermission objPermission1 in lstPermission)
                    {
                        TreeNode tn5 = new TreeNode(objPermission1.PermissionName);
                        tn5.ShowCheckBox = true;
                        tn.ChildNodes.Add(tn5);
                        //tn.ExpandAll();
                    }
                }
                tvPermission.Nodes.Add(tn);
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "UcAddRole.ascx.cs BindPermissions";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void FillPermissions()
    {
        try
        {
            tvPermission.DataSource = null;
            tvPermission.Nodes.Clear();
            tvPermission.DataBind();
            //Create FCRUDE
            if (this.Role_ID > 0)
            {
                List<sPermission> lstPermission = new List<sPermission>();
                sPermission objPermission = new sPermission();
                objPermission.PermissionName = "Full";
                lstPermission.Add(objPermission);
                objPermission = new sPermission();
                objPermission.PermissionName = "Create";
                lstPermission.Add(objPermission);
                objPermission = new sPermission();
                objPermission.PermissionName = "Read";
                lstPermission.Add(objPermission);
                objPermission = new sPermission();
                objPermission.PermissionName = "Update";
                lstPermission.Add(objPermission);

                objPermission = new sPermission();
                objPermission.PermissionName = "Delete";
                lstPermission.Add(objPermission);
                //objPermission = new sPermission();
                //objPermission.PermissionName = "Edit";
                //lstPermission.Add(objPermission);
                //end FRUDE
                List<LAPP_menu_master> lstMenuMaster = new List<LAPP_menu_master>();
                lstMenuMaster = objMenuMasterBAL.Get_All_LAPP_menu_master();
                List<LAPP_menu_master> lstMenuMaster1 = new List<LAPP_menu_master>();
                lstMenuMaster1 = lstMenuMaster.Where(x => x.LAPP_Menu_Level == 1).ToList();
                foreach (LAPP_menu_master objMenu1 in lstMenuMaster1)
                {
                    TreeNode tn = new TreeNode(objMenu1.LAPP_Menu_Name);
                    tn.Value = objMenu1.LAPP_Menu_Master_Id.ToString();

                    //tn.ShowCheckBox = true;
                    List<LAPP_menu_master> lstMenuMaster2 = new List<LAPP_menu_master>();
                    lstMenuMaster2 = lstMenuMaster.Where(x => x.LAPP_Parrent_Id == objMenu1.LAPP_Menu_Master_Id).ToList();

                    if (lstMenuMaster2 != null && lstMenuMaster2.Count > 0)
                    {
                        tn.ImageToolTip = "true";
                        foreach (LAPP_menu_master objMenu2 in lstMenuMaster2)
                        {
                            if (objMenu2.LAPP_Menu_Level == 2)
                            {
                                TreeNode tn2 = new TreeNode(objMenu2.LAPP_Menu_Name);
                                //tn2.ShowCheckBox = true;
                                tn2.Value = objMenu2.LAPP_Menu_Master_Id.ToString();
                                List<LAPP_menu_master> lstMenuMaster3 = new List<LAPP_menu_master>();
                                lstMenuMaster3 = lstMenuMaster.Where(x => x.LAPP_Parrent_Id == objMenu2.LAPP_Menu_Master_Id).ToList();
                                if (lstMenuMaster3 != null && lstMenuMaster3.Count > 0)
                                {
                                    tn2.ImageToolTip = "true";
                                    foreach (LAPP_menu_master objMenu3 in lstMenuMaster3)
                                    {
                                        if (objMenu3.LAPP_Menu_Level == 3)
                                        {
                                            TreeNode tn3 = new TreeNode(objMenu3.LAPP_Menu_Name);
                                            tn3.Value = objMenu3.LAPP_Menu_Master_Id.ToString();
                                            //tn3.ShowCheckBox = true;
                                            tn3.ImageToolTip = "false";
                                            LAPP_role_menu_master_lk objLk = new LAPP_role_menu_master_lk();
                                            LAPP_role_menu_master_lkBAL objLkBAL = new LAPP_role_menu_master_lkBAL();
                                            objLk = null;
                                            objLk = objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(Convert.ToInt32(tn3.Value), this.Role_ID);
                                            if (objLk != null)
                                            {
                                                foreach (sPermission objPermission1 in lstPermission)
                                                {
                                                    TreeNode tn5 = new TreeNode(objPermission1.PermissionName);
                                                    tn5.ShowCheckBox = true;
                                                    if (objPermission1.PermissionName.ToLower().Trim() == "full")
                                                    {
                                                        if (objLk.F)
                                                        {
                                                            tn5.Checked = true;
                                                        }
                                                        else
                                                        {
                                                            tn5.Checked = false;
                                                        }
                                                    }
                                                    else if (objPermission1.PermissionName.ToLower().Trim() == "create")
                                                    {
                                                        if (objLk.C)
                                                        {
                                                            tn5.Checked = true;
                                                        }
                                                        else
                                                        {
                                                            tn5.Checked = false;
                                                        }
                                                    }
                                                    else if (objPermission1.PermissionName.ToLower().Trim() == "read")
                                                    {
                                                        if (objLk.R)
                                                        {
                                                            tn5.Checked = true;
                                                        }
                                                        else
                                                        {
                                                            tn5.Checked = false;
                                                        }
                                                    }
                                                    else if (objPermission1.PermissionName.ToLower().Trim() == "update")
                                                    {
                                                        if (objLk.U)
                                                        {
                                                            tn5.Checked = true;
                                                        }
                                                        else
                                                        {
                                                            tn5.Checked = false;
                                                        }
                                                    }
                                                    else if (objPermission1.PermissionName.ToLower().Trim() == "delete")
                                                    {
                                                        if (objLk.D)
                                                        {
                                                            tn5.Checked = true;
                                                        }
                                                        else
                                                        {
                                                            tn5.Checked = false;
                                                        }
                                                    }
                                                    tn3.ChildNodes.Add(tn5);

                                                }
                                                // tn2.ExpandAll();

                                            }
                                            else
                                            {
                                                foreach (sPermission objPermission1 in lstPermission)
                                                {
                                                    TreeNode tn5 = new TreeNode(objPermission1.PermissionName);
                                                    tn5.ShowCheckBox = true;
                                                    if (objPermission1.PermissionName.ToLower().Trim() == "full")
                                                    {
                                                        tn5.Checked = false;
                                                    }
                                                    else if (objPermission1.PermissionName.ToLower().Trim() == "create")
                                                    {
                                                        tn5.Checked = false;
                                                    }
                                                    else if (objPermission1.PermissionName.ToLower().Trim() == "read")
                                                    {
                                                        tn5.Checked = false;
                                                    }
                                                    else if (objPermission1.PermissionName.ToLower().Trim() == "update")
                                                    {
                                                        tn5.Checked = false;
                                                    }
                                                    else if (objPermission1.PermissionName.ToLower().Trim() == "delete")
                                                    {

                                                        tn5.Checked = false;

                                                    }
                                                    tn3.ChildNodes.Add(tn5);

                                                }
                                            }
                                            tn2.ChildNodes.Add(tn3);
                                        }

                                    }
                                }
                                else
                                {
                                    tn2.ImageToolTip = "false";
                                    LAPP_role_menu_master_lk objLk = new LAPP_role_menu_master_lk();
                                    LAPP_role_menu_master_lkBAL objLkBAL = new LAPP_role_menu_master_lkBAL();
                                    objLk = null;
                                    objLk = objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(Convert.ToInt32(tn2.Value), this.Role_ID);
                                    if (objLk != null)
                                    {
                                        foreach (sPermission objPermission1 in lstPermission)
                                        {
                                            TreeNode tn5 = new TreeNode(objPermission1.PermissionName);
                                            tn5.ShowCheckBox = true;
                                            if (objPermission1.PermissionName.ToLower().Trim() == "full")
                                            {
                                                if (objLk.F)
                                                {
                                                    tn5.Checked = true;
                                                }
                                                else
                                                {
                                                    tn5.Checked = false;
                                                }
                                            }
                                            else if (objPermission1.PermissionName.ToLower().Trim() == "create")
                                            {
                                                if (objLk.C)
                                                {
                                                    tn5.Checked = true;
                                                }
                                                else
                                                {
                                                    tn5.Checked = false;
                                                }
                                            }
                                            else if (objPermission1.PermissionName.ToLower().Trim() == "read")
                                            {
                                                if (objLk.R)
                                                {
                                                    tn5.Checked = true;
                                                }
                                                else
                                                {
                                                    tn5.Checked = false;
                                                }
                                            }
                                            else if (objPermission1.PermissionName.ToLower().Trim() == "update")
                                            {
                                                if (objLk.U)
                                                {
                                                    tn5.Checked = true;
                                                }
                                                else
                                                {
                                                    tn5.Checked = false;
                                                }
                                            }
                                            else if (objPermission1.PermissionName.ToLower().Trim() == "delete")
                                            {
                                                if (objLk.D)
                                                {
                                                    tn5.Checked = true;
                                                }
                                                else
                                                {
                                                    tn5.Checked = false;
                                                }
                                            }
                                            tn2.ChildNodes.Add(tn5);

                                        }
                                        // tn2.ExpandAll();

                                    }
                                    else
                                    {
                                        foreach (sPermission objPermission1 in lstPermission)
                                        {
                                            TreeNode tn5 = new TreeNode(objPermission1.PermissionName);
                                            tn5.ShowCheckBox = true;
                                            if (objPermission1.PermissionName.ToLower().Trim() == "full")
                                            {
                                                tn5.Checked = false;
                                            }
                                            else if (objPermission1.PermissionName.ToLower().Trim() == "create")
                                            {
                                                tn5.Checked = false;
                                            }
                                            else if (objPermission1.PermissionName.ToLower().Trim() == "read")
                                            {
                                                tn5.Checked = false;
                                            }
                                            else if (objPermission1.PermissionName.ToLower().Trim() == "update")
                                            {
                                                tn5.Checked = false;
                                            }
                                            else if (objPermission1.PermissionName.ToLower().Trim() == "delete")
                                            {

                                                tn5.Checked = false;

                                            }
                                            tn2.ChildNodes.Add(tn5);

                                        }
                                    }
                                }
                                tn.ChildNodes.Add(tn2);
                            }

                        }

                    }
                    else
                    {
                        tn.ImageToolTip = "false";
                        LAPP_role_menu_master_lk objLk = new LAPP_role_menu_master_lk();
                        LAPP_role_menu_master_lkBAL objLkBAL = new LAPP_role_menu_master_lkBAL();
                        objLk = null;
                        objLk = objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(Convert.ToInt32(tn.Value), this.Role_ID);
                        if (objLk != null)
                        {
                            foreach (sPermission objPermission1 in lstPermission)
                            {
                                TreeNode tn5 = new TreeNode(objPermission1.PermissionName);
                                tn5.ShowCheckBox = true;
                                if (objPermission1.PermissionName.ToLower().Trim() == "full")
                                {
                                    if (objLk.F)
                                    {
                                        tn5.Checked = true;
                                    }
                                    else
                                    {
                                        tn5.Checked = false;
                                    }
                                }
                                else if (objPermission1.PermissionName.ToLower().Trim() == "create")
                                {
                                    if (objLk.C)
                                    {
                                        tn5.Checked = true;
                                    }
                                    else
                                    {
                                        tn5.Checked = false;
                                    }
                                }
                                else if (objPermission1.PermissionName.ToLower().Trim() == "read")
                                {
                                    if (objLk.R)
                                    {
                                        tn5.Checked = true;
                                    }
                                    else
                                    {
                                        tn5.Checked = false;
                                    }
                                }
                                else if (objPermission1.PermissionName.ToLower().Trim() == "update")
                                {
                                    if (objLk.U)
                                    {
                                        tn5.Checked = true;
                                    }
                                    else
                                    {
                                        tn5.Checked = false;
                                    }
                                }
                                else if (objPermission1.PermissionName.ToLower().Trim() == "delete")
                                {
                                    if (objLk.D)
                                    {
                                        tn5.Checked = true;
                                    }
                                    else
                                    {
                                        tn5.Checked = false;
                                    }
                                }
                                tn.ChildNodes.Add(tn5);

                            }
                            // tn2.ExpandAll();

                        }
                        else
                        {
                            foreach (sPermission objPermission1 in lstPermission)
                            {
                                TreeNode tn5 = new TreeNode(objPermission1.PermissionName);
                                tn5.ShowCheckBox = true;
                                if (objPermission1.PermissionName.ToLower().Trim() == "full")
                                {
                                    tn5.Checked = false;
                                }
                                else if (objPermission1.PermissionName.ToLower().Trim() == "create")
                                {
                                    tn5.Checked = false;
                                }
                                else if (objPermission1.PermissionName.ToLower().Trim() == "read")
                                {
                                    tn5.Checked = false;
                                }
                                else if (objPermission1.PermissionName.ToLower().Trim() == "update")
                                {
                                    tn5.Checked = false;
                                }
                                else if (objPermission1.PermissionName.ToLower().Trim() == "delete")
                                {

                                    tn5.Checked = false;

                                }
                                tn.ChildNodes.Add(tn5);

                            }
                        }
                    }
                    tvPermission.Nodes.Add(tn);
                }
            }
            tvPermission.ExpandAll();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "UcAddRole.ascx.cs FillPermissions";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void Save()
    {
        try
        {

            objRole = FetchValueFromLAPP_role();
            if (objRole != null)
            {
                int res = 0;
                if (this.Role_ID > 0)
                {
                    objRole.LAPP_Role_Id = this.Role_ID;
                    res = objRoleBAL.Update_LAPP_role(objRole, this.Role_ID);
                    objRoleHist = FetchRoleHistory();
                    if (objRoleHist != null)
                    {
                        objRoleHist.Action = "U";
                        objRoleHist.Is_Deleted = objRole.Is_Deleted;
                        objRoleHist.LAPP_Role_Id = objRole.LAPP_Role_Id;
                        objRoleHistBAL.Save_LAPP_role_hist(objRoleHist);
                    }
                }
                else
                {
                    res = objRoleBAL.Save_LAPP_role(objRole);
                    if (res > 0)
                    {
                        objRoleHist = FetchRoleHistory();
                        if (objRoleHist != null)
                        {
                            objRoleHist.Action = "I";
                            objRoleHist.Is_Deleted = objRole.Is_Deleted;
                            objRoleHist.LAPP_Role_Id = res;
                            objRoleHistBAL.Save_LAPP_role_hist(objRoleHist);
                        }
                    }
                }

                if (this.Role_ID > 0)
                {
                    MessageBox.Show(this.Page, Messages.UpdateSuccess());
                }
                else
                {
                    MessageBox.Show(this.Page, Messages.SaveSuccess());
                    this.Role_ID = res;

                }
                if (this.Role_ID > 0)
                {
                    SaveTreeView(this.Role_ID);
                }
            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "UcAddRole.ascx.cs Save";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void FillControl()
    {
        try
        {
            objRole = objRoleBAL.Get_LAPP_role_BY_ID(Role_ID);
            if (objRole != null)
            {
                txtDescription.Text = objRole.LAPP_Role_Description;
                txtName.Text = objRole.LAPP_Role_Name;
                ddlGroupType.SelectedValue = objRole.Role_Type_ID.ToString();
                FillPermissions();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "UcAddRole.ascx.cs FillControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void FillCClearControlontrol()
    {

        txtDescription.Text = "";
        txtName.Text = "";
        this.Role_ID = 0;
    }
    #endregion

    #region Private Methods

    private LAPP_role FetchValueFromLAPP_role()
    {
        try
        {
            if (this.Role_ID > 0)
            {
                objRole = objRoleBAL.Get_LAPP_role_BY_ID(this.Role_ID);
                objRole.DTS = DateTime.Now;
                objRole.LAPP_Role_Description = txtDescription.Text.Trim();
                objRole.LAPP_Role_Name = txtName.Text.Trim();
                objRole.Role_Type_ID = Convert.ToInt32(ddlGroupType.SelectedValue);
                objRole.Is_Active = true;
                objRole.Is_Deleted = false;
            }
            else
            {
                objRole = new LAPP_role();
                objRole.DTS = DateTime.Now;
                objRole.Created_On = DateTime.Now;
                objRole.Role_Type = eRoleType.Staff.ToString();
                objRole.Role_Type_ID = Convert.ToInt32(ddlGroupType.SelectedValue);
                objRole.Editble = true;
                objRole.LAPP_Role_Description = txtDescription.Text.Trim();
                objRole.LAPP_Role_Name = txtName.Text.Trim();
                objRole.Is_Active = true;
                objRole.Is_Deleted = false;
                objRole.Created_By = UIHelper.UserIDBySession();

            }
        }

        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "UcAddRole.ascx.cs FetchValueFromLAPP_role";
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

        return objRole;
    }
    private LAPP_role_hist FetchRoleHistory()
    {
        objRoleHist = new LAPP_role_hist();
        objRoleHist.LAPP_Role_Description = txtDescription.Text.Trim();
        objRoleHist.LAPP_Role_Name = txtName.Text.Trim();
        objRoleHist.Is_Active = true;
        objRoleHist.Created_On = DateTime.Now;
        objRoleHist.DTS = DateTime.Now;
        objRoleHist.Created_By = UIHelper.UserIDBySession();
        objRoleHist.Modified_By = UIHelper.UserIDBySession();
        objRoleHist.Modified_DTS = DateTime.Now;
        return objRoleHist;
    }

    #endregion
}