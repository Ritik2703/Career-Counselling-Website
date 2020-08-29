<?php
session_start();
include("header.php");
?>
      	<div class="row space30"> <!-- row 1 begins -->
      
            <div class="col-md-6">
           	  <h2>ST.AGNES COLLEGE(Autonomous)</h2>
              	<p>St.Agnes college is premier catholic minority institution which from its inception has imparted higher education to the women of South India,It has ever since proved to be a standard bearer of repute in the field.
                The institution has the distinction of producing women graduates who hold positions in different spheres as educators,scientists,chartered accountants,middle and higher-level management professionals and service professionals.
                The college promotes sound social and family values that make for continuous the institution's internal upgradation,especially in the areas of teaching and learning,research and publication,faculty improvement and extension activities.Honours Programmes,certificate courses and minor research projects,conducted on a regular basis,keep the staff ever alert to the contemporary needs of society and the demands of the job market.The college took the initiative of submitting itself to the accreditation process conducted by the NAAC.It was the first institution in Mangalore University to do so.The college hasd the honour of being awarded a 'Five Star' grade.</p>
              	<p>Following the re-accreditation process as by the NAAC in 2005 and in 2012,the college earned an 'A' grade.It has,besides,been recognized as a 'College with Potential for Exellence' in 2006 by the U.G.C and been the recipient of the 'Jimmy and Roselyn Carter Foundation' Partnership Award for its path breaking work in the field of watershed management which has greatly benefited villages in the suburbs of Mangalore.</p>
                
              	<h3>Office Addresss</h3>
                <p>ST.AGNES COLLEGE<br>
               P.B.No.513,Bendor,<br>
               Mangalore-575 002
               TEL:0824-2218414
               E-mail:stagnes@gmail.com
               Website:www.stagnescollege.org</p>
                
                <h3>Career Guidance Cell</h3>
                <p>Lovina<br>
				Contact No:+919481974885</p>
            </div>
        
            <div class="col-md-6">
              	<h2>Contact Us</h2>
              	<p>You may send us a message below.</p>
                <?php
				if(isset($_POST[submit]))
				{
					echo "<h2>Mail sent successfully...</h2>";
				}
				else
				{
					?>
                <form role="form" name="form1" action="" method="post">
                  <div class="form-group">
                    <label for="name">Name:</label>
                    <input name="name" type="text" class="form-control" id="name" placeholder="Enter your name">
                  </div>
                  <div class="form-group">
                    <label for="email">Email:</label>
                    <input name="email" type="email" class="form-control" id="email" placeholder="Enter email">
                  </div>
                  <div class="form-group">
                    <label for="subject">Subject:</label>
                    <input name="subject" type="text" class="form-control" id="subject" placeholder="Enter your subject">
                  </div>
                  <div class="form-group">
                    <label for="message">Message:</label>
                  	<textarea name="message" rows="5" class="form-control" id="message" placeholder="Enter your message"></textarea>
				  </div>
                  <div class="checkbox">
                  
                  </div>
                  <input type="submit" name="submit" class="btn btn-default" value="Submit">
                </form>
				<?php
				}
				?>
           </div>
            
     	</div> <!-- /row 1 -->
    <?php
	include("footer.php");
	?>