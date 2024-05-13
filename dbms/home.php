    <style>
#filter-book {
 
  position: 	absolute;
  border-radius: 25px;
  margin-top: 90px;
  transition: transform .2s;
  border-width: 5px;
}
#filter-book:hover{
	background-color:#ebeef2;
	transform: scale(1.05); 
}
.form-control.datepicker{
	
  border-radius: 50px;
}

	

.btn{
  background-color: red;
  
  width: 200px;
  height: 40px;
  
  border: 0 solid #e2e8f0;
  border-radius: 1.5rem;
margin-left: 70px;
}

.btn:hover {

  background-color: #1e293b;
  color: #fff;


}
</style>
        <header class="masthead" >
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end mb-4">
					<div class="card" id="filter-book" style="opacity:0.9;">
                    		<div class="card-body" >
                    			<div class="container-fluid">
                    				<form action="index.php?page=list" id="filter"  method="POST">
                    					<div class="row" >
                    						<div class="col-md-3" >
                    							<label for="">Check-in Date</label>
                    							<input type="text" class="form-control datepicker" name="date_in" autocomplete="off">
                    						</div>
                    						<div class="col-md-3">
                    							<label for="">Check-out Date</label>
                    							<input type="text" class="form-control datepicker" name="date_out" autocomplete="off" style="opacity:default">
                    						</div>
                    						
                    						<div class="col-md-3">
                    							<br>
                    							<button class="btn">Check Availability</button>
                    						</div>

                    					</div>
                    				</form>
                    			</div>
                    		</div>
                    	</div>
                    </div>
                    
                </div>
            </div>
        </header>
	<section class="page-section">
        </section>
	<div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row no-gutters">
                	<?php 
                	include'db_connect.php';
                	$qry = $conn->query("SELECT * FROM  room_categories ");
                	while($row = $qry->fetch_assoc()):
                	?>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="#">
                            <img class="img-fluid" src="img/<?php echo $row['cover_img'] ?>" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-30"><?php echo "$ ".number_format($row['price'],2) ?> per day</div>
                                <div class="project-name"><?php echo $row['name'] ?></div>
                            </div>
                        </a>
                    </div>
                	<?php endwhile; ?>

                </div>
            </div>
        </div>
