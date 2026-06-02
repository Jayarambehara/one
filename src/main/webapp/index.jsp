<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ride App</title>

<style>
body {font-family: Arial; background:#f4f4f4; margin:0;}
.container{width:85%;margin:auto;}
.header{background:#111;color:white;padding:15px;text-align:center;}
.grid{display:flex;gap:20px;margin-top:20px;}
.card{background:white;padding:15px;border-radius:10px;width:30%;text-align:center;}
.card img{width:100%;height:160px;object-fit:cover;border-radius:10px;}
.price{color:green;font-weight:bold;}
.box{background:white;padding:20px;margin-top:20px;border-radius:10px;}
input{padding:10px;width:40%;margin-right:10px;}
button{padding:10px 15px;background:#00b894;border:none;color:white;border-radius:5px;}
</style>

</head>

<body>

<div class="header">
<h1>🚖 Ride Booking App</h1>
</div>

<div class="container">

<div class="box">
<h2>Book Ride</h2>
<input placeholder="Pickup">
<input placeholder="Drop">
<button>Find Ride</button>
</div>

<h2>Choose Ride</h2>

<div class="grid">

<div class="card">
<img src="${pageContext.request.contextPath}/images/bike.png">
<h3>Bike</h3>
<p class="price">₹89</p>
</div>

<div class="card">
<img src="${pageContext.request.contextPath}/images/auto.png">
<h3>Auto</h3>
<p class="price">₹129</p>
</div>

<div class="card">
<img src="${pageContext.request.contextPath}/images/cab.png">
<h3>Cab</h3>
<p class="price">₹249</p>
</div>

</div>

</div>

</body>
</html>
