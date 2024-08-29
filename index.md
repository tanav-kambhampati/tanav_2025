---
layout: base
title: Student Home 
description: Home Page
hide: true
---

<center style="font-size: 40px; color: orange;">
Hi, my name is tanav!
</center>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quote of the Day</title>
    <style>
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
    <!-- Quote of the Day Widget -->
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
</html>
