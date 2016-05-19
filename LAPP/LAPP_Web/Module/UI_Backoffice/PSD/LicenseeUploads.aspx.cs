using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.CONFIG;
using System.IO;
using LAPP.ENTITY;
using LAPP.BAL;

 
    public partial class LicenseeUploads : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUploadApp_Click(object sender, EventArgs e)
        {
            if (fuApplicantEdit.HasFile)
            {
                string FilePath = "";
                LAPP_configuration objLAPP_configuration = new LAPP_configuration();
                objLAPP_configuration = Lapp_Configuration.UploadFileDirectoryPath();
                FilePath = objLAPP_configuration.Value;


                string FileName = fuApplicantEdit.FileName;
                string ApplicationNumber = Request.QueryString["ApplicationNumber"] != null ? Convert.ToString(Request.QueryString["ApplicationNumber"]) : "";
                string IndividualID = Request.QueryString["IndividualID"] != null ? Convert.ToString(Request.QueryString["IndividualID"]) : "0";
                string DocumentType = Request.QueryString["DocumentType"] != null ? Convert.ToString(Request.QueryString["DocumentType"]) : "-1";
                string DocumentTypeName = Request.QueryString["DocumentTypeName"] != null ? Convert.ToString(Request.QueryString["DocumentTypeName"]) : "";

                string ApplicantId = Request.QueryString["ApplicantId"] != null ? Convert.ToString(Request.QueryString["ApplicantId"]) : "0";

                try
                {
                    //if (DocumentType == "-1")
                    //{
                    //    //Please select document type
                    //    MessageBox.RunJsInUpdatePanel(this.Page, "window.parent.ShowChildMessage('" + ErrorMsgAppRequest.DocumentTypeDDLSelection + "',2);");
                    //    return;
                    //}
                    //if (DocumentHelper.IsValidateDocument(ApplicationNumber, Convert.ToInt32(DocumentType)))
                    //{
                    string msg = "";// DocumentHelper.IsValidFileToUpload(fuApplicantEdit, Convert.ToInt32(DocumentType));
                    if (string.IsNullOrEmpty(msg))
                    {
                        LAPP_file_holder objLAPP_file_holder = new LAPP_file_holder();
                        LAPP_file_holderBAL objLAPP_file_holderBAL = new LAPP_file_holderBAL();

                        // objLAPP_file_holderBAL.Delete_Profile_ImageBasedOn_ApplicationNumber(ApplicationNumber);
                        objLAPP_file_holder = new LAPP_file_holder();
                        objLAPP_file_holder.File_Name = FileName;
                        objLAPP_file_holder.Application_Number = ApplicationNumber;

                        objLAPP_file_holder.File_Type = "";
                        objLAPP_file_holder.File_Path = FilePath;
                        objLAPP_file_holder.File_Url = "";
                        objLAPP_file_holder.File_Type_Id = 0;
                        objLAPP_file_holder.Individual_Id = 0;
                        objLAPP_file_holder.Created_By = UIHelper.UserIDBySession().ToString();
                        objLAPP_file_holder.Created_On = DateTime.Now;
                        objLAPP_file_holder.Is_Active = true;
                        objLAPP_file_holder.Is_Deleted = true;
                        objLAPP_file_holder.Modified_By = "";
                        objLAPP_file_holder.Modified_On = DateTime.Now;
                        objLAPP_file_holder.Applicant_ID = 0;
                        int fileid = 0;
                        fileid = objLAPP_file_holderBAL.Save_LAPP_file_holder(objLAPP_file_holder);

                        string FileNameStr = ApplicationNumber + "-" + fileid + "-" + DocumentTypeName.Trim().Replace(" ", "-") + System.IO.Path.GetExtension(FileName);
                        string FilePathwithName = FilePath + "\\" + FileNameStr;
                        using (Stream output = File.OpenWrite(FilePathwithName))
                        using (Stream input = fuApplicantEdit.PostedFile.InputStream)
                        {
                            byte[] buffer = new byte[fuApplicantEdit.PostedFile.ContentLength];
                            int bytesRead;
                            while ((bytesRead = input.Read(buffer, 0, buffer.Length)) > 0)
                            {
                                output.Write(buffer, 0, bytesRead);
                            }


                            //
                            objLAPP_file_holder.File_Id = fileid;
                            objLAPP_file_holder.File_Name = FileNameStr;
                            objLAPP_file_holder.Application_Number = ApplicationNumber;
                            objLAPP_file_holder.Is_Reviewed = false;
                            objLAPP_file_holder.Is_Verified = false;
                            objLAPP_file_holder.File_Type = DocumentTypeName;
                            objLAPP_file_holder.File_Path = FilePathwithName;
                            objLAPP_file_holder.File_Url = FilePathwithName;
                            objLAPP_file_holder.File_Type_Id = Convert.ToInt32(DocumentType);
                            objLAPP_file_holder.Individual_Id = Convert.ToInt32(IndividualID);
                            objLAPP_file_holder.Created_By = "0";
                            objLAPP_file_holder.Created_On = DateTime.Now;
                            objLAPP_file_holder.Is_Active = true;
                            objLAPP_file_holder.Is_Deleted = false;
                            objLAPP_file_holder.Modified_By = "0";
                            objLAPP_file_holder.Office = true;
                            objLAPP_file_holder.Modified_On = DateTime.Now;

                            objLAPP_file_holder.Applicant_ID = Convert.ToInt32(ApplicantId);

                            objLAPP_file_holderBAL.Update_LAPP_file_holder(objLAPP_file_holder, objLAPP_file_holder.File_Id);
                            MessageBox.RunJsInUpdatePanel(this.Page, "$('#btnUploadLicensee',window.parent.document).trigger('click');");
                            return;

                        }
                    }
                    else
                    {
                        MessageBox.RunJsInUpdatePanel(this.Page, "window.parent.ShowChildMessageDiv('#DivMsgLicensee','" + msg + "',2);");
                        return;
                        //objResponse.Message = msg;
                        //objResponse.Result = false;
                    }
                    //}
                    //else
                    //{
                    //    MessageBox.RunJsInUpdatePanel(this.Page, "window.parent.ShowChildMessage('" + ErrorMsgAppRequest.ThisDocumentAlreadyUploaded + "',2);");
                    //    return;
                    //    //objResponse.Message = ErrorMsgAppRequest.ThisDocumentAlreadyUploaded;
                    //    //objResponse.Result = false;
                    //}
                }
                catch (Exception ex)
                {
                    //MessageBox.RunJsInUpdatePanel(this.Page, "window.parent.ShowChildMessageDiv('#DivMsgLicensee','" + ex.Message + "',2);");
                    return;
                }
            }
            else
            {
                //MessageBox.RunJsInUpdatePanel(this.Page, "window.parent.ShowChildMessageDiv('#DivMsgLicensee','" + ErrorMsgAppRequest.UploadSectionApplicantUploadFile + "',2);");
                return;
            }


        }
    }
 