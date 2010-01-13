
<%inherit file="/main.mako"/>\

<%def name="header()">add a thing to the soup</%def>

	<div class="thing-main">
	
		<div class="thing-icon"></div>
		<div class="thing-edit">
		
			<div class="wide">
				<input type="text" class="focus" name="name"/>
				<label for="name">type the name of your thing</label>
			</div>
			
			<div class="wide">
				<textarea name="description"></textarea>
				<label for="description">optionally, describe in detail what your thing is like</label>
			</div>
			
			<div class="column-left new-section">
				<select name="attribute-0" class="key">
					<option value="picture">picture</option>
				</select>
			</div>
			<div class="column-right new-section">
				<input type="file" name="value-0" class="value"/>
			</div>
			
			<div class="column-left new-section">
				<select name="attribute-1" class="key">
					<option value="sharing">sharing</option>
				</select>
			</div>
			<div class="column-right new-section">
				<select name="value-1" class="value">
					<option value="public domain">public domain</option>
				</select>
			</div>
			
			<div class="column-left">
				<select name="attribute-2" class="key">
					<option value="access">access</option>
				</select>
			</div>
			<div class="column-right">
				<select name="value-2" class="value">
					<option value="24/7">24/7</option>
				</select>
			</div>
			
			<div class="column-left">
				<select name="attribute-3" class="key">
					<option value="location">location</option>
				</select>
			</div>
			<div class="column-right">
				<input type="text" name="value-3" class="value"/>
				<label for="description">type an address or latitude and longitude</label>
			</div>
			
			<div class="column-left">
				<select name="attribute-4" class="key">
					<option value="location">owner</option>
				</select>
			</div>
			<div class="column-right">
				<input type="text" name="value-4" class="value"/>
				<label for="description">paste a thingsoup thing url that represents an owner</label>
			</div>
			
			<div class="wide">
				<p>
					<a href="#more-details">enter more details</a>
				</p>
			</div>
			
			<div class="column-left new-section" id="actions">
				<input type="submit" name="submit" value="add the thing"/>
			</div>
			<div class="column-right new-section">
				<a href="#cancel">cancel</a>
			</div>
		</div>
	
	</div>