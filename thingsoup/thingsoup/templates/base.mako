<?xml version="1.0" ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>thingsoup — ${self.header()}</title>
    </head>

    <body>
        <header>
            <a href=""><div class="logo"/></a>

            <nav>
                <ul>
                    <li>
                        <a href="">main</a>
                    </li>
                    <li>
                        <a href="">index</a>
                    </li>
                    <li>
                        <a href="">new thing</a>
                    </li>
                </ul>
            </nav>

            <form>
                <fieldset>
                    <label for="query">Search</label>
                    <input type="search" id="query"/>
                    <input type="submit"/>
                </fieldset>
            </form>
        </header>

        <div class="main">

            <h1>${self.header()}</h1>

            ${next.body()}\

        </div>

        <footer/>
    </body>
</html>
