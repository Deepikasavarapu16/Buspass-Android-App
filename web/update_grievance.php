<?php
/*********************
**** CPanel ******************
*********/

/* Following register will admin login credentials */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


$data = json_decode(file_get_contents("php://input"));

$get_id =  ($data->email);
$get_field_1 = ($data->field_1);
$get_field_5 = ($data->field_5);
$get_field_13 =  ($data->field_13);
$get_field_15 =  ($data->field_15);
$get_field_16 =  ($data->field_16);
$get_created_date = date('Y-m-d');

if( empty($get_field_1) || empty($get_field_5)|| empty($get_field_13) || empty($get_id)  )
{
	$response["success"] = 2;
	echo json_encode($response);
}
else
{
	
	$result = mysqli_query($conn,"UPDATE pass SET field_21='$get_field_1',	field_5='$get_field_5',
				closing_date='$get_created_date',  field_13='$get_field_13', 
				field_15='$get_field_15',  field_16='$get_field_16'
				WHERE email = '$get_id' ");
	
	$result2 = mysqli_query($conn,"SELECT  * FROM pass WHERE email='$get_id'");
	$Allsurvey = mysqli_fetch_array($result2);
	$get_email = $Allsurvey["field_7"] ;
	
	// check for empty result
	if($result)
	{
			if ( (strcmp($get_field_1 ,"Approve")==0) ) 
			{
				mysqli_query($conn,"UPDATE login SET field_3=field_3-'$get_field_5' WHERE email = '$get_email' ");		
			}
			else 
			{
					null;
			}


		// success
		$response["success"] = 1;		
		// echoing JSON response
		echo json_encode($response);
		
		
	}
	else 
	{
		// unsuccess
		$response["success"] = 0;		
		// echoing JSON response
		echo json_encode($response);
	}
}
?>