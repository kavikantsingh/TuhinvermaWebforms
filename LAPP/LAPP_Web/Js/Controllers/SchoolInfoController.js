﻿LAPP.controller('SchoolController', function ($scope, $rootScope, SchoolInfoFactory) {
    var Provider = { ProviderId: '-1' };
    $('#divAddSchoolInfoPrevious').hide();
    $('#divAddSatelliteLocation').hide();
    $('#divMblex').hide();

    $scope.ProviderId = '-1';
    $scope.ProviderNameId = 0;
    $scope.PreviousAddressId = 0;
    $scope.SateliteAddressId = 0;
    $scope.ProviderMBLExId = 0;

    $scope.StateList = [];
    $scope.Mblex = {};
    $scope.ProviderInformationDetails = {};
    //$scope.Mblex.PassingYear = 'Select';
    //$scope.Mblex.PassingHalf = 'Select';
    $scope.ShowPopup = function (id) {
        if (id == 1) {
            $('#divAddSchoolInfoPrevious').show();
        }
        else if (id == 2) {
            $('#divAddSatelliteLocation').show();
        }
        else if (id == 3) {
            $('#divMblex').show();
        }
    }

    $scope.clearPreviousAddress = function () {
        $scope.PrevAdd = {};
        $scope.PrevAdd.UseUserAddress = '';
        $scope.PrevAdd.UseVerifiedAddress = '';
        $scope.PrevAdd.ProviderId = $scope.ProviderId;
        $scope.PrevAdd.AddressTypeId = 3;
        $scope.PreviousAddressId = 0;
        $('#divAddSchoolInfoPrevious').hide();
    }

    $scope.clearsateliteAddress = function () {
        $scope.SateliteAdd = {};
        $scope.SateliteAdd.UseUserAddress = '';
        $scope.SateliteAdd.UseVerifiedAddress = '';
        $scope.SateliteAdd.ProviderId = $scope.ProviderId;
        $scope.SateliteAdd.AddressTypeId = 7;
        $scope.SateliteAddressId = 0;
        $('#divAddSatelliteLocation').hide();
    }

    $scope.clearMblex = function () {
        $scope.Mblex = {};
        //$scope.Mblex.PassingYear = 'Select';
        //$scope.Mblex.PassingHalf = 'Select';
        $scope.ProviderMBLExId = 0;
        $('#divMblex').hide();
    }

    //get all state by country
    $scope.GetAllStatebyCountry = function () {
        SchoolInfoFactory.GetAllStatebyCountryID(key, 'US').success(function (data) {
            $scope.StateList = data.State;
        }).error(function (error) {
            $scope.Error = error;
        });
    }

    $scope.GetAllStatebyCountry();
    //get all state by country

    //Adding PRevious school Information with address 4
    $scope.AddPreviousAddress = function () {
        ShowLoader();
        $scope.PrevAdd.IsActive = 1;
        $scope.PrevAdd.IsDeleted = 0;
        $scope.PrevAdd.AddressId = $scope.PreviousAddressId;
        SchoolInfoFactory.AddPreviousAddress($scope.PrevAdd, key).success(function (data) {
            $scope.clearPreviousAddress();
            $scope.PrevAddrIfanyGrid.api.setRowData(data.ListOfPreviousAddress);
            HideLoader();
        }).error(function (error) {
            $scope.Error = error;
        });
    }
    //Adding PRevious school Information with address 4

    //Adding PRevious school Information with address 4
    $scope.DeleteaddressRequestFromSchoolInformationTab = function (AddressId, AddressTypeId) {
        ShowLoader();
        var addresss = { 'AddressId': AddressId, 'AddressTypeId': AddressTypeId, 'ProviderId': $scope.ProviderId };

        SchoolInfoFactory.DeleteaddressRequestFromSchoolInformationTab(addresss, key).success(function (data) {
            $scope.clearPreviousAddress();
            $scope.PrevAddrIfanyGrid.api.setRowData(data.ListOfPreviousAddress);
            HideLoader();
        }).error(function (error) {
            $scope.Error = error;
        });
    }
    //Adding PRevious school Information with address 4

    //Adding Satellite school Information with address 4
    $scope.AddSateliteAddress = function () {
        ShowLoader();
        $scope.SateliteAdd.IsActive = 1;
        $scope.SateliteAdd.IsDeleted = 0;
        $scope.SateliteAdd.AddressId = $scope.SateliteAddressId;
        SchoolInfoFactory.AddPreviousAddress($scope.SateliteAdd, key).success(function (data) {

            $scope.clearsateliteAddress();
            $scope.SateliteAddrIfanyGrid.api.setRowData(data.ListOfPreviousAddress);
            HideLoader();
        }).error(function (error) {
            $scope.Error = error;
        });
    }
    //Adding Satellite school Information with address 4

    //Adding Mblex
    $scope.Save_providermblex = function () {
        $scope.Mblex.IsActive = 1;
        $scope.Mblex.IsDeleted = 0;
        $scope.Mblex.ProviderMBLExId = $scope.ProviderMBLExId;
        $scope.Mblex.ProviderId = $scope.ProviderId;
        SchoolInfoFactory.Save_providermblex(key, $scope.Mblex).success(function (data) {
            $scope.clearMblex();
            $scope.MBLExGrid.api.setRowData(data.ProvidermblexResponseList);

        }).error(function (error) {
            $scope.Error = error;
        });
    }
    //Adding Mblex

    //Get particular provider information
    $scope.GetSchoolInfoByProviderId = function () {
        ShowLoader();
        SchoolInfoFactory.GetSchoolInfoByProviderId(Provider, key).success(function (data) {
            HideLoader();

            $scope.ProviderInformationDetails = data.ProviderInformationDetails;

            $scope.ProviderInformation = data;
            $scope.ProviderInformationDetails = data.ProviderInformationDetails;



            $scope.PrevAddrGrid.api.setRowData($scope.ProviderInformation.ListOfPreviousSchool);

            $scope.PrevAddrIfanyGrid.api.setRowData($scope.ProviderInformation.ListOfPreviousAddress);

            $scope.SateliteAddrIfanyGrid.api.setRowData($scope.ProviderInformation.ListOfSatliteSchool);

            if (data.SchoolAddress.length > 0) {
                $scope.ProviderInformationDetails.SchoolAddressId = data.SchoolAddress[0].AddressId;
                $scope.ProviderInformationDetails.SchoolAddressStreet1 = data.SchoolAddress[0].StreetLine1;
                $scope.ProviderInformationDetails.SchoolAddressStreet2 = data.SchoolAddress[0].StreetLine2;
                $scope.ProviderInformationDetails.SchoolAddressCity = data.SchoolAddress[0].City;
                $scope.ProviderInformationDetails.SchoolAddressState = data.SchoolAddress[0].StateCode;
                $scope.ProviderInformationDetails.SchoolAddressZip = data.SchoolAddress[0].Zip;
                //SchoolInfo.SchoolAddressIsVerifiedClicked = $scope.ProviderInformationDetails.SchoolAddressIsVerifiedClicked;
                //SchoolInfo.SchoolAddressIsNotVerifiedClicked = $scope.ProviderInformationDetails.SchoolAddressIsNotVerifiedClicked;
            }
            if (data.MailingAddress.length > 0) {
                $scope.ProviderInformationDetails.MailingAddressId = data.MailingAddress[0].AddressId;
                $scope.ProviderInformationDetails.MailingAddressStreet1 = data.MailingAddress[0].StreetLine1;
                $scope.ProviderInformationDetails.MailingAddressStreet2 = data.MailingAddress[0].StreetLine2;
                $scope.ProviderInformationDetails.MailingAddressCity = data.MailingAddress[0].City;
                $scope.ProviderInformationDetails.MailingAddressState = data.MailingAddress[0].StateCode;
                $scope.ProviderInformationDetails.MailingAddressZip = data.MailingAddress[0].Zip;
            }


            if (data.ListOfContactJobTitle.length > 0) {
                $scope.ProviderInformationDetails.ContactNameFirstName = data.ListOfContactJobTitle[0].FirstName;
                $scope.ProviderInformationDetails.ContactNameJobTitle = data.ListOfContactJobTitle[0].ProvIndvJobTitle;
            }

            if (data.ListOfDirectorJobTitle.length > 0) {
                $scope.ProviderInformationDetails.DirectorFirstName = data.ListOfDirectorJobTitle[0].FirstName;
                $scope.ProviderInformationDetails.DirectorJobTitle = data.ListOfDirectorJobTitle[0].ProvIndvJobTitle;
            }

            //$scope.ProviderInformationDetails.ContactNameAdministratorEmail;
            //$scope.ProviderInformationDetails.ContactNamePrimaryNumber
            //$scope.ProviderInformationDetails.ContactNamePrimaryNumberIsMobile
            //$scope.ProviderInformationDetails.ContactNameSecondaryNumber
            //$scope.ProviderInformationDetails.ContactNameSecondaryNumberIsMobile
            //$scope.ProviderInformationDetails.DirectorPrimaryNumber
            //$scope.ProviderInformationDetails.DirectorPrimaryNumberIsMobile
            //$scope.ProviderInformationDetails.DirectorSecondaryNumber
            //$scope.ProviderInformationDetails.DirectorSecondaryNumberIsMobil
            //$scope.ProviderInformationDetails.DirectorAdministratorEmaile

            //$scope.ProviderInformationDetails.ContactNameAdministratorEmail

            //$scope.ProviderInformationDetails.SchoolTelephone
            //$scope.ProviderInformationDetails.IsSchoolTelephoneMobile
            //$scope.ProviderInformationDetails.SchoolWebsite

        }).error(function (error) {
            $scope.Error = error;
        });
    };

    // on selecting provider
    $scope.GetProviderdataonchange = function (id, name) {

        Provider.ProviderId = id;
        $scope.ProviderId = id;
        $scope.ProviderName = name;
        $scope.clearPreviousAddress();
        $scope.clearsateliteAddress();
        $scope.GetSchoolInfoByProviderId();
        $scope.Get_All_providermblex();

    }
    // on selecting provider

    //left pane all provider list
    $scope.providerGrid = {
        columnDefs: [
            {
                headerName: "School Name", width: 130, field: "ProviderName", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' },
                cellRenderer: function (params) {
                    return "<a data-ng-click=\"GetProviderdataonchange('" + params.data.ProviderId + "','" + params.data.ProviderName + "')\" href=\"javascript:;\">" + params.data.ProviderName + "</a>";
                }
            },
            { headerName: "Id #", width: 90, field: "ProviderId", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            {
                headerName: "Status", width: 95, field: "Status", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' },
                cellRenderer: function (params) {
                    return "<a data-ng-click=\"GetProviderdataonchange('" + params.data.ProviderId + "','" + params.data.ProviderName + "')\" href=\"javascript:;\"><img src='../../App_Themes/Theme1/images/edit.png' /></a><span ng-show=\"!IsReadOnly\">";

                    //if (params.data.IsActive == 'true')
                    //    datab +='<div class="statusicon" style="color:green;"></div>';
                    //else
                    //    datab += '<div class="statusicon" style="color:red;"></div>';

                    //return datab;
                }
            }
        ],
        angularCompileRows: true,
        rowData: [],
        // enableFilter: true,
        rowHeight: 25,
        headerHeight: 30,
        // pinnedColumnCount: 1,
        enableColResize: true,
        suppressRowClickSelection: true,
        suppressHorizontalScroll: true,
        suppressCellSelection: true,
        onGridReady: function (event) {
            //$scope.providerGrid.api.sizeColumnsToFit();
        }
    };

    //Previous school name only
    $scope.PrevAddrGrid = {
        columnDefs: [
            { headerName: "", hide: true, width: 250, field: "ProviderNameId", },
            { headerName: "Previous School Name", width: 250, field: "ProviderName", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },

            {
                headerName: "Action", width: 130, cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' }, field: "IsActive", cellRenderer: function (params) {
                    return "<a data-ng-click=\"showUpdatevalue('" + params.data.ProviderNameId + "','" + params.data.ProviderName + "')\" href=\"javascript:;\"><img src='../../App_Themes/Theme1/images/edit.png' /></a><span ng-show=\"!IsReadOnly\"> |</span><a data-ng-click=\"DeletePreviousSchoolInSchoolInformation('" + params.data.ProviderNameId + "')\" href=\"javascript:;\"> <img src='../../App_Themes/Theme1/images/delete.png' /></a>";
                }
            },
        ],
        angularCompileRows: true,
        rowData: [],
        rowHeight: 25,
        headerHeight: 30,
        enableColResize: true,
        suppressCellSelection: true,
        onGridReady: function (event) {
            //$scope.PrevAddrGrid.api.sizeColumnsToFit();
        }
    };

    //Previous school address only
    $scope.PrevAddrIfanyGrid = {
        columnDefs: [
            { headerName: "", hide: true, width: 250, field: "AddressId", },
            { headerName: "", hide: true, width: 250, field: "StreetLine2", },
            { headerName: "Street", width: 180, field: "StreetLine1", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "City", width: 130, field: "City", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "State", width: 125, field: "StateCode", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Zip", width: 125, field: "Zip", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
             {
                 headerName: "Action", width: 80, cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' }, field: "IsActive", cellRenderer: function (params) {
                     return "<a data-ng-click=\"showUpdatevaluePreviousAddress('" + params.data.AddressId + "','" + params.data.StreetLine1 + "','" + params.data.StreetLine2 + "','" + params.data.City + "','" + params.data.StateCode + "','" + params.data.Zip + "')\" href=\"javascript:;\"><img src='../../App_Themes/Theme1/images/edit.png' /></a> |</span><a data-ng-click=\"DeleteaddressRequestFromSchoolInformationTab('" + params.data.AddressId + "',3)\" href=\"javascript:;\"> <img src='../../App_Themes/Theme1/images/delete.png' /></a>";
                 }
             },
        ],
        angularCompileRows: true,
        rowData: [],
        rowHeight: 25,
        headerHeight: 30,
        enableColResize: true,
        suppressRowClickSelection: true,
        suppressHorizontalScroll: true,
        suppressCellSelection: true,
        onGridReady: function (event) {
            //$scope.userGrid.api.sizeColumnsToFit();
        }
    };

    //Satellite address only
    $scope.SateliteAddrIfanyGrid = {
        columnDefs: [
            { headerName: "", hide: true, width: 250, field: "AddressId", },
           { headerName: "Street", width: 180, field: "StreetLine1", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "City", width: 130, field: "City", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "State", width: 125, field: "StateCode", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Zip", width: 125, field: "Zip", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
              {
                  headerName: "Action", width: 80, cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' }, field: "IsActive", cellRenderer: function (params) {
                      return "<a data-ng-click=\"showUpdatevalueSateliteAddress('" + params.data.AddressId + "','" + params.data.StreetLine1 + "','" + params.data.StreetLine2 + "','" + params.data.City + "','" + params.data.StateCode + "','" + params.data.Zip + "')\" href=\"javascript:;\"><img src='../../App_Themes/Theme1/images/edit.png' /></a> | </span><a data-ng-click=\"DeleteaddressRequestFromSchoolInformationTab('" + params.data.AddressId + "',7)\" href=\"javascript:;\"> <img src='../../App_Themes/Theme1/images/delete.png' /></a>";
                  }
              },
        ],
        angularCompileRows: true,
        rowData: [],
        rowHeight: 25,
        headerHeight: 30,
        //enableColResize: true,
        suppressRowClickSelection: true,
        suppressHorizontalScroll: true,
        suppressCellSelection: true,
        onGridReady: function (event) {
            //$scope.userGrid.api.sizeColumnsToFit();
        }
    };

    $scope.MBLExGrid = {
        columnDefs: [
        { headerName: "", hide: true, width: 250, field: "ProviderMBLExId", },
        { headerName: "", hide: true, width: 250, field: "ProviderMBLExIdGuid", },
        { headerName: "MBLEx Passing Rates", width: 180, field: "PassingRates", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Year", width: 125, field: "PassingYear", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Half", width: 125, field: "PassingHalf", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Entered", width: 175, field: "DateEntered", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            {
                headerName: "Action", width: 80, cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' }, field: "IsActive", cellRenderer: function (params) {

                    return "<a data-ng-click=\"showUpdatevalueMblex('" + params.data.ProviderMBLExId + "','" + params.data.PassingRates + "','" + params.data.PassingYear + "','" + params.data.PassingHalf + "')\" href=\"javascript:;\"><img src='../../App_Themes/Theme1/images/edit.png' /></a><span ng-show=\"!IsReadOnly\"> |</span><a data-ng-click=\"EditUser('" + params.data.userId + "')\" href=\"javascript:;\"> <img src='../../App_Themes/Theme1/images/delete.png' /></a>";
                }
            },
        ],
        angularCompileRows: true,
        rowData: [],
        rowHeight: 25,
        headerHeight: 30,
        // enableColResize: true,
        suppressRowClickSelection: true,
        suppressHorizontalScroll: true,
        suppressCellSelection: true,
        onGridReady: function (event) {
            //$scope.userGrid.api.sizeColumnsToFit();
        }
    };

    $scope.SiteDetailsGrid = {
        columnDefs: [
            { headerName: "Site Visit Date", width: 125, field: "Street", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Type of Site Visit ", width: 125, field: "City", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Site Inspector", width: 125, field: "State", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Date Completed", width: 125, field: "Zip", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Supporting Docs", width: 125, field: "Zip", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            {
                headerName: "Action", width: 80, cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' }, field: "IsActive", cellRenderer: function (params) {
                    return "<a data-ng-click=\"GetUser('" + params.data.userId + "')\" href=\"javascript:;\">View</a> |  <a data-ng-click=\"EditUser('" + params.data.userId + "')\" href=\"javascript:;\"> Edit</a>";
                }
            },
        ],
        angularCompileRows: true,
        rowData: [],
        rowHeight: 25,
        headerHeight: 30,
        //enableColResize: true,
        // suppressRowClickSelection: true,
        suppressHorizontalScroll: true,
        //suppressCellSelection: true,
        onGridReady: function (event) {
            //$scope.userGrid.api.sizeColumnsToFit();
        }
    };

    //get all providers
    $scope.GetAllProvider = function () {

        SchoolInfoFactory.GetAllProvider(key).success(function (data) {

            $scope.providerGrid.api.setRowData(data.ProviderResponseList);

            if (data.ProviderResponseList.length > 0) {
                $scope.ProviderId = data.ProviderResponseList[0].ProviderId;
                Provider.ProviderId = data.ProviderResponseList[0].ProviderId;
                $scope.ProviderName = data.ProviderResponseList[0].ProviderName;

                $scope.GetSchoolInfoByProviderId();
                $scope.clearPreviousAddress();
                $scope.clearsateliteAddress();
                $scope.Get_All_providermblex();
            }


        }).error(function (error) {
            $scope.Error = error;
        });
    }
    //get all providers

    $scope.GetAllProvider();

    // add/update previous address
    $scope.AddPreviousSchoolInSchoolInformation = function () {
        ShowLoader();
        var prevschooldata = {};
        prevschooldata.ProviderId = $scope.ProviderId;
        prevschooldata.ProviderNameId = $scope.ProviderNameId;
        prevschooldata.ProviderName = $scope.PrevSchoolname;
        SchoolInfoFactory.AddPreviousSchoolInSchoolInformation(prevschooldata, key).success(function (data) {
            $scope.PrevSchoolname = null;
            $scope.ProviderNameId = 0;
            $scope.PrevAddrGrid.api.setRowData(data.ListOfPreviousSchool);
            HideLoader();
        }).error(function (error) {
            $scope.Error = error;
        });
    }
    // add/update previous address



    // Delete previous address
    $scope.DeletePreviousSchoolInSchoolInformation = function (ProviderNameId) {
        ShowLoader();
        var prevschooldata = {};
        prevschooldata.ProviderId = $scope.ProviderId;
        prevschooldata.ProviderNameId = ProviderNameId;

        SchoolInfoFactory.DeletePreviousSchoolInSchoolInformation(prevschooldata, key).success(function (data) {
            $scope.PrevSchoolname = null;
            $scope.ProviderNameId = 0;
            $scope.PrevAddrGrid.api.setRowData(data.ListOfPreviousSchool);
            HideLoader();
        }).error(function (error) {
            $scope.Error = error;
        });
    }
    // add/update previous address

    //Populate Edit Previous school name
    $scope.showUpdatevalue = function (ProviderNameId, ProviderName) {
        ShowLoader();
        $scope.PrevSchoolname = ProviderName;
        $scope.ProviderNameId = ProviderNameId;
        HideLoader();
    }
    //Populate Edit Previous school name



    //Populate Edit Previous Address
    $scope.showUpdatevaluePreviousAddress = function (AddressId, StreetLine1, StreetLine2, City, StateCode, Zip) {
        $scope.PreviousAddressId = AddressId;

        $scope.PrevAdd.StreetLine1 = StreetLine1;
        $scope.PrevAdd.StreetLine2 = StreetLine2
        $scope.PrevAdd.City = City;
        $scope.PrevAdd.StateCode = StateCode;
        $scope.PrevAdd.Zip = Zip;
        $('#divAddSchoolInfoPrevious').show();
    }
    //Populate Edit Previous Address


    //Populate Edit Satelite Address
    $scope.showUpdatevalueSateliteAddress = function (AddressId, StreetLine1, StreetLine2, City, StateCode, Zip) {
        $scope.SateliteAddressId = AddressId;

        $scope.SateliteAdd.StreetLine1 = StreetLine1;
        $scope.SateliteAdd.StreetLine2 = StreetLine2
        $scope.SateliteAdd.City = City;
        $scope.SateliteAdd.StateCode = StateCode;
        $scope.SateliteAdd.Zip = Zip;
        $('#divAddSatelliteLocation').show();
    }
    //Populate Edit Previous school name


    //Populate Edit Satelite Address
    $scope.showUpdatevalueMblex = function (ProviderMBLExId, PassingRates, PassingYear, PassingHalf) {
        $scope.ProviderMBLExId = ProviderMBLExId;

        $scope.Mblex.PassingRates = PassingRates;
        $scope.Mblex.PassingYear = PassingYear
        $scope.Mblex.PassingHalf = PassingHalf;

    }
    //Populate Edit Previous school name

    $scope.SaveSchoolInformation = function () {
        ShowLoader();
        var SchoolInfo = {};


        //SchoolInfo.SchoolTelephone = $scope.ProviderInformationDetails.SchoolTelephone;
        //SchoolInfo.IsSchoolTelephoneMobile = $scope.ProviderInformationDetails.IsSchoolTelephoneMobile;
        //SchoolInfo.SchoolWebsite = $scope.ProviderInformationDetails.SchoolWebsite;


        //SchoolInfo.SchoolAddressStreet1 = $scope.ProviderInformationDetails.SchoolAddressStreet1;
        //SchoolInfo.SchoolAddressStreet2 = $scope.ProviderInformationDetails.SchoolAddressStreet2;
        //SchoolInfo.SchoolAddressCity = $scope.ProviderInformationDetails.SchoolAddressCity;
        //SchoolInfo.SchoolAddressState = $scope.ProviderInformationDetails.SchoolAddressState;
        //SchoolInfo.SchoolAddressZip = $scope.ProviderInformationDetails.SchoolAddressZip;
        //SchoolInfo.SchoolAddressIsVerifiedClicked = $scope.ProviderInformationDetails.SchoolAddressIsVerifiedClicked;
        //SchoolInfo.SchoolAddressIsNotVerifiedClicked = $scope.ProviderInformationDetails.SchoolAddressIsNotVerifiedClicked;

        //SchoolInfo.MailingAddressStreet1 = $scope.ProviderInformationDetails.MailingAddressStreet1;
        //SchoolInfo.MailingAddressStreet2 = $scope.ProviderInformationDetails.MailingAddressStreet2;
        //SchoolInfo.MailingAddressCity = $scope.ProviderInformationDetails.MailingAddressCity;
        //SchoolInfo.MailingAddressState = $scope.ProviderInformationDetails.MailingAddressState;
        //SchoolInfo.MailingAddressZip = $scope.ProviderInformationDetails.MailingAddressZip;
        ////SchoolInfo.MailingAddressIsVerifiedClicked = $scope.ProviderInformationDetails.MailingAddressIsVerifiedClicked;
        ////SchoolInfo.MailingAddressIsNotVerifiedClicked = $scope.ProviderInformationDetails.MailingAddressIsNotVerifiedClicked;


        //SchoolInfo.DirectorFirstName = $scope.ProviderInformationDetails.DirectorFirstName;
        //SchoolInfo.DirectorLastName = $scope.ProviderInformationDetails.DirectorLastName;
        //SchoolInfo.DirectorAdministratorEmail = $scope.ProviderInformationDetails.DirectorAdministratorEmail;
        //SchoolInfo.DirectorJobTitle = $scope.ProviderInformationDetails.DirectorJobTitle;
        //SchoolInfo.DirectorPrimaryNumber = $scope.ProviderInformationDetails.DirectorPrimaryNumber;
        //SchoolInfo.DirectorPrimaryNumberIsMobile = $scope.ProviderInformationDetails.DirectorPrimaryNumberIsMobile;
        //SchoolInfo.DirectorSecondaryNumber = $scope.ProviderInformationDetails.DirectorSecondaryNumber;
        //SchoolInfo.DirectorSecondaryNumberIsMobile = $scope.ProviderInformationDetails.DirectorSecondaryNumberIsMobile;

        //SchoolInfo.ContactNameFirstName = $scope.ProviderInformationDetails.ContactNameFirstName;
        //SchoolInfo.ContactNameLastName = $scope.ProviderInformationDetails.ContactNameLastName;
        //SchoolInfo.ContactNameAdministratorEmail = $scope.ProviderInformationDetails.ContactNameAdministratorEmail;
        //SchoolInfo.ContactNameJobTitle = $scope.ProviderInformationDetails.ContactNameJobTitle;
        //SchoolInfo.ContactNamePrimaryNumber = $scope.ProviderInformationDetails.ContactNamePrimaryNumber;
        //SchoolInfo.ContactNamePrimaryNumberIsMobile = $scope.ProviderInformationDetails.ContactNamePrimaryNumberIsMobile;
        //SchoolInfo.ContactNameSecondaryNumber = $scope.ProviderInformationDetails.ContactNameSecondaryNumber;
        //SchoolInfo.ContactNameSecondaryNumberIsMobile = $scope.ProviderInformationDetails.ContactNameSecondaryNumberIsMobile;

        ////SchoolInfo.IsActive =$scope.ProviderInformationDetails.
        ////SchoolInfo.IsDeleted =$scope.ProviderInformationDetails.


        //SchoolInfo.ContactInfo = $scope.ProviderInformationDetails.ContactInfo;
        //SchoolInfo.ContactTypeId = $scope.ProviderInformationDetails.ContactTypeId;
        $scope.ProviderInformationDetails.ProviderId = $scope.ProviderId;
        //SchoolInfo.IsMobile = $scope.ProviderInformationDetails.IsMobile
        //SchoolInfo.IsPreferredContact = $scope.ProviderInformationDetails.IsPreferredContact


        ////  SchoolInfo.ApplicationId =
        ////SchoolInfo.AddressId = $scope.ProviderInformationDetails.AddressId;
        ////  SchoolInfo.DateValidated =$scope.ProviderInformationDetails.
        ////SchoolInfo.UseUserAddress =$scope.ProviderInformationDetails.
        ////SchoolInfo.UseVerifiedAddress =$scope.ProviderInformationDetails.
        //// SchoolInfo.AddressTypeId =$scope.ProviderInformationDetails.
        ////SchoolInfo.IsMailingSameasPhysical =$scope.ProviderInformationDetails.
        ////SchoolInfo.IndividualId =$scope.ProviderInformationDetails.

        SchoolInfoFactory.SaveSchoolInformation($scope.ProviderInformationDetails, key).success(function (data) {
            $scope.GetSchoolInfoByProviderId();

        }).error(function (error) {
            $scope.Error = error;
        });
    }



    $scope.Get_All_providermblex = function () {
        var obj = { ProviderId: $scope.ProviderId };

        SchoolInfoFactory.Get_All_providermblex(key, obj).success(function (data) {

            $scope.MBLExGrid.api.setRowData(data.ProvidermblexResponseList);

        }).error(function (error) {
            $scope.Error = error;
        });
    }

});