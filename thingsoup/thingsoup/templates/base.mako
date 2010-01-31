<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>thingsoup — ${self.header()}</title>
        ${h.stylesheet_link('/css/reset.css')}
        ${h.stylesheet_link('/css/thingsoup_app.css')}
    </head>

    <body>
        <header>
            ${h.link_to('Home', url('home'))}
            
            <form>
                <label for="query">Search</label>
                <input type="search" id="query"/>
                <input type="submit" value="search"/>
            </form>
            
            <nav>
                <ul>
                    <li>
                        ${h.link_to('index', url('index_things'))}
                    </li>
                    <li>
                        ${h.link_to('add thing', url('form_new_thing'))}
                    </li>
                </ul>
            </nav>

        </header>

        <% flashes = h.flash.pop_messages() %>
        % if flashes:
            % for flash in flashes:
        <div class="message">${flash}</div>
            % endfor
        % endif

        <div class="main">

            <h1>${self.header()}</h1>

            ${next.body()}\

        </div>

        <footer/>
    </body>
</html>
