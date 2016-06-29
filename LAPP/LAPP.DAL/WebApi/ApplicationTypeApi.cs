using LAPP.ENTITY;
using System.Configuration;

namespace LAPP.DAL
{
    public class ApplicationTypeApi : BaseDAL
    {
        public ApplicationTypeGetResponse GetAllAplicationTypes(string key)
        {
            string WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/TypeValues/ApplicationTypeGetAll?Key=" + key;
            //string WebAPIUrl = "http://localhost:1530/api/TypeValues/ApplicationTypeGetAll?Key=" + key;

            return WebApiUtility.Get<ApplicationTypeGetResponse>(WebAPIUrl);
        }
    }
}
