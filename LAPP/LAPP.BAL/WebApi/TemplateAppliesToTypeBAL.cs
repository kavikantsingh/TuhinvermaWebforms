using System.Collections.Generic;
using LAPP.DAL;
using LAPP.ENTITY;

namespace LAPP.BAL
{
    public class TemplateAppliesToTypeBAL
    {
        readonly TemplateAppliesToTypeApi _templateAppliesToTypeApi = new TemplateAppliesToTypeApi();

        public List<TemplateAppliesToTypeEntity> GetAllTemplateAppliesToType()
        {
            return _templateAppliesToTypeApi.GetAllTemplateAppliesToType();
        }
    }
}