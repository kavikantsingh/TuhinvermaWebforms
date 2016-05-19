<%@ WebHandler Language="C#" Class="IndividualProfileImage" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LAPP.ENTITY;
using LAPP.BAL;
using LAPP.CONFIG;
using System.IO;

public class IndividualProfileImage : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        bool SaveFile = context.Request.QueryString["SaveFile"] != null ? Convert.ToBoolean(context.Request.QueryString["SaveFile"]) : false;
        string FilePath = "";// context.Request.Form["FilePathWithName"] != null ? Convert.ToString(context.Request.Form["FilePathWithName"]) : "";
        string FileName = context.Request.QueryString["name"] != null ? Convert.ToString(context.Request.QueryString["name"]) : "";
        string ApplicationNumber = context.Request.QueryString["ApplicationNumber"] != null ? Convert.ToString(context.Request.QueryString["ApplicationNumber"]) : "";
        string IndividualID = context.Request.QueryString["IndividualID"] != null ? Convert.ToString(context.Request.QueryString["IndividualID"]) : "0";
        string DocumentType = context.Request.QueryString["DocumentType"] != null ? Convert.ToString(context.Request.QueryString["DocumentType"]) : "-1";
        string DocumentTypeName = context.Request.QueryString["DocumentTypeName"] != null ? Convert.ToString(context.Request.QueryString["DocumentTypeName"]) : "";
        if (SaveFile && FileName != "")
        {
            try
            {
                LAPP_configuration objLAPP_configuration = new LAPP_configuration();

                objLAPP_configuration = Lapp_Configuration.UploadFileDirectoryPath();
                FilePath = objLAPP_configuration.Value;

                string FilePathwithName = FilePath + "\\" + ApplicationNumber + "-" + FileName;
                using (Stream output = File.OpenWrite(FilePathwithName))
                using (Stream input = context.Request.InputStream)
                {
                    byte[] buffer = new byte[context.Request.ContentLength];
                    int bytesRead;
                    while ((bytesRead = input.Read(buffer, 0, buffer.Length)) > 0)
                    {
                        output.Write(buffer, 0, bytesRead);
                    }

                    LAPP_file_holder objLAPP_file_holder = new LAPP_file_holder();
                    LAPP_file_holderBAL objLAPP_file_holderBAL = new LAPP_file_holderBAL();

                    objLAPP_file_holder = objLAPP_file_holderBAL.Get_LAPP_file_holder_Get_BY_Individual_DocType(Convert.ToInt32(IndividualID), 0);
                    if (objLAPP_file_holder != null)
                    {
                        objLAPP_file_holder.File_Name = FileName;
                        objLAPP_file_holder.File_Type = DocumentTypeName;
                        objLAPP_file_holder.File_Path = FilePathwithName;
                        objLAPP_file_holder.File_Url = FilePathwithName;
                        objLAPP_file_holder.Individual_Id = Convert.ToInt32(IndividualID);
                        objLAPP_file_holder.Modified_On = DateTime.Now;
                        objLAPP_file_holderBAL.Update_LAPP_file_holder(objLAPP_file_holder, objLAPP_file_holder.File_Id);
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}