<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>SpiceHub — Restaurant</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
--primary:#0a2540;
--accent:#ff6b35;
--bg:#fff;
--surface:#f6f6f6;
--radius:12px;
}

body{margin:0;font-family:Inter;background:var(--bg);color:var(--primary)}
.container{max-width:1200px;margin:auto;padding:0 20px}

/* Header */
header{position:sticky;top:0;background:white;border-bottom:1px solid #eee;z-index:10}
.header-inner{display:flex;justify-content:space-between;align-items:center;padding:14px 0}
.brand{font-family:Poppins;font-weight:700;font-size:20px}
.brand span{color:var(--accent)}

nav ul{display:flex;gap:15px;list-style:none;padding:0}
nav a{text-decoration:none;color:var(--primary)}

/* Hero */
.hero{
background:url('https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=1400&q=80') center/cover;
color:white;text-align:center;padding:80px 20px;border-radius:12px
}
.hero h1{font-size:40px}

/* Grid */
.grid{display:grid;gap:20px}
.categories{grid-template-columns:repeat(4,1fr);margin-top:20px}
.menu{grid-template-columns:repeat(3,1fr);margin-top:20px}

/* Card */
.card{
background:white;border-radius:12px;overflow:hidden;
box-shadow:0 5px 15px rgba(0,0,0,.05)
}
.card img{width:100%;height:180px;object-fit:cover}
.card-body{padding:12px}
.price{font-weight:700;color:var(--accent)}
.btn{
background:var(--primary);color:white;border:none;
padding:10px;width:100%;cursor:pointer;border-radius:8px
}

/* Cart */
.cart{
position:relative
}
.cart-count{
position:absolute;top:-8px;right:-8px;background:var(--accent);
color:white;border-radius:50%;width:18px;height:18px;
display:flex;align-items:center;justify-content:center;font-size:12px
}

/* Responsive */
@media(max-width:900px){
.menu{grid-template-columns:repeat(2,1fr)}
.categories{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:600px){
.menu{grid-template-columns:1fr}
}
</style>
</head>

<body>

<header>
<div class="container header-inner">
<div class="brand">Spice<span>Hub</span></div>

<nav>
<ul>
<li><a href="#">Home</a></li>
<li><a href="#menu">Menu</a></li>
<li><a href="#about">About</a></li>
</ul>
</nav>

<div class="cart">
<i class="fas fa-shopping-cart"></i>
<div class="cart-count" id="cartCount">0</div>
</div>
</div>
</header>

<!-- HERO -->
<section class="hero container">
<h1>Delicious Food Delivered Fast</h1>
<p>Fresh meals, tasty snacks & authentic flavors</p>
</section>

<!-- CATEGORIES -->
<section class="container">
<h2>Categories</h2>
<div class="grid categories" id="catGrid"></div>
</section>

<!-- MENU -->
<section class="container" id="menu">
<h2>Popular Menu</h2>
<div class="grid menu" id="menuGrid"></div>
</section>

<script>
const CATEGORIES=[
{ name:"Biryani", icon:"fa-bowl-rice" },
{ name:"Pizza", icon:"fa-pizza-slice" },
{ name:"Burger", icon:"fa-hamburger" },
{ name:"Drinks", icon:"fa-mug-hot" }
];

const MENU=[
{ id:1, name:"Chicken Biryani", price:220, img:"https://images.unsplash.com/photo-1604908177522-040a0f1b5b8c?auto=format&fit=crop&w=600&q=80", cat:"Biryani" },
{ id:2, name:"Veg Biryani", price:180, img:"https://images.unsplash.com/photo-1631515243349-e0cb75fb8d1b?auto=format&fit=crop&w=600&q=80", cat:"Biryani" },
{ id:3, name:"Cheese Pizza", price:299, img:"https://images.unsplash.com/photo-1548365328-8b849e5a3f4f?auto=format&fit=crop&w=600&q=80", cat:"Pizza" },
{ id:4, name:"Chicken Burger", price:149, img:"https://images.unsplash.com/photo-1550547660-d9450f859349?auto=format&fit=crop&w=600&q=80", cat:"Burger" },
{ id:5, name:"Cold Coffee", price:99, img:"https://images.unsplash.com/photo-1511920170033-f8396924c348?auto=format&fit=crop&w=600&q=80", cat:"Drinks" }
];

let cart=0;

function renderCategories(){
const catGrid=document.getElementById("catGrid");
catGrid.innerHTML="";
CATEGORIES.forEach(c=>{
const div=document.createElement("div");
div.className="card";
div.innerHTML=`
<div style="padding:20px;text-align:center">
<i class="fas ${c.icon}" style="font-size:30px;color:var(--accent)"></i>
<h3>${c.name}</h3>
</div>`;
div.onclick=()=>filterMenu(c.name);
catGrid.appendChild(div);
});
}

function renderMenu(list){
const menu=document.getElementById("menuGrid");
menu.innerHTML="";
list.forEach(item=>{
const div=document.createElement("div");
div.className="card";
div.innerHTML=`
<img src="${item.img}">
<div class="card-body">
<h3>${item.name}</h3>
<p class="price">₹${item.price}</p>
<button class="btn" onclick="addCart()">Add to Cart</button>
</div>`;
menu.appendChild(div);
});
}

function filterMenu(cat){
renderMenu(MENU.filter(m=>m.cat===cat));
}

function addCart(){
cart++;
document.getElementById("cartCount").innerText=cart;
}

renderCategories();
renderMenu(MENU);
</script>

</body>
</html>
