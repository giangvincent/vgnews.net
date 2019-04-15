var dom_options = {
	onChangeText: function (json) {
		$("#result-json-dom-rule").val(json);
	}
};
var dom_container = document.getElementById("json-editor-dom-rule");

if (dom_container != null && dom_container.length > 0) {
	var dom_editor = new JSONEditor(dom_container , dom_options);
	dom_editor.set(JSON.parse(parseRule));
}
	

var replace_options = {
	onChangeText: function (json) {
		$('#result-json-replace-rule').val(json);
	}
};

var replace_container = document.getElementById("json-editor-replace-rule");
if (replace_container != null && replace_container.length > 0) {
	var replace_editor = new JSONEditor(replace_container , replace_options);
	replace_editor.set(JSON.parse(replaceRule));
}
	