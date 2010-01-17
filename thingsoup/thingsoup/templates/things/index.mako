<%inherit file="/base.mako"/>\

<%def name="header()">All things</%def>

<ul class="things">
    % for thing in c.things:
    <li>
        ${h.link_to(h.literal(thing.dc_title), url('show_thing', uuid=thing.uuid))}
        <span class="uuid">
            (${h.literal(thing.uuid)})
        </span>
        <p>
            ${h.literal(thing.dc_description)}
        </p>
    </li>
    % endfor
</ul>
