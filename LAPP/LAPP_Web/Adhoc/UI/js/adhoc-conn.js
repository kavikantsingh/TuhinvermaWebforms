$(document).ready(function() {

	$('#connForm').on('submit', function(event) {
		event.preventDefault();
	});

	//set port number as per user select database.
	if($("#ddlDatabase option:selected").val() == "SQLServer"){
			$("#port").val(1433);
	} 
	$('#ddlDatabase').on('change',function() {
		if($("#ddlDatabase option:selected").val() == "MySQL"){
			$("#port").val(3306);
		}  else{
			$("#port").val(1433);
		}
	});

	var SSL = "";
	$('input[type="checkbox"]').click(function(){
			if($("#chkSSL").is(":checked")){
				SSL = 1;
			}
			else
			{
				SSL = 0;
			}
	});

	$('#connForm').validate({
		errorPlacement: function(error,element) {
			error.appendTo( element.parent("div").next("div") );
		},
		rules : {
			ddlDatabase : {
				required : true
			},
			urlOrHostIp : {
				required : true,
				urlOrHostIp : true
			},
			databaseName : {
				required : true
			},
			instanceName : {
				instanceName : true
			},
			userName : {
				required : true,
				minlength : 4
			},
			password : {
				required : true,
				minlength : 6
			},
			port : {
				required : true,
				port : true
			}

		},
		messages: {
			ddlDatabase : {
				required : "*Please select database."
			},
			urlOrHostIp : {
				required : "*Please enter Host IP or URL.",
				urlOrHostIp : "Please enter valid Host IP or URL."
			},
			databaseName : {
				required : "*Please enter database name."
			},
			instanceName : {
				instanceName : "Enter only letters."
			},
			userName : {
				required : "*Please enter user name.",
				minlength : "User name must be at least 4 characters long."
			},
			password : {
				required : "*Please enter Password.",
				minlength : "Password must be at least 6 characters long."
			},
			port : {
				required : "*Please enter Port number.",
				port : "Please enter only numbers."
			}

		},
		highlight : function(element) {
			$(element).closest('.form-group')
					.removeClass('has-success')
					.addClass('has-error');
		},
		success : function(label, element) {
			$(element).closest('.form-group')
					.removeClass('has-error')
					.addClass('has-success');
		},
		submitHandler : function(form) {
			var checkvalid = $('#connForm').valid();	
			var ddlDatabase = $("#ddlDatabase option:selected").text();
			var databaseLocation = $("#databaseLocation").val();
			var urlOrHostIp = $("#urlOrHostIp").val();
			var databaseName = $("#databaseName").val();
			var instanceName = $("#instanceName").val();
			var userName = $("#userName").val();
			var password = $("#password").val();
			var port = $("#port").val();
			var formData = JSON.stringify($("#connForm").serializeArray());
			if (checkvalid) {
				$('#connModal').modal('show');
				//alert("Success");		
				$.ajax({
					type: "POST",
					//url: "serverUrl",
					data: formData,
					success: function(){},
					dataType: "json",
					contentType : "application/json"
				});

			} else {
				alert("Error");
			}

		}
	});

	//Validation methods for databse connection form.
	$.validator.addMethod("urlOrHostIp",function(value, element) {
		var hostIpRegex = /^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$/;
		//var urlRegex = /^(http|https|ftp):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/;
		var urlRegex = /^(http:\/\/www.|https:\/\/www.|ftp:\/\/www.|www.){1}([0-9A-Za-z]+\.)/;
		if(value.match(hostIpRegex)){
			return 1;
		} 
		else if(value.match(urlRegex)){
			return 1;
		} 
		else {
			return 0;
		}
	});
	$.validator.addMethod("databaseName",function(value, 
			element) {
		return value.match(/^[a-zA-Z]*$/);
	});
	$.validator.addMethod("instanceName",function(value, 
			element) {
		return value.match(/^[a-zA-Z]*$/);
	});
	$.validator.addMethod("port",function(value, 
			element) {
		return value.match(/^[0-9]*$/);
	});
});