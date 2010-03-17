<%inherit file="/base.mako"/>\

<%def name="header()">${c.thing.dc_title}</%def>

<dl>
    <dt class="title">
        title
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
        ${c.thing.uuid}
    </dd>
</dl>

