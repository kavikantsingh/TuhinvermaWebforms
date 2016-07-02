﻿
LAPP.factory('SchoolInfoFactory', function ($http, $q) {

    var providerurl = BaseURL + '/Provider';
    var Stateurl = BaseURL + '/State';

    var ProviderFactory = {
        GetSchoolInfoByProviderId: function (Provider, key) {
            return $http.post(providerurl + '/GetAllSchoolInformationDetails/' + key, Provider);// );
        },
        AddPreviousAddress: function (AddressInfo, key) {
            return $http.post(providerurl + '/SaveAddressRequestFromSchoolInformationTab/' + key, AddressInfo);//{ Key: key, objAddress: AddressInfo }
        },
        GetAllProvider: function (key) {
            return $http.get(providerurl + '/GetAllProvider/' + key);
        },
        AddPreviousSchoolInSchoolInformation: function (PreviousScName, key) {
            return $http.post(providerurl + '/AddPreviousSchoolInSchoolInformation/' + key, PreviousScName);
        },
        SaveSchoolInformation: function (SchoolInfo, key) {
            return $http.post(providerurl + '/SaveSchoolInformation/' + key, SchoolInfo);
        },
        GetAllStatebyCountryID: function (key, code) {
            return $http.get(Stateurl + '/StateGetByCountryID/' + key + '?CountryID=' + 235);
        },
        Get_All_providermblex: function (key, objAprovidermblex) {
            return $http.post(providerurl + '/GetAllProvidermblex/' + key, objAprovidermblex);
        },
        Save_providermblex: function (key, objAprovidermblex) {
            return $http.post(providerurl + '/SaveProvidermblex/' + key, objAprovidermblex);
        },
        DeletePreviousSchoolInSchoolInformation: function (AddressInfo, key) {
            return $http.post(providerurl + '/DeletePreviousSchoolInSchoolInformation/' + key, AddressInfo);//{ Key: key, objAddress: AddressInfo }
        },

        DeleteaddressRequestFromSchoolInformationTab: function (PreviousScName, key) {
            return $http.post(providerurl + '/DeleteaddressRequestFromSchoolInformationTab/' + key, PreviousScName);
        },


    };
    return ProviderFactory;
});
