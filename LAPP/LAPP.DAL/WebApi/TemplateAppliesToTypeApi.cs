using System.Collections.Generic;
using System.Linq;
using LAPP.ENTITY;
using System.Configuration;

namespace LAPP.DAL
{
    public class TemplateAppliesToTypeApi
    {
        public List<TemplateAppliesToTypeEntity> GetAllTemplateAppliesToType()
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Template/GetAllTemplateAppliesToType";
            //string WebAPIUrl = "http://localhost:1530/api/Template/GetAllTemplateAppliesToType";

            return WebApiUtility.Get<IEnumerable<TemplateAppliesToTypeEntity>>(WebAPIUrl).ToList();
        }
    }
}