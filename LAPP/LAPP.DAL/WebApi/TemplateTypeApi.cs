using System.Collections.Generic;
using System.Linq;
using LAPP.ENTITY;

namespace LAPP.DAL
{
    public class TemplateTypeApi
    {
        public List<TemplateTypeEntity> GetAllTemplateTypes()
        {
            string WebAPIUrl = "http://96.31.91.68/lappws/api/Template/GetAllTemplateTypes";
            //string WebAPIUrl = "http://localhost:1530/api/Template/GetAllTemplateTypes";

            return WebApiUtility.Get<IEnumerable<TemplateTypeEntity>>(WebAPIUrl).ToList();
        }
    }
}