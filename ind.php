<?php
include "../class/users.php";
$cat=new users;
$category=$cat->cat_shows();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">&emsp;Welcome_Admin</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
       
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

  

    
          <h1 class="page-header">Add_Quiz_Form</h1>
		  

       
          <div class="table-responsive">
		  
            <table class="table table-striped">
			<?php
			if(isset($_GET['msg']) && !empty($_GET['msg']))
			{
				echo "<p>data insert successfully</p>";
			}
			
			?>
				<form method="post" action="add_quiz.php">
				<div class="form-group">
				<label for="text">Question</label>
				<input type="text" class="form-control" name="qus" placeholder="Enter Question">
				</div>
				
				<div class="form-group">
				<label for="text">option_1</label>
				<input type="text" class="form-control" name="op1"  placeholder="Enter option_1">
				</div>
				
				<div class="form-group">
				<label for="text">option_2</label>
				<input type="text" class="form-control" name="op2"  placeholder="Enter option_2">
				</div>
				
				<div class="form-group">
				<label for="text">option_3</label>
				<input type="text" class="form-control" name="op3"  placeholder="Enter option_3">
				</div>
				
				<div class="form-group">
				<label for="text">option_4</label>
				<input type="text" class="form-control" name="op4" placeholder="Enter option_4">
				</div>
				
				<div class="form-group">
				<label for="text">answer</label>
				<input type="text" class="form-control" name="ans"  placeholder="Enter ans">
				</div>
				
				<div class="form-group">
				
				<select class="form-control" id="sell" name="cat">
				  <option value="">Choose_Category</option>
				  <?php
				  foreach($category as $c)
				  {
					  echo "<option value=".$c['id'].">".$c['cat_name']."</option>";
				  
				  }
				  ?>
			
				</select>
				
				</div>
				
				
				
				<button type="submit" class="btn btn-default">Submit</button><br>
				</form>
              
            </table>
          </div>
        </div>


</body>
</html>
