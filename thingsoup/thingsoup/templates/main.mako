<!DOCTYPE html>
<html>
  <head>
    <title>Thingsoup</title>
    ${h.stylesheet_link('/quick.css')}
  </head>

  <body>
    <div class="content">
      <h1 class="main">${self.header()}</h1>
      ${next.body()}\
      <p class="footer">
        Return to the ${h.link_to('front page', url('FrontPage'))}
      </p>
    </div>
  </body>
</html>
