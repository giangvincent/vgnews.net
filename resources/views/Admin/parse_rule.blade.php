
<?php 


?>
<div class="form-group {!! !$errors->has($errorKey) ?: 'has-error' !!}">

	<label class="col-sm-2 control-label">Parse rule</label>

	<div class="col-sm-8">
		<div class="col-sm-12 __rule_container">
			<div class="__rule_header text-left ">
				<span>List parse rule</span> 
				<button class="btn btn-success" id="newRule">+</button>
			</div>

			<ul class="__rule_list">
			</ul>
			<div id="rule-form" class="form-group well" >
				<label for="">Title filter <input class="form-control" type="text" id="title_filter" name="title_filter"></label>
				<label for="">Link filter <input class="form-control" type="text" id="link_filter" name="link_filter"></label>
				<label for="">Cover filter 
					<input class="form-control" type="text" id="cover_filter" name="cover_filter">
					<input class="form-control" type="text" id="cover_filter_attr" name="cover_filter_attr" value="src">
				</label>
				<button class="btn btn-info" id="save-rule">Save rule</button>
			</div>

			<div class="__rule_header text-left ">
				<span>Detail parse rule</span> 
				<button class="btn btn-success" id="newDetailRule">+</button>
			</div>
			<div id="detail-rule-form" class="form-group well">
				
			</div>

		</div>

		<div class="col-sm-12">
			@include('admin::form.error')

			<label class="col-sm-12 control-label">Result dom rule</label>
			<textarea class="form-control {{$class}}" id="result-json-dom-rule" name="dom_parse_rule" cols="30" rows="5">{{ $parseRule }}</textarea>

			@include('admin::form.help-block')
		</div>


	</div>
</div>

<div class="form-group {!! !$errors->has($errorKey) ?: 'has-error' !!}">

	<label class="col-sm-2 control-label">Replace rule</label>

	<div class="col-sm-8">
		<div class="row">
			<div class="col-sm-12" id="json-editor-replace-rule"></div>
		</div>

		<div class="col-sm-12">
			@include('admin::form.error')

			<label class="col-sm-12 control-label">Result replace rule</label>
			<textarea class="form-control {{$class}}" id="result-json-replace-rule" name="replace_rule" cols="30" rows="5">{{ $replaceRule }}</textarea>

			@include('admin::form.help-block')
		</div>


	</div>
</div>

<script>
	var parseRule = JSON.parse('{!! $parseRule !!}');
    var replaceRule = JSON.parse('{!! $replaceRule !!}');
    var makeRule = function () {
        $('.__rule_list').html('')
        for (var i = parseRule.list.length - 1; i >= 0; i--) {
            $('.__rule_list').append('<li ><span index="'+i+'">rule '+ (i + 1) +'</span><button class="btn btn-warning removeRule" index="'+ i +'">x</button></li>')
        }
        
    }
    var makeDetailRule = function() {
        $('#detail-rule-form').html('')
        for (var name in parseRule.detail){
            $('#detail-rule-form').append('<label for="" index="' + name + '"><input class="keyDetailRule" value="' + name.split('_').join(' ') + '"/> <input class="form-control detailRule" type="text"  value="'+ parseRule.detail[name] +'"><button class="btn btn-sm deleteRuleElement">Xóa</button></label>')
        }
    }
    jQuery(document).ready(function($) {
    	makeRule();
	    makeDetailRule();
    });
	    
    $(document).on('change' , '.detailRule' , function (event) {
        event.preventDefault();
        parseRule.detail[$(this).parent().attr('index')] = $(this).val();
        $('#result-json-dom-rule').val(JSON.stringify(parseRule))
    });
    $(document).on('change' , '.keyDetailRule' , function (event) {
        event.preventDefault();
        var detailVal = parseRule.detail[$(this).parent().attr('index')];
        parseRule.detail[$(this).val()] = detailVal;
        delete parseRule.detail[$(this).parent().attr('index')];
        $('#result-json-dom-rule').val(JSON.stringify(parseRule))
        makeDetailRule();
    });
    $(document).on('click', '.deleteRuleElement', function(event) {
    	event.preventDefault();
    	delete parseRule.detail[$(this).parent().attr('index')];
        $('#result-json-dom-rule').val(JSON.stringify(parseRule))
        makeDetailRule();
    });
    $(document).on('click', '#newDetailRule', function(event) {
    	event.preventDefault();
    	$('#detail-rule-form').append('<label for="" index=""><input class="keyDetailRule" value=""/> <input class="form-control detailRule" type="text"  value=""><button class="btn btn-sm deleteRuleElement">Xóa</button></label>')
    });

    $(document).on('click', '#newRule , .__rule_list li span', function(event) {
        event.preventDefault();
        /* Act on the event */
        var rule = $(this).attr('index');
        $('#rule-form').children('input').val('');
        $('#rule-form').removeAttr('index');
        if (rule != '' && rule != null) {
            $('#rule-form input:eq(0)').val(parseRule.list[rule].title_filter);
            $('#rule-form input:eq(1)').val(parseRule.list[rule].link_filter);
            $('#rule-form input:eq(2)').val(parseRule.list[rule].cover_filter);
            $('#rule-form input:eq(3)').val(parseRule.list[rule].cover_filter_attr);
            $('#rule-form').attr('index' , rule);
        } else {
            $('#rule-form input:eq(0)').val('');
            $('#rule-form input:eq(1)').val('');
            $('#rule-form input:eq(2)').val('');
            $('#rule-form input:eq(3)').val('src');
        }

    });

    $(document).on('click', '#save-rule', function(event) {
        event.preventDefault();
        /* Act on the event */
        var rule = $(this).parent().attr('index');
        
        if (rule != '' && rule != null) {
            parseRule.list[rule].title_filter = $('#rule-form input:eq(0)').val();
            parseRule.list[rule].link_filter = $('#rule-form input:eq(1)').val();
            parseRule.list[rule].cover_filter = $('#rule-form input:eq(2)').val();
            parseRule.list[rule].cover_filter_attr = $('#rule-form input:eq(3)').val();
            $(this).parent().removeAttr('index');
        } else {
            var newRule = {}
            newRule.title_filter = $('#rule-form input:eq(0)').val();
            newRule.link_filter = $('#rule-form input:eq(1)').val();
            newRule.cover_filter = $('#rule-form input:eq(2)').val();
            newRule.cover_filter_attr = $('#rule-form input:eq(3)').val();
            parseRule.list.push(newRule);
            makeRule()
        }
        toastr.success('Rule saved');
        $('#result-json-dom-rule').val(JSON.stringify(parseRule))
        
    });
    $(document).on('click', '.removeRule', function(event) {
        event.preventDefault();
        var rule = $(this).attr('index');
        
        if (rule != '' && rule != null) {
            parseRule.list.splice( rule , 1);
            makeRule();
        }
        $('#result-json-dom-rule').val(JSON.stringify(parseRule))
    });
</script>