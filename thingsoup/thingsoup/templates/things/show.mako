<%inherit file="/base.mako"/>\

<%def name="header()">a thing (${c.thing.urn()})</%def>

    <div class="thing-main">
    
        <div class="thing-icon"/></div>

        <a href="${c.thing.qrcode(size=256)}"
            <img
                src="${c.thing.qrcode(size=128)}"
                alt="QRcode for ${c.thing.uuid}"/>
        </a>

        <div class="thing-edit">
        
            <div class="wide">
                <h2>${c.thing.dc_title}</h2>
            </div>
            
            <div class="wide">
                <p>
                    ${c.thing.dc_description}
                </p>
            </div>
            
            <div class="column-left new-section">
                <p class="key">
                    sharing:
                </p>
            </div>
            <div class="column-right new-section">
                <p class="value">
                    public domain
                </p>
            </div>
            
            <div class="column-left">
                <p class="key">
                    access:
                </p>
            </div>
            <div class="column-right">
                <p class="value">
                    24/7
                </p>
            </div>
            
            <div class="column-left">
                <p class="key">
                    location:
                </p>
            </div>
            <div class="column-right">
                <p class="value">
                    torstraße 161, berlin-mitte
                    <iframe width="425" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=torstra%C3%9Fe+161,+berlin-mitte&amp;sll=37.0625,-95.677068&amp;sspn=46.812293,57.392578&amp;ie=UTF8&amp;hq=&amp;hnear=Torstra%C3%9Fe+161,+Mitte+10115+Berlin,+Germany&amp;z=16&amp;ll=52.52917,13.396383&amp;output=embed"></iframe>
                </p>
            </div>
            
            <div class="column-left">
                <p class="key">
                    owner:
                </p>
            </div>
            <div class="column-right">
                <a href="#owner">lukas f. hartmann</a>
            </div>
            
            <div class="column-left new-section" id="actions">
                &nbsp;
            </div>
            <div class="column-right new-section">
                <input type="submit" name="submit" value="take the thing"/> 
            </div>
        </div>
    
    </div>
