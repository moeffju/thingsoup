<?xml version="1.0" ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>thingsoup</title>
        <link rel="stylesheet" href='/css/thingsoup_app.css'/>
        <script src="js/jquery-1.3.2.min.js"></script>
        <script src="js/thing_focus.js"></script>
    </head>

    <body>
        <div class="header">
            <div class="column-left">
                <a href="/"><div class="logo"></div></a>
                
                <input type="text" name="q" value=""/>
				<input type="submit" name="submit" value="search"/>
            </div>
            
            <div class="column-right">
                <a href="/users/login">login</a> |
                <a href="/things/new">new thing</a>
            </div>
        </div>
    
        <h1>${self.header()}</h1>
    
        ${next.body()}\
    </body>
</html>
