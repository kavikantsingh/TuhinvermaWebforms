
function ValidateTextbox(message, element, value) {
    if (value !== "" && value !== "undefined") {
        $(element).removeClass('error'); return "";

    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateOnlyAlphabet(message, element, value) {
    if (value !== "" && value !== "undefined") {
        var emailReg = /^[a-zA-Z ]*$/;
        if (emailReg.test(value)) {
            $(element).removeClass('error'); return "";
        }
        else {
            $(element).addClass('error');
            return message;
        }
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateDropdown(defaultValue, message, element, value) {
    if (value !== "" && value !== "undefined" && value !== defaultValue) {
        $(element).removeClass('error'); return "";
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateCheckbox(message, element, value) {
    if (value !== "" && value !== "undefined") {
        $(element).removeClass('error'); return "";
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateRadio(message, element, value) {
    if (value !== "" && value !== "undefined") {
        $(element).removeClass('error'); return "";
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateEmail(message, element, value) {
    if (value !== "" && value !== "undefined") {
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        if (emailReg.test(value)) {
            $(element).removeClass('error'); return "";
        }
        else {
            $(element).addClass('error');
            return message;
        }
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateZipCode(message, element, value) {
    if (value !== "" && value !== "undefined") {
        var emailReg = /^\d{5}(?:[-\s]\d{4})?$/;
        if (emailReg.test(value)) {
            $(element).removeClass('error'); return "";
        }
        else {
            $(element).addClass('error');
            return message;
        }
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidatePhone(message, element, value) {
    if (value !== "" && value !== "undefined") {
        var emailReg = /^((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}$/;
        if (emailReg.test(value)) {
            $(element).removeClass('error'); return "";
        }
        else {
            $(element).addClass('error');
            return message;
        }
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateSSN(message, element, value) {
    if (value !== "" && value !== "undefined") {
        var emailReg = /^(\w{3}-?\w{2}-?\w{4}|NNN-NN-NNNN)$/;
        if (emailReg.test(value)) {
            $(element).removeClass('error'); return "";
        }
        else {
            $(element).addClass('error');
            return message;
        }
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateDate(message, element, value) {

    if (value !== "" && value !== "undefined") {
        var emailReg = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/;
        if (emailReg.test(value)) {
            $(element).removeClass('error'); return "";
        }
        else {
            $(element).addClass('error');
            return message;
        }
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateCompare(message, element, value, ValueToCompare) {
    if (value !== "" && value !== "undefined") {
        if (value == ValueToCompare) {
            $(element).removeClass('error'); return "";
        }
        else {
            $(element).addClass('error');
            return message;
        }
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateNumber(message, element, value) {
    if (value !== "" && value !== "undefined") {
        if (/^\-?([0-9]+(\.[0-9]+)?|Infinity)$/.test(value)) {
            $(element).removeClass('error'); $(element).removeClass('error'); return "";
        }
        else {
            $(element).addClass('error');
            return message;
        }
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function ValidateDecimal(message, element, value) {
    if (value !== "" && value !== "undefined") {
        if (/^\-?([0-9]+(\.[0-9]+)?|Infinity)$/.test(value)) {
            $(element).removeClass('error'); return "";
        }
        else {
            $(element).addClass('error');
            return message;
        }
    }
    else {
        $(element).addClass('error');
        return message;
    }
}

function OnChangeClass(element, value) {
    if (value !== "" && value !== "undefined") {
        $(element).removeClass('error');
    }
    else {
        $(element).addClass('error');
    }
}

function OnChangeClass(element, value) {
    if (value !== "" && value !== "-1" && value !== "undefined") {
        $(element).removeClass('error');
    }
    else {
        $(element).addClass('error');
    }
}

// message styles

function BuildValidationMessage(str, MessageType) {
    var DivOk = "  <div id=\"DivAlertMessage\" class='alertMessageCustom' onclick=\"RemoveElement(this);\" style=\"margin: 10px auto;    text-align: left;    width: 80%;\"><div class=\"confirmbox\"><span class=\"ok\"></span>" + str + "</div></div>";
    var DivError = "   <div id=\"DivAlertMessage\" class='alertMessageCustom'  onclick=\"RemoveElement(this);\" style=\"margin: 10px auto;    text-align: left;    width: 80%;\"><div class=\"errorbox\"><span class=\"notok\"></span><ul>" + str + "</ul></div></div>";
    if (MessageType == 1) {
        return DivOk;
    }
    else {
        return DivError;
    }
}

//Rajesh::
function ValidateExtension(message, element, value) {
    var allowedFiles = [".jpg", ".jpeg", ".png", ".PNG", ".JPG", ".JPEG"];
    var fileUpload = document.getElementById(element);
    var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
    if (value == "" && value || "undefined" || !regex.test(fileUpload.value.toLowerCase())) {
        return message;
    }
    else {
        return "";
    }
}

function numeric(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && ((charCode >= 48 && charCode <= 57) || charCode == 46))
        return true;
    else {
        //alert('Please Enter Numeric values.');
        return false;
    }
}

function ValidateWebsite(message, element, value) {
    if (value !== "undefined") {
        var emailReg = '/^(http:\/\/www.|https:\/\/www.|ftp:\/\/www.|www.){1}([0-9A-Za-z]+\.)/';
        if (emailReg.test(value)) {
            $(element).removeClass('error'); return "";
        }
        else {
            $(element).addClass('error');
            return message;
        }
    }
    else {
        $(element).addClass('error');
        return message;
    }
}