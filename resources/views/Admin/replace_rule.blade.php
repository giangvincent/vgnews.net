<div class="form-group {!! !$errors->has($errorKey) ?: 'has-error' !!}">

    <label for="{{$id}}" class="col-sm-2 control-label">{{$label}}</label>

    <div class="col-sm-8">
		<div class="row">
			<div class="col-sm-12" id="json-editor-replace-rule"></div>
		</div>

		<div class="col-sm-12">
			@include('admin::form.error')

	        <label class="col-sm-12 control-label">Result replace rule</label>
	        <textarea class="form-control {{$class}}" id="result-json-replace-rule" name="{{$name}}" placeholder="{{ $placeholder }}" {!! $attributes !!} cols="30" rows="5">{{ old($column, $value) }}</textarea>

	        @include('admin::form.help-block')
		</div>
	        

    </div>
</div>

<script defer>
	var replace_options = {

		onChangeText: function (json) {
			
		}
	};
	var replace_container = document.getElementById("json-editor-replace-rule");
	var replace_editor = new JSONEditor(replace_container , replace_options);
</script>