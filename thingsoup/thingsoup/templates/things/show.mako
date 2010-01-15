<%inherit file="/base.mako"/>\

<%def name="header()">${c.thing.dc_title}</%def>

<dl>
    <dt>
        Title
    </dt>
    <dd>
        ${c.thing.dc_title}
    </dd>
    
    <dt>
        Description
    </dt>
    <dd>
        ${c.thing.dc_description}
    </dd>

    <dt>
        Type
    </dt>
    <dd>
        ${c.thing.dc_type}
    </dd>

    <dt>
        UUID
    </dt>
    <dd>
        <a href="${c.thing.urn()}">
            ${c.thing.uuid}
        </a>
    </dd>
</dl>

<a href="${c.thing.qrcode(size=256)}">
    <img
        src="${c.thing.qrcode(size=128)}"
        alt="QRcode for ${c.thing.uuid}"
        class="qrcode"
    />
</a>
