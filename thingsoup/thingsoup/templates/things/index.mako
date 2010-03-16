<%inherit file="/base.mako"/>\

<%def name="header()">all things</%def>

${h.secure_form(url('delete_thing'))}

    <ul class="things">
        % for i, thing in enumerate(c.things):
        <li>
            <img src="/img/box-big.png" alt="placeholder image"/>
            ${h.link_to(thing.dc_title, url('show_thing', uuid=thing.uuid))}
            <p>
                ${thing.dc_description}
            </p>
            <input type="checkbox" name="uuid" value="${thing.uuid}"/>
            <p class="uuid">
                (${thing.uuid})
            </p>
        </li>
        % endfor
    </ul>

    ${h.submit('delete', 'delete')}

${h.end_form()}
