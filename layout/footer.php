<footer>
  <div class="container">
    <div class="logo">
      <a href=""><img src="images/logo.png" alt="Logo"></a>
      <div class="time">
        <a href="https://time.is/Vietnam" id="time_is_link" rel="nofollow"></a>
        <span id="Vietnam_z418" class="time-display"></span>
        <script src="//widget.time.is/t.js"></script>
        <script>
          time_is_widget.init({
            Vietnam_z418: {}
          });
        </script>
      </div>
    </div>
    <div class="link">
      <div class="col">
        <a href="/about.php">Về chúng tôi</a>
        <a href="https://hoanghai.site">Blogs</a>
      </div>
      <div class="col">
        <a href="mailto:taphoasieuxe@gmail.com">Email: taphoasieuxe@gmail.com</a>
        <a href="tel:+0123456789">Số điện thoại: 0123456789</a>
      </div>
      <div class="col">
        <a href="">Trung tâm hỗ trợ</a>
        <a href="">Câu hỏi thường gặp</a>
      </div>
      <div class="icon">
        <a href=""><i class="fab fa-facebook-square"></i></a>
        <a href=""><i class="fab fa-instagram-square"></i></a>
        <a href=""><i class="fab fa-twitter-square"></i></a>
      </div>
    </div>
  </div>
</footer>

<style>
  footer {
  background-color: #a2a2a2;
  width: 100%;
  margin-top: 1rem;
  color: white;
  font-family: "Encode Sans SC", sans-serif;
}

footer .container {
  width: 90%;
  margin: 0 auto;
  display: flex;
  flex-direction: column;
}

footer .logo {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 20px 0;
  border-bottom: 1px solid white;
}

footer .logo img {
  width: 200px;
  height: auto;
  margin-bottom: 10px;
}

footer .logo .time {
  font-family: "Bebas Neue", cursive;
  color: white;
  font-size: 40px;
  background: linear-gradient(90deg, #FFD700, #FF4500);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  padding: 10px 20px;
  border: 2px solid #FFD700;
  border-radius: 10px;
  display: inline-block;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
  margin-top: 10px;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

footer .logo .time:hover {
  transform: scale(1.1);
  box-shadow: 0 6px 15px rgba(0, 0, 0, 0.5);
}


footer .link {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
  padding: 30px 0;
  border-bottom: 1px solid white;
}

footer .link .col a {
  color: white;
  font-weight: bold;
  text-decoration: none;
  padding: 10px 0;
}

footer .link .col a:hover {
  color: rgb(224, 247, 222);
}

footer .link .icon {
  display: flex;
  gap: 10px;
}

footer .link .icon a {
  font-size: 40px;
}

footer .bottom {
  padding: 20px 0;
  text-align: center;
  font-size: 14px;
}

@media (max-width: 768px) {
  footer .link {
    grid-template-columns: repeat(2, 1fr);
  }

  footer .logo img {
    width: 100px;
  }
}

@media (max-width: 480px) {
  footer .link {
    grid-template-columns: 1fr;
  }

  footer .logo .time {
    font-size: 30px;
  }
}


</style>