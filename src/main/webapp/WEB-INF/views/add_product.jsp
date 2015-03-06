<!DOCTYPE HTML>
<html>
<head>
  <title>Personal Kitchen</title>
  <link href="resources/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
  <link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
  <link href="resources/css/theme.css" rel='stylesheet' type='text/css' />
  <link href="resources/css/custom.css" rel='stylesheet' type='text/css' />

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
<!--webfonts-->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/custom.js"></script>
<!-- Star Rating plugin -->
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
<link href="resources/css/raterater.css" rel="stylesheet"/>
<script src="resources/js/raterater.jquery.js"></script> 
<!-- start details -->
<!--details-product-slider-->
<!-- Include the Etalage files -->
<link rel="stylesheet" href="resources/css/etalage.css">
<script src="resources/js/jquery.etalage.min.js"></script>
</head>
<body>
<jsp:directive.include file="header.html" />

  <div class="container">
   <div class="row">
    <div class="col-md-12">
      <h1> Submit Food Item Details </h1>
   </div>
 </div>

<div class="row" style="margin:2%">
  <form class="form-horizontal">
  <div class="col-md-6">
   <fieldset>
   <legend>Personal Details</legend>
   <div class="form-group">
    <label for="name" class="col-sm-3 control-label">Full Name</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="name" placeholder="Neelam">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="email">Email</label>
    <div class="col-sm-9">
      <input id="email" name="email" type="email" placeholder="akash@gmail.com" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="phone">Mobile No.</label>
    <div class="col-sm-9">
      <input id="phone" name="phone" type="text" placeholder="9999888822" class="form-control" required="">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="addr_line1">Address</label>
    <div class="col-sm-9">
      <input id="addr_line1" name="addr_line1" type="text" placeholder="K-1, First Floor" class="form-control" required="">
      <p class="help-block"><b>*Will be used as Pick Up Address for the food item</b></p>
    </div>
  </div>
   </fieldset>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="addr_line2"></label>
    <div class="col-sm-9">
      <input id="addr_line2" name="addr_line2" type="text" placeholder="Sector 18" class="form-control" required="">
      <p class="help-block">Locality</p>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="addr_city">City</label>
    <div class="col-sm-9">
      <input id="addr_city" name="addr_city" type="text" placeholder="Gurgaon" class="form-control" required="">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="addr_state">State</label>
    <div class="col-sm-9">
      <input id="addr_state" name="addr_state" type="text" placeholder="Haryana" class="form-control" required="">
    </div>
  </div>

  <!-- Text input-->
  <div class="form-group">
    <label class="col-sm-3 control-label" for="addr_pincode">Pincode</label>
    <div class="col-sm-9">
      <input id="addr_pincode" name="addr_pincode" type="text" placeholder="122001" class="form-control">
    </div>
  </div>
</fieldset>
<!--   <div class="form-group">
    <div class="col-sm-offset-8 col-sm-4">
      <button type="submit" class="btn btn-default">Confirm Order</button>
    </div>
  </div> -->
</div>


<div class="col-md-6">
   <fieldset>
   <legend>Food Item Details</legend>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="item_title">Upload Image</label>
    <div class="col-sm-9">
      <input id="item_title" name="item_title" type="file">
    </div>
  </div>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="item_title">Title</label>
    <div class="col-sm-9">
      <input id="item_title" name="item_title" type="text" placeholder="Dish Name" class="form-control">
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-3 control-label" for="item_desc">Description</label>
    <div class="col-sm-9">
      <textarea id="item_desc" name="item_desc" class="form-control" rows="3"></textarea>
    </div>
  </div>

 <div class="form-group">
        <label for="item_price" class="col-sm-3 control-label">Price</label>
    <div class="input-group col-sm-9"> 
        <span class="input-group-addon">&#8377;</span>
        <input type="number" value="100" min="1" step="1" data-number-to-fixed="2" data-number-stepfactor="100" class="form-control currency" id="item_price" />
    </div>
    <div class="col-sm-9 col-sm-offset-3">
    <p class="help-block"><b>*Price per serving</b></p>
  </div>
  </div>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="item_quant">Max Servings</label>
    <div class="col-sm-9">
      <input id="item_quant" name="item_quant" type="number" placeholder="Maximum number of servings you plan on cooking" class="form-control">
      <p class="help-block"><b>*Orders will not be accepted once the limit is reached</b></p>
    </div>
  </div>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="item_valid_from">Valid From</label>
    <div class="col-sm-9">
      <input id="item_valid_from" name="item_valid_from" type="datetime-local" class="form-control">
      <p class="help-block"><b>*Orders will be accepted only after given time</b></p>
    </div>
  </div>

   <div class="form-group">
    <label class="col-sm-3 control-label" for="item_valid_till">Valid Till</label>
    <div class="col-sm-9">
      <input id="item_valid_till" name="item_valid_till" type="datetime-local" class="form-control">
      <p class="help-block"><b>*Orders will not be accepted after given time</b></p>
    </div>
  </div>


</fieldset>
<!--   <div class="form-group">
    <div class="col-sm-offset-8 col-sm-4">
      <button type="submit" class="btn btn-default">Confirm Order</button>
    </div>
  </div> -->
</div>
</form>
</div>
</div>

<jsp:directive.include file="footer.html" />
</body>
</html>