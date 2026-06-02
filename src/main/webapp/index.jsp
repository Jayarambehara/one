<section class="hero">
    <div class="container">
        <h1>Book a Ride in Minutes</h1>

        <div class="ride-box">
            <input type="text" id="pickup"
                placeholder="Enter Pickup Location">

            <input type="text" id="drop"
                placeholder="Enter Destination">

            <button onclick="findRide()">
                Find Ride
            </button>
        </div>
    </div>
</section>

<section class="section container">

    <h2>Choose Your Ride</h2>

    <div class="grid products">

        <div class="product">
            <img src="bike.png">
            <div class="product-body">
                <h5>Bike</h5>
                <p>₹89</p>
            </div>
            <div class="product-footer">
                <button class="add-btn">
                    Book Bike
                </button>
            </div>
        </div>

        <div class="product">
            <img src="auto.png">
            <div class="product-body">
                <h5>Auto</h5>
                <p>₹129</p>
            </div>
            <div class="product-footer">
                <button class="add-btn">
                    Book Auto
                </button>
            </div>
        </div>

        <div class="product">
            <img src="cab.png">
            <div class="product-body">
                <h5>Cab</h5>
                <p>₹249</p>
            </div>
            <div class="product-footer">
                <button class="add-btn">
                    Book Cab
                </button>
            </div>
        </div>

    </div>

</section>
