<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ride Booking App</title>

    <style>
        body {
            font-family: Arial;
            margin: 0;
            background: #f4f4f4;
        }

        .header {
            background: #111;
            color: white;
            padding: 15px;
            text-align: center;
        }

        .container {
            width: 80%;
            margin: auto;
        }

        .box {
            margin-top: 30px;
            background: white;
            padding: 20px;
            border-radius: 10px;
        }

        input {
            padding: 10px;
            width: 40%;
            margin-right: 10px;
        }

        button {
            padding: 10px 15px;
            background: #00b894;
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }

        .grid {
            display: flex;
            gap: 20px;
            margin-top: 20px;
        }

        .card {
            background: white;
            padding: 15px;
            border-radius: 10px;
            width: 30%;
            text-align: center;
        }

        .card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 10px;
        }

        .price {
            color: green;
            font-weight: bold;
            font-size: 18px;
        }
    </style>
</head>

<body>

<div class="header">
    <h1>🚖 Ride Booking App</h1>
</div>

<div class="container">

    <div class="box">
        <h2>Book Your Ride</h2>

        <form action="book" method="post">
            <input type="text" name="pickup" placeholder="Pickup Location" required>
            <input type="text" name="drop" placeholder="Drop Location" required>
            <button type="submit">Find Ride</button>
        </form>
    </div>

    <h2 style="margin-top:30px;">Choose Ride</h2>

    <div class="grid">

        <div class="card">
            <img src="images/bike.png">
            <h3>Bike</h3>
            <p class="price">₹89</p>
            <button>Book Bike</button>
        </div>

        <div class="card">
            <img src="images/auto.png">
            <h3>Auto</h3>
            <p class="price">₹129</p>
            <button>Book Auto</button>
        </div>

        <div class="card">
            <img src="images/cab.png">
            <h3>Cab</h3>
            <p class="price">₹249</p>
            <button>Book Cab</button>
        </div>

    </div>

</div>

</body>
</html>
