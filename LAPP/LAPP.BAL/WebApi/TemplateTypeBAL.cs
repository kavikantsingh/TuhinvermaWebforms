using System.Collections.Generic;
using LAPP.DAL;
using LAPP.ENTITY;

namespace LAPP.BAL
{
    public class TemplateTypeBAL
    {
        readonly TemplateTypeApi _templateTypeApi = new TemplateTypeApi();

        public List<TemplateTypeEntity> GetAllTemplateTypes()
        {
            return _templateTypeApi.GetAllTemplateTypes();
        }
    }
}