
LAPP.factory('SchoolInfoFactory', function ($http, $q) {
    
    var providerurl = BaseURL + '/Provider';

    var ProviderFactory = {
        GetSchoolInfoByProviderId: function (Provider) {
            return $http.post(providerurl + '/GetAllSchoolInformationDetails', Provider);
        },
        AddPreviousAddress: function (AddressInfo) {
            return $http.post(providerurl + '/SaveAddressRequestFromSchoolInformationTab', AddressInfo);
        },
        GetAllProvider: function (key) {
            return $http.get(providerurl + '/GetAllProvider/' + key);
        },
        AddPreviousSchoolInSchoolInformation: function (PreviousScName) {
            return $http.post(providerurl + '/AddPreviousSchoolInSchoolInformation', PreviousScName);
        },
        SaveSchoolInformation: function (SchoolInfo) {
            return $http.post(providerurl + '/SaveSchoolInformation', SchoolInfo);
        }
        
    };
    return ProviderFactory;
});
