using System.Collections.Generic;
using System.Linq;
using LAPP.ENTITY;

namespace LAPP.DAL
{
    public class TemplateAppliesToTypeApi
    {
        public List<TemplateAppliesToTypeEntity> GetAllTemplateAppliesToType()
        {
            string WebAPIUrl = "http://96.31.91.68/lappws/api/Template/GetAllTemplateAppliesToType";
            //string WebAPIUrl = "http://localhost:1530/api/Template/GetAllTemplateAppliesToType";

            return WebApiUtility.Get<IEnumerable<TemplateAppliesToTypeEntity>>(WebAPIUrl).ToList();
        }
    }
}