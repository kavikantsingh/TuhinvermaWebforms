using LAPP.ENTITY;

namespace LAPP.DAL
{
    public class ApplicationTypeApi : BaseDAL
    {
        public ApplicationTypeGetResponse GetAllAplicationTypes(string key)
        {
            string WebAPIUrl = "http://96.31.91.68/lappws/api/TypeValues/ApplicationTypeGetAll?Key=" + key;
            //string WebAPIUrl = "http://localhost:1530/api/TypeValues/ApplicationTypeGetAll?Key=" + key;

            return WebApiUtility.Get<ApplicationTypeGetResponse>(WebAPIUrl);
        }
    }
}
