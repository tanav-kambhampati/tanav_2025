---
layout: page
title: About
permalink: /about/
---

  <title>About Me</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Comic Sans MS', sans-serif;
      background-color: #f0f0f0;
      color: #333;
      text-align: center;
      padding: 20px;
    }

    .container {
      max-width: 800px;
      margin: auto;
      background-color: white;
      padding: 2rem;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      border-radius: 10px;
      margin-bottom: 20px;
    }

    header {
      background-color: #ff8c00;
      color: white;
      padding: 1rem;
      font-size: 2rem;
      border-radius: 10px;
      margin-bottom: 20px;
    }

    h2 {
      color: #ff8c00;
      margin-bottom: 1rem;
      font-size: 1.8rem;
    }

    p {
      margin-bottom: 1rem;
      font-size: 1.1rem;
      line-height: 1.6;
    }

    /* Image Grid */
    .activities {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 20px;
      margin-top: 20px;
    }

    .activity {
      position: relative;
      cursor: pointer;
      transition: transform 0.3s;
    }

    .activity:hover {
      transform: scale(1.05);
    }

    .activity img {
      width: 100%;
      border-radius: 10px;
    }

    /* Hidden Activity Text */
    .activity-text {
      display: none;
      background-color: rgba(0, 0, 0, 0.7);
      color: white;
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 1.2rem;
      padding: 10px;
      border-radius: 10px;
    }

    footer {
      margin-top: 20px;
      font-size: 0.9rem;
      color: #666;
    }
  </style>


  <!-- Header Section -->
  <header>
    Hey! I'm Tanav 🌟
  </header>

  <!-- Introduction Section -->
  <div class="container">
    <section>
      <h2>Who Am I?</h2>
      <p style="color: black">who i am</p>
    </section>
  </div>

  <!-- Activities Section -->
  <div class="container">
    <section>
      <h2>What I like</h2>
      <div class="activities">
        <div class="activity" onclick="toggleText(this)">
          <img src="../images/piano.jpeg" alt="Activity 1">
          <div class="activity-text">I love to play the piano, and I have been playing for 5 years now. </div>
        </div>
        <div class="activity" onclick="toggleText(this)">
          <img src="../images/telugu.png" alt="Activity 2">
          <div class="activity-text">This is the language I speak at home, telugu. It is from south India</div>
        </div>
        <div class="activity" onclick="toggleText(this)">
          <img src="../images/basketball.jpeg" alt="Activity 3">
          <div class="activity-text">I also like to play basketball and follow the NBA</div>
        </div>
      </div>
    </section>
  </div>

  <!-- Goals Section -->
  <div class="container">
    <section>
      <h2>What's Next?</h2>
      <p style="color: black">I’m always chasing new adventures and trying to figure out what's next. Right now, I’m all about [your current goal or project], and who knows where that’ll take me! 🚀</p>
    </section>
  </div>

  <!-- Contact Section -->
  <div class="container">
    <section>
      <h2>Wanna Chat?</h2>
      <p>Whether it's about [something you're into, e.g., "coding," "rockets," "cats"] or just to say hi, feel free to reach out! You can email me at <a href="mailto:your-email@example.com" class="fun-button">your-email@example.com</a></p>
    </section>
  </div>

  <!-- Footer Section -->
  <footer>
    © 2024 [Your Name] | Powered by Coffee ☕
  </footer>

  <!-- JavaScript for Image Click -->
  <script>
    function toggleText(activity) {
      const text = activity.querySelector('.activity-text');
      if (text.style.display === 'flex') {
        text.style.display = 'none';
      } else {
        text.style.display = 'flex';
      }
    }
  </script>

</html>
