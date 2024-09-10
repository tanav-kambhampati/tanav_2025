---
layout: base
title: Student Home 
description: Home Page
hide: true
---



<center style="font-size: 40px; color: orange;">
Hi, my name is Tanav!
</center>




<head>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>

    <!-- Three.js for 3D rendering -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/loaders/STLLoader.js"></script>

    <style>
        #map {
            height: 100vh;
        }

    
        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.5);
        }
        
        .modal-content {
            background-color: white;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 50%;
            height: 400px;
            position: relative;
        }

        #stl-viewer {
            width: 100%;
            height: 100%;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

         /* Isolated Styles */
        .quote-container {
            background-color: orange;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 600px;
            margin: 0 auto;
        }

        .quote-container .quote {
            font-size: 1.5rem;
            color: #333333;
            margin-bottom: 10px;
        }

        .quote-container .author {
            font-size: 1.2rem;
            font-weight: bold;
            color: #555555;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="quote-container">
        <div id="quote" class="quote"></div>
        <div id="author" class="author"></div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const quotes = [
                {
                    quote: "The only way to do great work is to love what you do.",
                    author: "Steve Jobs"
                },
                {
                    quote: "Success is not the key to happiness. Happiness is the key to success.",
                    author: "Albert Schweitzer"
                },
                {
                    quote: "Believe you can and you're halfway there.",
                    author: "Theodore Roosevelt"
                },
                {
                    quote: "Your time is limited, don't waste it living someone else's life.",
                    author: "Steve Jobs"
                },
                {
                    quote: "The best way to predict the future is to invent it.",
                    author: "Alan Kay"
                }
            ];

            function displayRandomQuote() {
                const randomIndex = Math.floor(Math.random() * quotes.length);
                const randomQuote = quotes[randomIndex];
                document.getElementById('quote').textContent = randomQuote.quote;
                document.getElementById('author').textContent = `- ${randomQuote.author}`;
            }

            displayRandomQuote();
        });
    </script>
</body>
<body>



    <div id="map"></div>

    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <div id="stl-viewer"></div>
        </div>
    </div>

    <script>
        // Initialize Leaflet map
        var map = L.map('map').setView([20.0, 0.0], 2); // Centered on world

        // Add OpenStreetMap tile layer
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; OpenStreetMap contributors'
        }).addTo(map);

        // Coordinates for the locations
        var locations = [
            { name: "Andhra Pradesh", coords: [15.9129, 79.7400], stlFile: 'andhra.stl' },
            { name: "Hong Kong", coords: [22.3193, 114.1694], stlFile: 'hongkong.stl' },
            { name: "Georgia", coords: [32.1656, -82.9001], stlFile: 'georgia.stl' },
            { name: "Kenya", coords: [-1.2921, 36.8219], stlFile: 'kenya.stl' }
        ];

        // Modal and STL viewer elements
        var modal = document.getElementById("myModal");
        var span = document.getElementsByClassName("close")[0];
        var viewer = document.getElementById("stl-viewer");

        // Close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }

        // Close modal when clicking outside of the modal
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        // Load STL file into viewer using Three.js
        function loadSTL(file) {
            viewer.innerHTML = ''; // Clear any previous render
            var scene = new THREE.Scene();
            var camera = new THREE.PerspectiveCamera(75, viewer.clientWidth / viewer.clientHeight, 0.1, 1000);
            var renderer = new THREE.WebGLRenderer();
            renderer.setSize(viewer.clientWidth, viewer.clientHeight);
            viewer.appendChild(renderer.domElement);

            var loader = new THREE.STLLoader();
            loader.load(file, function (geometry) {
                var material = new THREE.MeshNormalMaterial();
                var mesh = new THREE.Mesh(geometry, material);
                scene.add(mesh);
                camera.position.z = 75;
                var animate = function () {
                    requestAnimationFrame(animate);
                    mesh.rotation.x += 0.01;
                    mesh.rotation.y += 0.01;
                    renderer.render(scene, camera);
                };
                animate();
            });
        }

        // Add markers for each location
        locations.forEach(function(location) {
            var marker = L.marker(location.coords).addTo(map);
            marker.bindPopup(location.name);

            marker.on('click', function() {
                modal.style.display = "block";
                loadSTL(location.stlFile);  // Load corresponding STL file
            });
        });
    </script>

</body>

