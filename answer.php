<?php
include("class/users.php");
$ans=new users;
$answer=$ans->answer($_POST); 
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta character="UTF-8">
	<title>answer</title>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
</head>
<body>

    <center>

	<?php
	$total_qus=$answer['right']+$answer['wrong']+$answer['no_answer'];
	$attempt_qus=$answer['right']+$answer['wrong'];
	?>
	<div class="container">
	<div class="row">
	<ul class="nav nav-tabs">
	<li><a href="home.php">Home</a></li>
		<li><a href="#">Back</a></li>
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
	<h2>Quiz_Result</h2>
	 <table class="table table-hover">
	  <table class="table table-bordered">
	 <!table class="table table-striped">
		 
		  <thead>
		    <tr class>
		       <th>Total_Number_Of_Questions</th>
				<th><?php echo $total_qus; ?></th>
			</tr>
		  </thead>
		
		  <tbody>
			<tr>
				<td>Attempted Questions</td>
				<td><?php echo $attempt_qus; ?></td>
			</tr>
				<tr>
					<td>Right Answers</td>
					<td><?php echo $answer['right']; ?></td>
				</tr>
					<td>Wrong Answers</td>
					<td><?php echo $answer['wrong']; ?></td>
				</tr>
				
			</tr>
				<td>No Answers</td>
					<td><?php echo $answer['no_answer']; ?></td>
			</tr>
			
				
			</tr>
				<td>Your_Result</td>
					<td><?php 
					$per=($answer['right']*100)/($total_qus);

                     echo $per."%";

					?></td>
			</tr>
			
			
		   </tbody>
		    </table>
			 </table>
		   </table></div>
		   <div class="col-sm-2"></div>
		   </div>
		   
		   <div class="panel panel-default">
				<div class="panel-footer">&copy; copyright<p style="float:right">Developed by Rnkh</p></div>
			</div>
	
	
     </center>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>