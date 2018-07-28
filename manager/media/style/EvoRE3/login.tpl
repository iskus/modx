<!DOCTYPE html>
<html>

<head>
  <title>[(site_name)] (Evolution CMS Manager Login)</title>
  <meta http-equiv="content-type" content="text/html; charset=[+modx_charset+]" />
  <meta name="robots" content="noindex, nofollow" />
  <meta name="viewport" content="width=device-width">
  <link rel="icon" type="image/ico" href="[+favicon+]" />
  <link rel="stylesheet" type="text/css" href="media/style/[(manager_theme)]/style.css" />
  <style>
    html,
    body {
      min-height: 100%;
      height: 100%;
    }

    body,
    body.dark {
      background-color: #2a313b !important;
      background-image: url('media/style/[(manager_theme)]/images/login-bg.jpg') !important;
      background-size: cover !important;
      background-position: center !important;
      background-repeat: no-repeat !important;
      background-attachment: fixed !important;
    }
    @media (max-width: 479px) {
      body,
      body.dark {
        background-image: none !important;
      }
    }

    .page {
      height: 100%;
    }

    .loginbox,
    .dark .loginbox {
      background-color: rgba(0,0,0,0.85);
      transition: background ease-in-out .3s;
    }
    @media (max-width: 479px) {
      .loginbox,
      .dark .loginbox {
        background-color: transparent;
      }
    }

    .loginbox {
      width: 100%;
      min-height: 100vh;
    }
    
    .container-body {
      padding: 1.75rem;
    }
    
    @media (min-width: 480px) {
      .container-body {
        padding: 2.5rem;
      }
    }
    
    #loginfrm a {
      color: #818a91;
    }

    .copyrights {
      width: 100%;
      padding: .5rem 1.5rem 1.5rem 1.75rem;
      font-size: .675rem;
      color: #aaa;
      text-align: left;
      background-color: rgba(0,0,0,0.15);
    }
    
    @media (min-width: 480px) {
      .copyrights {
        padding-left: 2.5rem;
      }
    }

    @media (min-width: 480px) {
      .loginbox,
      .copyrights {
        max-width: 25rem;
      }
    }

    @media (min-width: 768px) {
      .copyrights {
        position: fixed;
        right: 0;
        bottom: 0;
        width: auto;
        max-width: none;
        text-align: right;
        background-color: transparent;
      }
    }

    .copyrights a {
      color: #fff
    }
    
    .btn,
    #FMP-email_button {
      border-radius: 0;
    }
    
    .btn-success,
    #FMP-email_button {
      color: #fff !important;
      background-color: #449d44 !important;
      border-color: #419641 !important;
    }
    
    .btn-success:hover,
    .btn-success:focus,
    #FMP-email_button:hover,
    #FMP-email_button:focus {
      background-color: #5cb85c !important;
      border-color: #5cb85c !important;
    }

    #submitButton,
    #FMP-email_button {
      padding-top: 10px;
      padding-bottom: 10px;
      font-size: 16px;
      font-weight: 400;
    }

    #submitButton{
      float: right;
    }
    
    #onManagerLoginFormRender {
      margin-top: 3rem;
      color: #fff;
    }

    @media (min-width: 768px) {
      #ForgotManagerPassword-show_form {
        display: inline-block;
        position: absolute;
        z-index: 500;
        bottom: 1.5rem;
      }
    }

    #FMP-email_label {
      color: #818a91
    }

    #FMP-email {
      margin-bottom: 2rem
    }

    #FMP-email_button {
      float: right;
    }
    
    .form-control,
    .captcha input,
    #FMP-email {
      padding: 0.7em 1em !important;
      border-radius: 0 !important;
      transition: all ease-in-out .3s !important;
    }
    .form-control,
    .form-control:active,
    .form-control:focus,
    .captcha input,
    .captcha input:active,
    .captcha input:focus,
    #FMP-email,
    #FMP-email:active,
    #FMP-email:focus {
      font-size: 1rem !important;
      color: #fff !important;
      background-color: rgba(255,255,255,.2) !important;
      border-width: 0 !important;
    }
    
    .form-control:active,
    .captcha input:focus,
    .captcha input:active,
    .form-control:focus,
    #FMP-email:active,
    #FMP-email:focus {
      outline: 0 none !important;
      background-color: rgba(255,255,255,.3) !important;
    }
    
    .form-group--logo {
      margin-bottom: 30px;
      text-align: left !important;
    }
    
    .form-group--actions > label {
      padding-top: 11px;
    }

    /* mainloader */

    #mainloader {
      position: absolute;
      z-index: 50000;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      text-align: center;
      vertical-align: middle;
      padding: 15% 0 0 0;
      background-color: rgba(255, 255, 255, 0.64);
      opacity: 0;
      visibility: hidden;
      -webkit-transition-duration: 0.3s;
      transition-duration: 0.3s
    }

    #mainloader.show {
      opacity: 0.75;
      visibility: visible;
      -webkit-transition-duration: 0.1s;
      transition-duration: 0.1s
    }

    #mainloader::before {
      content: "";
      display: block;
      position: absolute;
      z-index: 1;
      left: 50%;
      top: 30%;
      width: 120px;
      height: 120px;
      margin: -60px 0 0 -60px;
      border-radius: 50%;
      animation: rotate 2s linear infinite;
      box-shadow: 5px 5px 0 0 rgb(234, 132, 82), 14px -7px 0 0 rgba(111, 163, 219, 0.7), -7px 11px 0 0 rgba(112, 193, 92, 0.74), -11px -7px 0 0 rgba(147, 205, 99, 0.78);
    }
    
    /* loginbox animation */
    @-webkit-keyframes anim-loginbox-evore3 {
      from {
        opacity: 0;
        transform: translate3d(-10%,0,0);
      }
      to {
        opacity: 1;
        transform: translate3d(0,0,0);
      }
    }

    @keyframes anim-loginbox-evore3 {
      from {
        opacity: 0;
        transform: translate3d(-10%,0,0);
      }
      to {
        opacity: 1;
        transform: translate3d(0,0,0);
      }
    }
    .loginbox {
      will-change: transform;
      transform: translate3d(0,0,0);
      -webkit-animation-name: anim-loginbox-evore3;
      -webkit-animation-duration: .5s;
      -webkit-animation-iteration-count: 1;
      -webkit-animation-timing-function: ease;
      -webkit-animation-fill-mode: forwards;
      animation-name: anim-loginbox-evore3;
      animation-duration: .5s;
      animation-iteration-count: 1;
      animation-timing-function: ease;
      animation-fill-mode: forwards;
    }
    /* end loginbox animation */

    @keyframes rotate {
      to {
        transform: rotate(360deg)
      }
    }
    
    /* captcha */
    
    .captcha {
      margin-bottom: 1rem;
    }
    
    label,
    .caption {
      color: #818a91;
      line-height: 1.2em;
    }
    .caption {
      margin-bottom: 15px;
    }

  </style>
