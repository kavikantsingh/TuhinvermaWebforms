using System.Collections.Generic;
using LAPP.DAL;
using LAPP.ENTITY;

namespace LAPP.BAL
{
    public class TemplateBAL : BaseBAL
    {
        readonly TemplateApi _templateApi = new TemplateApi();

        public List<TemplateEntity> GetAllTemplates()
        {
            return _templateApi.GetAllTemplates();
        }

        public TemplateEntity GetTemplateById(int id)
        {
            return _templateApi.GetTemplateById(id);
        }

        public void DeleteTemplateById(int id)
        {
            _templateApi.DeleteTemplateById(id);
        }

        public void UpdateTemplate(TemplateEntity templateEntity)
        {
            _templateApi.UpdateTemplate(templateEntity);
        }

        public int CreateTemplate(TemplateEntity templateEntity)
        {
            return _templateApi.CreateTemplate(templateEntity);
        }

        public List<TemplateEntity> GetAllTemplatesGetByAppTyId(int applicationTy)
        {
            return _templateApi.GetAllTemplatesGetByAppTyId(applicationTy);
        }

        public List<TemplateEntity> GetAllTemplatesGetByTemplateName(string tempName)
        {
            return _templateApi.GetAllTemplatesGetByTemplateName(tempName);
        }

        public List<TemplateEntity> GetAllTemplatesGetByAppTyIdTemplateName(int applicationTy, string tempName)
        {
            return _templateApi.GetAllTemplatesGetByAppTyIdTemplateName(applicationTy, tempName);
        }
    }
}
