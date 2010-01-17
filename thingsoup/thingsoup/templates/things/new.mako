<%inherit file="/base.mako"/>\

<%def name="header()">add a thing to the soup</%def>

${h.secure_form(url('create_thing'))}
    <fieldset>

        <legend>Thing details</legend>

        <ol>
            <li>
                <label for="dc_title">
                    Title
                </label>
                <input type="text" id="dc_title" name="dc_title"/>
            </li>

            <li>
                <label for="dc_description">
                    Description
                </label>
                <textarea id="dc_description" name="dc_description"/>
            </li>

<!--
            <li>
                <label for="title">
                    Type:
                </label>
                <select id="dc_type">
                    <option value="PhysicalObject">Physical object</option>
                </select>
            </li>
-->
        </ol>

        <input type="reset"/>
        <input type="submit"/>

    </fieldset>
${h.end_form()}
