using System.Collections.Generic;
using System.Linq;
using LAPP.ENTITY;
using System.Configuration;

namespace LAPP.DAL
{
    public class TemplateTypeApi
    {
        public List<TemplateTypeEntity> GetAllTemplateTypes()
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Template/GetAllTemplateTypes";
            //string WebAPIUrl = "http://localhost:1530/api/Template/GetAllTemplateTypes";

            return WebApiUtility.Get<IEnumerable<TemplateTypeEntity>>(WebAPIUrl).ToList();
        }
    }
}