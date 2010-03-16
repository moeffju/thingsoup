<%inherit file="/base.mako"/>\

<%def name="header()">add a thing to the soup</%def>

${h.secure_form(url('create_thing'))}
    <fieldset>

        <legend>thing details</legend>

        <dl>
            <dt class="title">
                <span>title</span>
            </dt>
            <dd class="title">
                <input type="text" id="dc_title" name="dc_title" autofocus="autofocus"/>
                <label for="dc_title">
                    type a name for your thing
                </label>
            </dd>

            <dt class="description">
                description
            </dt>
            <dd class="description">
                <textarea id="dc_description" name="dc_description"/>
                <label for="dc_description">
                	describe in detail what your thing is like
                </label>
            </dd>

<!--
            <dt>
                <label for="title">
                    Type:
                </label>
            </dt>
            <dd>
                <select id="dc_type">
                    <option value="PhysicalObject">Physical object</option>
                </select>
            </dd>
-->
            <dt class="actions">
                actions
            </dt>
            <dd class="actions">
                <input type="submit" value="add the thing"/>
            </dd>

        </dl>
    </fieldset>
${h.end_form()}
