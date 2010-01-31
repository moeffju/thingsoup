<%inherit file="/base.mako"/>\

<%def name="header()">${c.thing.dc_title}</%def>

<dl>
    <dt class="title">
        <span>title</span>
    </dt>
    <dd class="title">
        ${c.thing.dc_title}
    </dd>
    
    <dt class="description">
        description
    </dt>
    <dd class="description">
        ${c.thing.dc_description}
    </dd>

    <dt class="type">
        Type
    </dt>
    <dd class="type">
        ${c.thing.dc_type}
    </dd>

    <dt class="uuid">
        UUID
    </dt>
    <dd class="uuid">
        <a href="${c.thing.urn()}">
            ${c.thing.uuid}
        </a>
    </dd>
    
    <dt class="qr">
        QR
    </dt>
    
    <dd class="qr">
        <a href="${c.thing.qrcode(size=256)}" class="qr">
        <img
            src="${c.thing.qrcode(size=128)}"
            alt="QRcode for ${c.thing.uuid}"
            class="qrcode"
        />
        </a>
    </dd>
</dl>

