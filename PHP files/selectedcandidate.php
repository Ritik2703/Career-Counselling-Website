<?php
session_start();
include("dbconnection.php");
?>
<script language="javascript">
function validate()
{
	if(document.scform.Company.value=="Select")
	{
		alert("Please enter Company");
		return false;
	}
	else if(document.scform.jobid.value=="Select")
	{
		alert("Please enter Job details");
		return false;
	}
	else if(document.scform.stregno.value=="")
	{
		alert("Please enter student register number");
		document.scform.stregno.focus();
		return false;
	}
	else if(document.scform.Selecteddate.value=="")
	{
		alert("Please enter selected date");
		document.scform.Selecteddate.focus();
		return false;
	}
	else if(document.scform.Joiningdate.value=="")
	{
		alert("Please enter joining date");
		document.scform.Joiningdate.focus();
		return false;
	}
	else if(document.scform.Status.value=="select")
	{
		alert("Please enter status");
		return false;
	}
	else
	{
		return true;
	}
	
}
</script>
<?php
if($_POST[setid] == $_SESSION[setid])
{
if(isset($_POST[Submit]))
{
	$sqlins="INSERT into selectedcandidate(RegNo,JobId,SelectedDate,JoiningDate)VALUES('$_POST[stregno]','$_POST[jobid]','$_POST[Selecteddate]','$_POST[Joiningdate]')";

$queryresult  = mysqli_query($con,$sqlins);
			if(!$queryresult)
			{
				$qresult = "<font color='red'><strong>Failed to insert record in database...</strong></font>";
			}
			else
			{
				$qresult = "<font color='green'><strong>Selected candidate record inserted successfully..</strong></font>";
			}
	}
	
$sql="SELECT * FROM selectedcandidate";
$resselectedcandidate=mysqli_query($con,$sql);

}
$_SESSION[setid]=rand();

?>
 
 <p><strong><?php echo $msg; ?></strong></p>
 
 <script>
    function ConfirmDelete()
	{
		var result = confirm("Are you sure want to delete this record?");
		if (result==true) 
		{
			return true;
		}
		else
		{
			return false;
		}
	}
</script>
 
<?php
include("header.php");
?>             
      	<div class="row space30"> <!-- row 1 begins -->

      	  <?php
  include("adminsidebar.php");
  ?>
      	  <div class="col-xs-12 col-sm-6 col-lg-8">
           	<h2>Add Selected Candidate</h2>
                             <p><strong><?php echo $qresult; ?></strong></p>
            

<form  name="scform" action="" method="post" onSubmit="return validate()">
<input type="hidden" name="setid" value="<?php echo $_SESSION[setid]; ?>" />
<table  class="tftable" width="576" height="371" border="1">
<tr>
<th width="222">Company</th>
<td width="338">
<select name="Company">
<option value="Select">Select</option>
<?php
$sqlselcourse = "select * from companies";
$sqlquerycourse = mysqli_query($con, $sqlselcourse);
while($recs = mysqli_fetch_array($sqlquerycourse))
{
	if($recs[CompanyId] == $sqrec[CompanyId])
	{
	echo "<option value='$recs[CompanyId]' selected>$recs[CompanyName]</option>";
	}
	else
	{
	echo "<option value='$recs[CompanyId]'>$recs[CompanyName]</option>";
	}
}
?>
</select>
</td></tr>
<tr><th>Job Details</th>
  <td>
  <select name="jobid">
  <option value="Select">Select</option>
  <?php
$sqlselcourse = "select * from jobs";
$sqlquerycourse = mysqli_query($con, $sqlselcourse);
while($recs = mysqli_fetch_array($sqlquerycourse))
{
	echo "<option value='$recs[JobId]'>Job code-$recs[JobId] : $recs[JobTitle]</option>";
}
?>
  </select>
</td></tr>
<tr><th>Student Registration No.</th>
  <td><label for="stregno"></label>
    <input name="stregno" type="text" id="stregno" size="35"></td></tr>
<tr><th>Selecteddate</th>
<td><input type="date" name="Selecteddate" size="30" />
</td></tr>
<tr><th>Joiningdate</th>
  <td><input type="date" name="Joiningdate" size="30" />
</td></tr>
<tr>
  <td colspan="2" align="center"><input name="Submit" type="submit" value="Submit">
</td></tr></table></form>

          </div>
            
     	</div> <!-- /row 1 --><!-- /row 2 -->
<?php 
include("footer.php");
?>
