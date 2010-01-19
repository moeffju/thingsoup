<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>thingsoup — ${self.header()}</title>
    </head>

    <body>
        <header>
            <nav>
                <ul>
                    <li>
                        ${h.link_to('Home', url('home'))}
                    </li>
                    <li>
                        ${h.link_to('Index', url('index_things'))}
                    </li>
                    <li>
                        ${h.link_to('New Thing', url('form_new_thing'))}
                    </li>
                </ul>
            </nav>

            <form>
                <label for="query">Search</label>
                <input type="search" id="query"/>
                <input type="submit"/>
            </form>
        </header>

        <div class="main">

            <h1>${self.header()}</h1>

            ${next.body()}\

        </div>

        <footer/>
    </body>
</html>
