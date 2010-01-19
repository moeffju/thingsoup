<%inherit file="/base.mako"/>\

<%def name="header()">All things</%def>

${h.secure_form(url('delete_thing'))}

    <ul class="things">
        % for i, thing in enumerate(c.things):
        <li>
            ${h.link_to(thing.dc_title, url('show_thing', uuid=thing.uuid))}
            <span class="uuid">
                (${thing.uuid})
            </span>
            <p>
                ${thing.dc_description}
            </p>
            <input type="checkbox" name="uuid" value="${thing.uuid}"/>
        </li>
        % endfor
    </ul>

    ${h.submit('delete', 'Delete')}

${h.end_form()}