</head>

<body class="[+manager_theme_style+]">
  <div class="page">
    <div class="tab-page loginbox">
      <form method="post" name="loginfrm" id="loginfrm" class="container container-body" action="processors/login.processor.php">
        [+OnManagerLoginFormPrerender+]
        <div class="form-group form-group--logo text-center">
          <a class="logo" href="../" title="[(site_name)]">
              <img src="media/style/[(manager_theme)]/images/misc/login-logo.png" alt="[(site_name)]" id="logo" />
            </a>
        </div>
        <div class="form-group">
          <label for="username" class="text-muted">[+username+]</label>
          <input type="text" class="form-control" name="username" id="username" tabindex="1" value="[+uid+]" />
        </div>
        <div class="form-group">
          <label for="password" class="text-muted">[+password+]</label>
          <input type="password" class="form-control" name="password" id="password" tabindex="2" value="" />
        </div>
        <div class="captcha clearfix">
          <div class="caption">[+login_captcha_message+]</div>
          <p>[+captcha_image+]</p>
          [+captcha_input+]
        </div>
        <div class="form-group form-group--actions">
          <label for="rememberme" class="text-muted">
              <input type="checkbox" id="rememberme" name="rememberme" value="1" class="checkbox" [+remember_me+] /> [+remember_username+]</label>
          <button type="submit" name="submitButton" class="btn btn-success" id="submitButton">[+login_button+]</button>
        </div>
        [+OnManagerLoginFormRender+]
      </form>
    </div>
    <div class="copyrights">
      <p class="loginLicense"></p>
      <div class="gpl">&copy; 2005-2018 by the <a href="http://evo.im/" target="_blank">EVO</a>. <strong>EVO</strong>&trade; is licensed under the GPL.</div>
    </div>
  </div>
  <div id="mainloader"></div>
  <script type="text/javascript">
    /* <![CDATA[ */
    if(window.frames.length) {
      window.location = self.document.location;
    }
    var form = document.loginfrm;
    if(form.username.value !== '') {
      form.password.focus()
    } else {
      form.username.focus()
    }
    form.onsubmit = function(e) {
      document.getElementById('mainloader').classList.add('show');
      var xhr = new XMLHttpRequest();
      xhr.open('POST', 'processors/login.processor.php', true);
      xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;');
      xhr.onload = function() {
        if(this.readyState === 4) {
          var header = this.response.substr(0, 9);
          if(header.toLowerCase() === 'location:') {
            window.location = this.response.substr(10);
          } else {
            var cimg = document.getElementById('captcha_image');
            if(cimg) cimg.src = 'includes/veriword.php?rand=' + Math.random();
            document.getElementById('mainloader').classList.remove('show');
            alert(this.response);
          }
        }
      };
      xhr.send('ajax=1&username=' + encodeURIComponent(form.username.value) + '&password=' + encodeURIComponent(form.password.value) + (form.captcha_code ? '&captcha_code=' + encodeURIComponent(form.captcha_code.value) : '') + '&rememberme=' + form.rememberme.value);
      e.preventDefault();
    }
    /* ]]> */
  </script>
</body>

</html>
