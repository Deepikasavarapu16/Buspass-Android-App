var app = angular.module("myapp", ['ngCookies']);
app.controller("myappCtrl", function($scope, $cookieStore, $cookies, $http,$filter) 
{
	
/************************** Date Details ***********************************/
			
 $scope.ModifiedDate = $filter("date")(Date.now(), 'yyyy-MM-dd');

 /****************************************************************************/
/************************** Get Admin Details ***********************************/
/****************************************************************************/	
 
 
	$scope.cook_user_email = $cookieStore.get("cook_user_email");
	$scope.cook_user_type = $cookieStore.get("cook_user_type");
	$scope.cook_user_dept = $cookieStore.get("cook_user_dept");			
	$scope.cook_user_mail = $cookieStore.get("cook_user_mail");
	$scope.cook_user_mob = $cookieStore.get("cook_user_mob");
	$scope.cook_user_name = $cookieStore.get("cook_user_name");
	$scope.cook_user_desg = $cookieStore.get("cook_user_desg");
	$scope.cook_user_site = $cookieStore.get("cook_user_site");
	$scope.cook_user_area = $cookieStore.get("cook_user_area");

	$scope.user_logout = function() 
	{
		if(confirm("Are You Sure?"))
		{
			$cookies.cook_user_area = "";
			$cookies.cook_user_site = "";
			$cookies.cook_user_desg = "";
			$cookies.cook_user_name = "";
			$cookies.cook_user_mob = "";
			$cookies.cook_user_mail = "";
			$cookies.cook_user_email = "";
			$cookies.cook_admin_email="";
			$cookies.cook_user_type = "";
			$cookies.cook_user_dept = "";
			window.location = "index.html";
			return;
		}
		else
		{
			return false;
		}
	}
	

/****************************************************************************/
/************************Home page*********************************
/****************************************************************************/
	if(!$cookies.cook_user_email)
	{
		$scope.UserHomeVar = false; //hide
		$scope.HomeVar = true; //hide
	}
	else 
	{
		$scope.UserHomeVar = true; //show
		$scope.HomeVar = false; //hide
	}

/****************************************************************************/
/************************** Get My Survey ***********************************/
/****************************************************************************/

	$http.post('http://10.0.2.2/projects/buspass/web/get_employee.php')
	.success(function(data, status, headers, config) 
	{
		$scope.emp_details = data.details;
    });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_all_bus.php')
		.success(function(data, status, headers, config) 
		{
			$scope.all_bus_details = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_date.php')
	.success(function(data, status, headers, config) 
	{
		$scope.date_details = data.details;
	});
	
	$http.post('http://10.0.2.2/projects/buspass/web/get_user_ticket_last.php', 
		{
		'id':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
			$scope.user_ticket_details = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_all_ticket.php', 
		{
		'id':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
			$scope.all_ticket_details = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_user_grievance.php', 
		{
		'id':$scope.cook_user_mail
		})
		.success(function(data, status, headers, config) 
		{
			$scope.user_grievance_details = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_user_ticket.php', 
		{
		'id':$scope.cook_user_mail
		})
		.success(function(data, status, headers, config) 
		{
			$scope.user_ticket_details = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_user_redressal.php', 
		{
		'id':$scope.cook_user_type,'dept':$scope.cook_user_dept
		})
		.success(function(data, status, headers, config) 
		{
			$scope.user_redressal_details = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_hostel_redressal.php', 
		{
		'id':$scope.cook_user_type,'dept':$scope.cook_user_dept
		})
		.success(function(data, status, headers, config) 
		{
			$scope.hotel_redressal_details = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_food_redressal.php', 
		{
		'id':$scope.cook_user_type,'dept':$scope.cook_user_dept
		})
		.success(function(data, status, headers, config) 
		{
			$scope.food_redressal_details = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_all_college_redressal.php', 
		{
		'id':$scope.cook_user_dept
		})
		.success(function(data, status, headers, config) 
		{
			$scope.college_redressal_details = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_all_redressal.php')
		.success(function(data, status, headers, config) 
		{
			$scope.all_redressal_details = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_forward.php',{
			'dept':$scope.cook_user_dept,'type':$scope.cook_user_type
		})
		.success(function(data, status, headers, config) 
		{
			$scope.names = data.details;
        });
		
	$http.post('http://10.0.2.2/projects/buspass/web/get_category.php')
	.success(function(data, status, headers, config) 
	{
			$scope.category_details = data.details;
	});

/*
$scope.get_file_data = function() 
	{
 $http.get('upload.php')
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("File Responese Successfully");
				window.location = "user_home.html";
				return;				
			}
			else 
			{
				alert("Fill All Fields");
			}
        });
	}
*/

/****************************************************************************/
/************************** create_application **********************************/
/****************************************************************************/
	$scope.field_11="Nil";
	
	$scope.create_application = function() 
	{
		$scope.cook_user_dept_1 ="Nil";
		
		$http.post('http://10.0.2.2/projects/buspass/web/create_application.php', 
		{
		'field_1':$scope.ModifiedDate,'field_2':$scope.field_2,
		'field_3':$scope.cook_user_email,'field_4':$scope.cook_user_name,
		'site':$scope.cook_user_site,'area':$scope.cook_user_area,
		'type':$scope.cook_user_type,
		'field_5':$scope.cook_user_dept_1,'field_6':$scope.cook_user_mob,
		'field_7':$scope.cook_user_mail,'field_8':$scope.cook_user_desg,
		'field_9':$scope.field_9,'field_10':$scope.field_10,
		'field_11':$scope.field_11,'field_12':$scope.field_12
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Created Successfully");
				window.location = "my_application.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Fill All Fields");
			}
			else if(data.success == 3)
			{
				alert("Fill Min 5 char in Grievance ");
			}
			else if(data.success == 4)
			{
				alert("Mobile must be 10 digits ");
			}
			else
			{
				alert("Fill All Fields");
			}
        });
    }
	
	 

/****************************************************************************/
/************************** Forward grievance **********************************/
/****************************************************************************/
	
	$scope.create_hirarchy = function() 
	{
		$http.post('http://10.0.2.2/projects/buspass/web/create_hirarchy.php', 
		{
		'field_1':$scope.ModifiedDate,'field_2':$scope.field_2,
		'field_3':$scope.cook_user_email,'field_4':$scope.cook_user_name,
		'site':$scope.cook_user_site,'type':$scope.cook_user_type,
		'field_5':$scope.cook_user_dept,'field_6':$scope.cook_user_mob,
		'field_7':$scope.cook_user_mail,'field_8':$scope.cook_user_desg,
		'field_9':$scope.field_9,'field_10':$scope.field_10,
		'field_11':$scope.field_11,'field_12':$scope.field_12
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Created Successfully");
				window.location = "file_upload.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Fill All Fields");
			}
			else if(data.success == 3)
			{
				alert("Fill Min 5 char in Grievance ");
			}
			else
			{
				alert("Error");
			}
        });
    }
	
	 

/****************************************************************************/
/************************** read_notification  **********************************/
/****************************************************************************/
	
	$scope.read_notification = function() 
	{
		$http.post('http://10.0.2.2/projects/buspass/web/read_notification.php', 
		{
		'type':$scope.cook_user_type,'dept':$scope.cook_user_dept
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				window.location = "redressal.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Fill All Fields");
			}
			else if(data.success == 3)
			{
				alert("Fill Min 5 char in Grievance ");
			}
			else
			{
				alert("Error");
			}
        });
    }
	
	 

/****************************************************************************/
/************************** Application Get *********************************/
/****************************************************************************/

$scope.user_update_info = function(name,password,mobile) 
	{
		window.location = "user_info_edit.html";
		$cookieStore.put("cook_name",name);
		$cookieStore.put("cook_password",password);
		$cookieStore.put("cook_mobile",mobile);
		return;
	}	
	
	$scope.cook_name = $cookieStore.get("cook_name");
	$scope.cook_password = $cookieStore.get("cook_password");
	$scope.cook_mobile = $cookieStore.get("cook_mobile");

	$scope.save_update_info = function() 
	{		
		$http.post('http://10.0.2.2/projects/buspass/web/user_update_info.php',{
		 'name':$scope.cook_name, 'password':$scope.cook_password,
		 'mobile': $scope.cook_mobile, 'email': $scope.cook_user_email})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "user_update_info.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }

		 
/****************************************************************************/
/************************** Rating User  *********************************/
/****************************************************************************/

	$scope.grievance_rating = function(email) 
	{
		window.location = "user_rating.html";
		$cookieStore.put("cook_email",email);
		return;
	}	
	
	$scope.cook_email = $cookieStore.get("cook_email");

	$scope.save_rating = function() 
	{		
		$http.post('http://10.0.2.2/projects/buspass/web/save_rating.php',{
		 'email':$scope.cook_email, 'field_1':$scope.field_1,'field_2':$scope.comment
		 })
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "user_home.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }

/****************************************************************************/
/************************** update_grievance  **********************************/
/****************************************************************************/
		 
	$scope.update_grievance = function(email,field_21) 
	{		
		$http.post('http://10.0.2.2/projects/buspass/web/update_grievance.php',{
		 'email':email, 'field_1':field_21
		 })
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Updated successfully");
				window.location = "redressal.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }

/****************************************************************************/
/************************** delay_grievance  **********************************/
/****************************************************************************/
		 
	$scope.delay_grievance = function(email,delay) 
	{		
		$http.post('http://10.0.2.2/projects/buspass/web/delay_grievance.php',{
		 'email':email, 'field_1':delay
		 })
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Updated successfully");
				window.location = "redressal.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }

/****************************************************************************/
/************************** forward_grievance  **********************************/
/****************************************************************************/
		 
	$scope.forward_grievance = function(cus_id,field_9) 
	{		
		$http.post('http://10.0.2.2/projects/buspass/web/forward_grievance.php',{
		 'cus_id':cus_id, 'field_1':field_9,
		 'type':$scope.cook_user_type,'dept':$scope.cook_user_dept
		 })
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Forwarded successfully");
				window.location = "redressal.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else if(data.success == 3)
			{
				alert("Already Forwarded");
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }

/****************************************************************************/
/************************** Validation **********************************/
/****************************************************************************/
	$scope.er_email = true;
	// mobile number verification
	$scope.register_email = function()
	{
		var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		if(filter.test($scope.pimage))
		{
			$scope.er_email = true;
			$scope.btn_sgnup = false;
			$scope.btn_sgnin = false;
		}
		else
		{
			$scope.er_email = false;
			$scope.btn_sgnup = true;
			$scope.btn_sgnin = true;
		}
	}
	// mobile number verification
	$scope.login_email = function()
	{
		var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		if(filter.test($scope.log_email))
		{
			$scope.er_email = true;
			$scope.btn_sgnup = false;
			$scope.btn_sgnin = false;
		}
		else
		{
			$scope.er_email = false;
			$scope.btn_sgnup = true;
			$scope.btn_sgnin = true;
		}
	}
	
	$scope.er_mob = true;
	// mobile number verification
	$scope.mobile_no = function()
	{
		var filter = /^\d{10}$/;
		if(filter.test($scope.description))
		{
			$scope.er_mob = true;
			$scope.btn_sgnup = false;
		}
		else
		{
			$scope.er_mob = false;
			$scope.btn_sgnup = true;
		}
	}

	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");

	$scope.update_location = function() 
	{		
	
		//$scope.get_Latitude = document.getElementById('get_Latitude').value;
		//$scope.get_Longitude = document.getElementById('get_Longitude').value;
		
        $http.post('http://10.0.2.2/projects/buspass/web/update_location.php', 
			{	
			'field_1': $scope.field_1, 'field_2':$scope.field_2,
			'email':$scope.cook_cus_id
			})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Updated Successful");
				window.location = "view_bus.html";
				//location.reload(); 
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Login Unsuccessful");
			}
        });
    }
		 
/*****************************************************************************/
/************************** Update update_employee **************************/
/****************************************************************************/
	$scope.update_renewal = function(cus_id,field_1) 
	{
		
		$cookieStore.put("cook_cus_id",cus_id);
		$cookieStore.put("cook_field_1",field_1);
		window.location = "edit_renewal.html";
		return;
	}
	

	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");
	$scope.cook_field_1 = $cookieStore.get("cook_field_1");
	
	
	$scope.upload_file = function(cus_id) 
	{
		$cookieStore.put("cook_cus_id",cus_id);
		window.location = "file_1.html";
		return;
	}
	

	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");
	
	
	
$scope.save_renewal = function() 
	{
	$http.post('http://10.0.2.2/projects/buspass/web/save_renewal.php', 
			{
			'id': $scope.cook_cus_id,'email': $scope.cook_user_mail,
			'field_1': $scope.cook_field_1
			})
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			alert("Updated Successfully");
			window.location = "my_application.html";
			return;
		}
				else if(data.success == 2)
				{
					alert("Adding Unsuccessful");
				}
				else
				{
					alert("Fill All Fields");
				}
			
    });
	}
	
	
	
	$scope.update_student_status = function(user_id) 
	{
		window.location = "edit_status.html";
		$cookieStore.put("cook_user_id",user_id);
		return;
	}	
	
	$scope.cook_user_id = $cookieStore.get("cook_user_id");

	$scope.save_student_status = function() 
	{		
		$http.post('http://10.0.2.2/projects/buspass/web/save_student_status.php',{
		 'email':$scope.cook_user_id, 'field_1':$scope.field_1
		 })
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "college_home.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }

	
	
	
	
});