using LAPP.DAL;
using LAPP.ENTITY;

namespace LAPP.BAL
{
    public class ApplicationTypeBAL : BaseBAL
    {
        readonly ApplicationTypeApi _applicationTypeApi = new ApplicationTypeApi();

        public ApplicationTypeGetResponse GetAllAplicationTypes(string key)
        {
            return _applicationTypeApi.GetAllAplicationTypes(key);
        }
    }
}
