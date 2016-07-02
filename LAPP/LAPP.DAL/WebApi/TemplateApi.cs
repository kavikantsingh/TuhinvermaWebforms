using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using LAPP.ENTITY;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace LAPP.DAL
{
    public class TemplateApi : BaseDAL
    {
        public List<TemplateEntity> GetAllTemplates()
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Template/GetAllTemplates";
            //string WebAPIUrl = "http://localhost:1530/api/Template/GetAllTemplates";

            return WebApiUtility.Get<IEnumerable<TemplateEntity>>(WebAPIUrl).ToList();
        }

        public TemplateEntity GetTemplateById(int id)
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Template/GetTemplateById/?id=" + id;
            //string WebAPIUrl = "http://localhost:1530/api/Template/GetTemplateById/?id=" + id;

            return WebApiUtility.Get<TemplateEntity>(WebAPIUrl);
        }

        public void DeleteTemplateById(int id)
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Template/DeleteTemplateById";
            //string WebAPIUrl = "http://localhost:1530/api/Template/DeleteTemplateById";

            WebApiUtility.Post<TemplateEntity>(WebAPIUrl, new { id = id });
        }

        public void UpdateTemplate(TemplateEntity templateEntity)
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Template/UpdateTemplate";
            //string WebAPIUrl = "http://localhost:1530/api/Template/UpdateTemplate";

            WebApiUtility.Post<TemplateEntity>(WebAPIUrl, templateEntity);
        }

        public int CreateTemplate(TemplateEntity templateEntity)
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Template/CreateTemplate";
            //string WebAPIUrl = "http://localhost:1530/api/Template/CreateTemplate";

            return WebApiUtility.Post<int>(WebAPIUrl, templateEntity);
        }

        public List<TemplateEntity> GetAllTemplatesGetByAppTyId(int applicationTy)
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Template/GetAllTemplatesGetByAppTyId/?applicationTy=" + applicationTy;
            //string WebAPIUrl = "http://localhost:1530/api/Template/GetAllTemplatesGetByAppTyId/?applicationTy=" + applicationTy;

            return WebApiUtility.Get<IEnumerable<TemplateEntity>>(WebAPIUrl).ToList();
        }

        public List<TemplateEntity> GetAllTemplatesGetByTemplateName(string tempName)
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Template/GetAllTemplatesGetByTemplateName/?tempName=" + tempName;
            //string WebAPIUrl = "http://localhost:1530/api/Template/GetAllTemplatesGetByTemplateName/?tempName=" + tempName;

            return WebApiUtility.Get<IEnumerable<TemplateEntity>>(WebAPIUrl).ToList();
        }

        public List<TemplateEntity> GetAllTemplatesGetByAppTyIdTemplateName(int applicationTy, string tempName)
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Template/GetAllTemplatesGetByAppTyIdTemplateName/?applicationTy=" + applicationTy + "&tempName=" + tempName;
            //string WebAPIUrl = "http://localhost:1530/api/Template/GetAllTemplatesGetByAppTyIdTemplateName/?applicationTy=" + applicationTy + "&tempName=" + tempName;

            return WebApiUtility.Get<IEnumerable<TemplateEntity>>(WebAPIUrl).ToList();
        }
    }
}
