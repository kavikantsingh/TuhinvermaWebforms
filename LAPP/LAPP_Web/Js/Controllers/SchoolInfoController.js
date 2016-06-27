LAPP.controller('SchoolController', function ($scope, $rootScope, SchoolInfoFactory) {
    var Provider = { ProviderId: '-1' };
    var key = $("hdnKey").val();

    $scope.ProviderId = '-1';

    $scope.clearPreviousAddress = function () {
        $scope.PrevAdd = {};
        $scope.PrevAdd.UseUserAddress = '';
        $scope.PrevAdd.UseVerifiedAddress = '';
        $scope.PrevAdd.ProviderId = $scope.ProviderId;
        $scope.PrevAdd.AddressTypeId = 3;
    }

    $scope.clearsateliteAddress = function () {
        $scope.SateliteAdd = {};
        $scope.SateliteAdd.UseUserAddress = '';
        $scope.SateliteAdd.UseVerifiedAddress = '';
        $scope.SateliteAdd.ProviderId = $scope.ProviderId;
        $scope.SateliteAdd.AddressTypeId = 7;
    }

    $scope.AddPreviousAddress = function () {

        SchoolInfoFactory.AddPreviousAddress($scope.PrevAdd).success(function (data) {
            $scope.clearPreviousAddress();
            $scope.PrevAddrIfanyGrid.api.setRowData(data.ListOfPreviousAddress);

        }).error(function (error) {
            $scope.Error = error;
        });
    }

    $scope.AddSateliteAddress = function () {
        SchoolInfoFactory.AddPreviousAddress($scope.SateliteAdd).success(function (data) {
            $scope.clearsateliteAddress();
            $scope.SateliteAddrIfanyGrid.api.setRowData(data.ListOfPreviousAddress);

        }).error(function (error) {
            $scope.Error = error;
        });
    }

    $scope.GetSchoolInfoByProviderId = function () {

        SchoolInfoFactory.GetSchoolInfoByProviderId(Provider).success(function (data) {
            $scope.ProviderInformation = data;

            $scope.PrevAddrGrid.api.setRowData($scope.ProviderInformation.ListOfPreviousSchool);

            $scope.PrevAddrIfanyGrid.api.setRowData($scope.ProviderInformation.ListOfPreviousAddress);

            $scope.SateliteAddrIfanyGrid.api.setRowData($scope.ProviderInformation.ListOfSatliteSchool);


            //$scope.ProviderInformation.ProviderInformationDetails.ContactNameAdministratorEmail;
            //$scope.ProviderInformation.ProviderInformationDetails.ContactNamePrimaryNumber
            //$scope.ProviderInformation.ProviderInformationDetails.ContactNamePrimaryNumberIsMobile
            //$scope.ProviderInformation.ProviderInformationDetails.ContactNameSecondaryNumber
            //$scope.ProviderInformation.ProviderInformationDetails.ContactNameSecondaryNumberIsMobile
            //$scope.ProviderInformation.ProviderInformationDetails.DirectorPrimaryNumber
            //$scope.ProviderInformation.ProviderInformationDetails.DirectorPrimaryNumberIsMobile
            //$scope.ProviderInformation.ProviderInformationDetails.DirectorSecondaryNumber
            //$scope.ProviderInformation.ProviderInformationDetails.DirectorSecondaryNumberIsMobil
            //$scope.ProviderInformation.ProviderInformationDetails.DirectorAdministratorEmaile

            //$scope.ProviderInformation.ProviderInformationDetails.ContactNameAdministratorEmail

            //$scope.ProviderInformation.ProviderInformationDetails.SchoolTelephone
            //$scope.ProviderInformation.ProviderInformationDetails.IsSchoolTelephoneMobile
            //$scope.ProviderInformation.ProviderInformationDetails.SchoolWebsite

        }).error(function (error) {
            $scope.Error = error;
        });
    };

    $scope.GetProviderdataonchange = function (id, name) {
        Provider.ProviderId = id;
        $scope.ProviderId = id;
        $scope.ProviderName = name;
        $scope.GetSchoolInfoByProviderId();

    }

    $scope.providerGrid = {
        columnDefs: [
            {
                headerName: "School Name", width: 130, field: "ProviderName", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' },
                cellRenderer: function (params) {
                    return "<a data-ng-click=\"GetProviderdataonchange('" + params.data.ProviderId + "','" + params.data.ProviderName + "')\" href=\"javascript:;\">" + params.data.ProviderName + "</a>";
                }
            },
            { headerName: "Id #", width: 90, field: "ProviderId", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Status", width: 95, field: "Status", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            {
                headerName: "", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' }, field: "IsActive", cellRenderer: function (params) {
                    if (params.data.IsActive == 'true')
                        return '<div class="statusicon" style="color:green;">';
                    else
                        return '<div class="statusicon" style="color:red;">';
                }
            },
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

    $scope.PrevAddrGrid = {
        columnDefs: [
            { headerName: "Previous School Name", width: 250, field: "ProviderName", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },

            {
                headerName: "Action", width: 130, cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' }, field: "IsActive", cellRenderer: function (params) {
                    return "<a data-ng-click=\"GetUser('" + params.data.userId + "')\" href=\"javascript:;\">View</a><span ng-show=\"!IsReadOnly\"> |</span><a data-ng-click=\"EditUser('" + params.data.userId + "')\" href=\"javascript:;\" ng-show=\"!IsReadOnly\"> Edit</a>";
                }
            },
        ],
        angularCompileRows: true,
        rowData: [],
        rowHeight: 25,
        headerHeight: 30,
        enableColResize: true,
        //suppressRowClickSelection: true,
        //suppressHorizontalScroll: true,
        suppressCellSelection: true,
        onGridReady: function (event) {
            //$scope.userGrid.api.sizeColumnsToFit();
        }
    };

    $scope.PrevAddrIfanyGrid = {
        columnDefs: [
            { headerName: "Street", width: 180, field: "StreetLine1", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "City", width: 130, field: "City", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "State", width: 125, field: "StateCode", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Zip", width: 125, field: "Zip", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            {
                headerName: "Action", width: 80, cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' }, field: "IsActive", cellRenderer: function (params) {
                    return "<a data-ng-click=\"GetUser('" + params.data.userId + "')\" href=\"javascript:;\">View</a><span ng-show=\"!IsReadOnly\"> |</span><a data-ng-click=\"EditUser('" + params.data.userId + "')\" href=\"javascript:;\" ng-show=\"!IsReadOnly\"> Edit</a>";
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

    $scope.SateliteAddrIfanyGrid = {
        columnDefs: [
           { headerName: "Street", width: 180, field: "StreetLine1", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "City", width: 130, field: "City", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "State", width: 125, field: "StateCode", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Zip", width: 125, field: "Zip", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            {
                headerName: "Action", width: 80, cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' }, field: "IsActive", cellRenderer: function (params) {
                    return "<a data-ng-click=\"GetUser('" + params.data.userId + "')\" style='background:../../App_Themes/Theme1/images/edit.png' href=\"javascript:;\">View</a> <a data-ng-click=\"EditUser('" + params.data.userId + "')\" href=\"javascript:;\" ng-show=\"!IsReadOnly\"> Edit</a>";
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
            { headerName: "MBLEx Passing Rates", width: 180, field: "Street", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Year", width: 125, field: "City", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Half", width: 125, field: "State", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            { headerName: "Entered", width: 175, field: "Zip", cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' } },
            {
                headerName: "Action", width: 80, cellStyle: { 'text-align': 'center', 'display': 'flex', 'align-items': 'center' }, field: "IsActive", cellRenderer: function (params) {
                    return "<a data-ng-click=\"GetUser('" + params.data.userId + "')\" href=\"javascript:;\">View</a><span ng-show=\"!IsReadOnly\"> |</span><a data-ng-click=\"EditUser('" + params.data.userId + "')\" href=\"javascript:;\" ng-show=\"!IsReadOnly\"> Edit</a>";
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
                    return "<a data-ng-click=\"GetUser('" + params.data.userId + "')\" href=\"javascript:;\">View</a><span ng-show=\"!IsReadOnly\"> |</span><a data-ng-click=\"EditUser('" + params.data.userId + "')\" href=\"javascript:;\" ng-show=\"!IsReadOnly\"> Edit</a>";
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
            }

        }).error(function (error) {
            $scope.Error = error;
        });
    }
    //get all providers

    $scope.GetAllProvider();

    $scope.AddPreviousSchoolInSchoolInformation = function () {
        var prevschooldata = {};
        prevschooldata.ProviderId = $scope.ProviderId;
        prevschooldata.ProviderName = $scope.PrevSchoolname;
        SchoolInfoFactory.AddPreviousSchoolInSchoolInformation(prevschooldata).success(function (data) {
            $scope.PrevSchoolname = {};
            $scope.PrevAddrGrid.api.setRowData(data.ListOfPreviousSchool);

        }).error(function (error) {
            $scope.Error = error;
        });
    }


    $scope.SaveSchoolInformation = function () {
        var SchoolInfo = {};
        SchoolInfo.SchoolTelephone = $scope.ProviderInformation.ProviderInformationDetails.SchoolTelephone;
        SchoolInfo.IsSchoolTelephoneMobile = $scope.ProviderInformation.ProviderInformationDetails.IsSchoolTelephoneMobile;
        SchoolInfo.SchoolWebsite = $scope.ProviderInformation.ProviderInformationDetails.SchoolWebsite;


        SchoolInfo.SchoolAddressStreet1 = $scope.ProviderInformation.ProviderInformationDetails.SchoolAddressStreet1;
        SchoolInfo.SchoolAddressStreet2 = $scope.ProviderInformation.ProviderInformationDetails.SchoolAddressStreet2;
        SchoolInfo.SchoolAddressCity = $scope.ProviderInformation.ProviderInformationDetails.SchoolAddressCity;
        SchoolInfo.SchoolAddressState = $scope.ProviderInformation.ProviderInformationDetails.SchoolAddressState;
        SchoolInfo.SchoolAddressZip = $scope.ProviderInformation.ProviderInformationDetails.SchoolAddressZip;
        SchoolInfo.SchoolAddressIsVerifiedClicked = $scope.ProviderInformation.ProviderInformationDetails.SchoolAddressIsVerifiedClicked;
        SchoolInfo.SchoolAddressIsNotVerifiedClicked = $scope.ProviderInformation.ProviderInformationDetails.SchoolAddressIsNotVerifiedClicked;

        SchoolInfo.MailingAddressStreet1 = $scope.ProviderInformation.ProviderInformationDetails.MailingAddressStreet1;
        SchoolInfo.MailingAddressStreet2 = $scope.ProviderInformation.ProviderInformationDetails.MailingAddressStreet2;
        SchoolInfo.MailingAddressCity = $scope.ProviderInformation.ProviderInformationDetails.MailingAddressCity;
        SchoolInfo.MailingAddressState = $scope.ProviderInformation.ProviderInformationDetails.MailingAddressState;
        SchoolInfo.MailingAddressZip = $scope.ProviderInformation.ProviderInformationDetails.MailingAddressZip;
        //SchoolInfo.MailingAddressIsVerifiedClicked = $scope.ProviderInformation.ProviderInformationDetails.MailingAddressIsVerifiedClicked;
        //SchoolInfo.MailingAddressIsNotVerifiedClicked = $scope.ProviderInformation.ProviderInformationDetails.MailingAddressIsNotVerifiedClicked;


        SchoolInfo.DirectorFirstName = $scope.ProviderInformation.ProviderInformationDetails.DirectorFirstName;
        SchoolInfo.DirectorLastName = $scope.ProviderInformation.ProviderInformationDetails.DirectorLastName;
        SchoolInfo.DirectorAdministratorEmail = $scope.ProviderInformation.ProviderInformationDetails.DirectorAdministratorEmail;
        SchoolInfo.DirectorJobTitle = $scope.ProviderInformation.ProviderInformationDetails.DirectorJobTitle;
        SchoolInfo.DirectorPrimaryNumber = $scope.ProviderInformation.ProviderInformationDetails.DirectorPrimaryNumber;
        SchoolInfo.DirectorPrimaryNumberIsMobile = $scope.ProviderInformation.ProviderInformationDetails.DirectorPrimaryNumberIsMobile;
        SchoolInfo.DirectorSecondaryNumber = $scope.ProviderInformation.ProviderInformationDetails.DirectorSecondaryNumber;
        SchoolInfo.DirectorSecondaryNumberIsMobile = $scope.ProviderInformation.ProviderInformationDetails.DirectorSecondaryNumberIsMobile;

        SchoolInfo.ContactNameFirstName = $scope.ProviderInformation.ProviderInformationDetails.ContactNameFirstName;
        SchoolInfo.ContactNameLastName = $scope.ProviderInformation.ProviderInformationDetails.ContactNameLastName;
        SchoolInfo.ContactNameAdministratorEmail = $scope.ProviderInformation.ProviderInformationDetails.ContactNameAdministratorEmail;
        SchoolInfo.ContactNameJobTitle = $scope.ProviderInformation.ProviderInformationDetails.ContactNameJobTitle;
        SchoolInfo.ContactNamePrimaryNumber = $scope.ProviderInformation.ProviderInformationDetails.ContactNamePrimaryNumber;
        SchoolInfo.ContactNamePrimaryNumberIsMobile = $scope.ProviderInformation.ProviderInformationDetails.ContactNamePrimaryNumberIsMobile;
        SchoolInfo.ContactNameSecondaryNumber = $scope.ProviderInformation.ProviderInformationDetails.ContactNameSecondaryNumber;
        SchoolInfo.ContactNameSecondaryNumberIsMobile = $scope.ProviderInformation.ProviderInformationDetails.ContactNameSecondaryNumberIsMobile;

        //SchoolInfo.IsActive =$scope.ProviderInformation.ProviderInformationDetails.
        //SchoolInfo.IsDeleted =$scope.ProviderInformation.ProviderInformationDetails.


        SchoolInfo.ContactInfo = $scope.ProviderInformation.ProviderInformationDetails.ContactInfo;
        SchoolInfo.ContactTypeId = $scope.ProviderInformation.ProviderInformationDetails.ContactTypeId;
        SchoolInfo.ProviderId = $scope.ProviderInformation.ProviderInformationDetails.ProviderId;
        SchoolInfo.IsMobile = $scope.ProviderInformation.ProviderInformationDetails.IsMobile
        SchoolInfo.IsPreferredContact = $scope.ProviderInformation.ProviderInformationDetails.IsPreferredContact


        //  SchoolInfo.ApplicationId =
        //SchoolInfo.AddressId = $scope.ProviderInformation.ProviderInformationDetails.AddressId;
        //  SchoolInfo.DateValidated =$scope.ProviderInformation.ProviderInformationDetails.
        //SchoolInfo.UseUserAddress =$scope.ProviderInformation.ProviderInformationDetails.
        //SchoolInfo.UseVerifiedAddress =$scope.ProviderInformation.ProviderInformationDetails.
        // SchoolInfo.AddressTypeId =$scope.ProviderInformation.ProviderInformationDetails.
        //SchoolInfo.IsMailingSameasPhysical =$scope.ProviderInformation.ProviderInformationDetails.
        //SchoolInfo.IndividualId =$scope.ProviderInformation.ProviderInformationDetails.

        SchoolInfoFactory.SaveSchoolInformation(SchoolInfo).success(function (data) {


        }).error(function (error) {
            $scope.Error = error;
        });
    }


});