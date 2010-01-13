<!DOCTYPE html5>
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
        Return to the ${h.link_to('FrontPage', url('FrontPage'))}
        | ${h.link_to('Edit ' + c.title, url('edit_page', title=c.title))}
      </p>
    </div>
  </body>
</html>
