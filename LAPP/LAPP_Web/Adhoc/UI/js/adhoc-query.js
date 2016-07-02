$(document).ready(function () {
    getDateTimeCur();
    $('#slideout').click(function () {
        slideHideShow();
    });
    // hide export image and grid onLoad.
    $('#dialogmsg').hide();
    $('#excelExport').hide();
    $('#csvExport').hide();
    $('#popout').hide();
    $('#gridTable').hide();
    $('#txtqueryname').hide();
    // show export and grid table on click ok execute
    $('#btnExecute, #navExecute').click(function () {
        $('#excelExport').show();
        $('#csvExport').show();
        $('#popout').show();
        $('#gridTable').show();
    });
    $('#popout').on('click', function (event) {
        event.preventDefault();
        var objclone = $('#panelviewdata').clone();
        objclone.dialog({
            modal: true,
            title: "View Data",
            position: ['center', 'top'],
            height: 300,
            width: 'auto',
            buttons: {
                Ok: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });
    $('#btnSaveQuery').on('click', function (event) {
        event.preventDefault();
        $('#txtqueryname').val('');
        $('#txtqueryname').show();
        $('#dialogsave').dialog({
            modal: true,
            resizable: false,
            title: 'Save Query',
            position: ['center', 'top'],
            height: 'auto',
            width: 300,
            buttons: [{
                text: 'Save',
                click: function () {
                    saveQuery($('#txtqueryname').val());
                    $(this).dialog('close');
                }
            },
                {
                    text: 'Cancel',
                    click: function () {
                        $(this).dialog('close');
                    }
                }]
        });
    });
    // onClick on refresh button refresh the page
    $('#navRefresh').click(function () {
        location.reload();
    });

    //Dynamic Tree
    // var dbName = "";
    // var dbTableName = "";
    // var obj ="";
    // var dbTables = "";
    // $('#dbConnection').on('click', function() {       
    var $tree = $('#dbTree').treeview({
        data: getStaticTree(),
        showCheckbox: true,
        multiSelect: true
    });
    $tree.on('nodeChecked', function (ev, node) {
        $(this).treeview(true).selectNode(node.nodeId);
    }).on('nodeSelected', function (ev, node) {
        var tablename = node.text;
        var tableColName = getTableColdata(tablename);
        for (var i in node.nodes) {
            var child = node.nodes[i];
            $(this).treeview(true).checkNode(child.nodeId);
        }
        $(this).treeview(true).checkNode(node.nodeId);
        generateTable($('#dbTableMainDiv'), tableColName);

    }).on('nodeUnchecked nodeUnselected', function (ev, node) {
        $(this).treeview(true).unselectNode(node.nodeId);
    }).on('nodeUnselected', function (ev, node) {
        for (var i in node.nodes) {
            var child = node.nodes[i];
            $(this).treeview(true).uncheckNode(child.nodeId);
        }
        $(this).treeview(true).uncheckNode(node.nodeId);
        var nodeUnselect = node.text;
        deleteTable(nodeUnselect);
    });
    //Table header click code
    var selectedall = false;
    $('.dbTableMainDiv').on('click', 'th', function () {
        var id = '#' + $(this).text();
        var checkstatus;
        $(id + " tbody tr th:first-child label input:checkbox").change(function () {
            checkstatus = this.checked;
            $(id + " tbody tr td label input:checkbox").each(function () {
                this.checked = checkstatus;
            });
            if (checkstatus) {
                selectedall = true;
            }
            else {
                selectedall = false;
            }
        });
    });

    $('.dbTableMainDiv').on('change', 'table tbody tr td label input:checkbox', function () {
        var checkstatus = this.checked;
        var parenttable = this.closest('table');
        var id = '#' + parenttable.id;
        var nonchecked = true;
        if (checkstatus) {
            $(id + " tbody tr td label input:checkbox").each(function () {
                if (!this.checked) {
                    nonchecked = false;
                }
            });
            if (!nonchecked) { selectedall = false; } else { selectedall = true; }
            if (!selectedall) {
                $(id + " tbody tr th:first-child label input:checkbox")[0].checked = false;
            }
            else {
                $(id + " tbody tr th:first-child label input:checkbox")[0].checked = true;
            }
        }
        else {
            $(id + " tbody tr th:first-child label input:checkbox")[0].checked = false;
            selectedall = false;
        }
    });
    //Retrieves Database name and Table Schema into data object
    //Array is the ajax call response data
    function getStaticTree() {
        var data = [{
            text: "Database",
            nodes: [{
                text: "Individual",
                nodeId: "Individual"
            }, {
                text: "License",
                id: "License"
            }, {
                text: "Address",
                id: "Address"
            }]
        }];

        return data;
    };

    //Original without Publicscreen.css
    function generateTable(container, data) {
        var table = $("<table id=" + data[0] + "></table>").addClass('table table-bordered table-hover tableCustomCSS');
        $.each(data, function (rowIndex, r) {
            var row = $("<tr></tr>");
            $.each(r, function (colIndex, c) {
                row.append($("<t" + (rowIndex == 0 ? "h" : "d") + "></td>").append('<label><input type="checkbox" />' + c + '</label>'));
            });
            table.append(row);
        });
        return container.append(table);
    };
    //Delete Table when user uncheck from database tree
    function deleteTable(tableName) {
        document.getElementById(tableName).remove();
    };

    //get Table col function
    function getTableColdata(tableName) {
        //Rest call for get table detail when user select particular table from tree grid.
        //Static data
        var tbData = "";
        if (tableName == "Individual") {
            tbData = [["Individual"], //headers
         ["Individual_Id"],
         ["First_Name"],
         ["Middle_Name"],
         ["Last_Name"],
         ["Date_of_Birth"],
         ["Gender"],
         ["Height"],
         ["Weight"],
         ["Ethnicity"],
         ["Birth_City"],
         ["Birth_State"],
         ["Birth_Country"]];
        } else if (tableName == "Address") {
            tbData = [["Address"], //headers
            ["Individual_Id"],
            ["Address_Type"],
            ["Address_Street_Line_1"],
            ["Address_Street_Line_2"],
            ["Address_City"],
            ["Address_State"],
            ["Address_Zip"],
            ["Address_Country"],
            ["Address_Status"]];
        } else if (tableName == "License") {
            tbData = [["License"], //headers
            ["Individual_Id"],
            ["License_Number"],
            ["Original_Issue_Date"],
            ["License_Status"],
            ["License_Effective_Date"],
            ["License_Expiration_Date"]];
        } else {
            tbData = "";
        }
        return tbData;
    };
    function saveQuery(qname) {
        //ajax call to save query name and populate into 
        //slidepanel
        var qval = $('#txtqueryname').val();
        var setqid = getDateTimeCur().replace('[', '').replace('/', '').replace('/', '').replace('-', '').replace(':', '').replace(':', '');
        if (qval != "") {
            slideRemSel();
            $('#list').prepend('<a href="#" class="list-group-item active" id="' + qname + setqid + '">' + qname + '\n' + '[' + getDateTimeCur() + ']<span class="close"></span></a>');
            slideHideShow();
        }
    };
    function deleteQuery(qid) {
        var qval = this.text;
        //remove selected query from storage also
        $('#' + qid).remove();
    };
    $('#Address').on('click', function (event) {
        $('th.checkbox :checkbox').prop('checked', $('td input:checkbox:checked').length == $('td input:checkbox').length);
    });
    //Use below function to Load Query into QueryBuilder section
    $('#list').on('click', 'a', function (event) {
        // console.log($(this)[0].text);
        // alert($(this)[0].text);
    });
    $('#list').on('click', 'a span', function (event) {
        var getqname = $(this).parent('a')[0].text;
        var getqid = $(this).parent('a')[0].id;
        $('#dialogmsg').show();
        $('#dialogdelete').dialog({
            modal: true,
            resizable: false,
            title: 'Delete Query',
            position: ['center', 'top'],
            height: 'auto',
            width: 300,
            buttons: [{
                text: 'Delete',
                click: function () {
                    deleteQuery(getqid);
                    $(this).dialog('close');
                }
            },
                {
                    text: 'Cancel',
                    click: function () {
                        $(this).dialog('close');
                    }
                }]
        });
    });
    function slideRemSel() {
        $('div a').each(function (i, item) {
            $(this).removeClass('active');
        });
    };
    function slideHideShow() {
        if ($('#slideout').hasClass('active')) {
            $('#slideout').removeClass('active').css('right', 0);
            $('#slideout_inner').css('right', -250);
        }
        else {
            $('#slideout').addClass('active').css('right', 250);
            $('#slideout_inner').css('right', 0);
        }
    };
    function getDateTimeCur() {
        var dNow = new Date();
        var localdate = (dNow.getMonth() + 1) + '/' + dNow.getDate() + '/' + dNow.getFullYear() + '-' + dNow.getHours() + ':' + dNow.getMinutes() + ':' + dNow.getSeconds();
        return localdate;
    };
    // Excel file export code
    $('#excelExport, #navExportExcel').click(function () {
        var table = $('#gridTable').text();
        if (!table == "") {
            $("#gridTable").table2excel({
                name: "Grid Data",
                filename: "QueryDataExcel" //do not include extension
            });
        }
    });
    // CSV file export code
    $("#csvExport, #navExportCSV").click(function () {
        var table = $('#gridTable').text();
        if (!table == "") {
            $("#gridTable").tableToCSV();
        }
    });
});