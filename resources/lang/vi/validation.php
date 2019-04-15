<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted'             => ':attribute phải được chấp nhận.',
    'active_url'           => ':attribute là một đường dẫn không xác định.',
    'after'                => ':attribute phải là 1 ngày sau :date.',
    'after_or_equal'       => ':attribute phải là 1 ngày sau hoặc bằng :date.',
    'alpha'                => ':attribute chỉ có thể chứa ký tự.',
    'alpha_dash'           => ':attribute chỉ có thể chứa ký tự, số, gạch ngang, gạch dưới.',
    'alpha_num'            => ':attribute chỉ có thể chứ ký tự và số.',
    'array'                => ':attribute phải là mảng.',
    'before'               => ':attribute phải là ngày trước :date.',
    'before_or_equal'      => ':attribute phải là ngày trước hoặc bằng :date.',
    'between'              => [
        'numeric' => ':attribute phải trong khoảng :min và :max.',
        'file'    => ':attribute phải trong khoảng :min và :max kilobytes.',
        'string'  => ':attribute phải trong khoảng :min và :max ký tự.',
        'array'   => ':attribute phải trong khoảng :min và :max phần tử.',
    ],
    'boolean'              => ':attribute trường phải đúng hoặc sai.',
    'confirmed'            => ':attribute xác nhận không giống.',
    'date'                 => ':attribute là định dạng ngày.',
    'date_format'          => ':attribute không giống định dạng :format.',
    'different'            => ':attribute và :other phải khác nhau.',
    'digits'               => ':attribute phải :digits ký tự số.',
    'digits_between'       => ':attribute phải trong khoảng :min và :max ký tự số.',
    'dimensions'           => ':attribute có định dạng kích thước không xác định.',
    'distinct'             => 'Trường :attribute có giá trị trùng lặp.',
    'email'                => ':attribute phải là định dạng email đúng.',
    'exists'               => ':attribute được chọn không có sẵn.',
    'file'                 => ':attribute phải là tập tin.',
    'filled'               => 'Trường :attribute phải có giá trị.',
    'gt'                   => [
        'numeric' => ':attribute phải lớn hơn :value.',
        'file'    => ':attribute phải lớn hơn :value kilobytes.',
        'string'  => ':attribute phải lớn hơn :value ký tự.',
        'array'   => ':attribute phải nhiều hơn :value phần tử.',
    ],
    'gte'                  => [
        'numeric' => ':attribute phải lớn hơn hoặc bằng :value.',
        'file'    => ':attribute phải lớn hơn hoặc bằng :value kilobytes.',
        'string'  => ':attribute phải lớn hơn hoặc bằng :value ký tự.',
        'array'   => ':attribute phải có :value ký tự hoặc hơn.',
    ],
    'image'                => ':attribute phải là hình ảnh.',
    'in'                   => ':attribute được chọn không xác định.',
    'in_array'             => 'Trường :attribute không tồn tại trong :other.',
    'integer'              => ':attribute phải là số nguyên.',
    'ip'                   => ':attribute phải là địa chỉ IP xác định.',
    'ipv4'                 => ':attribute phải là địa chỉ IPv4 xác định.',
    'ipv6'                 => ':attribute phải là địa chỉ IPv6 xác định.',
    'json'                 => ':attribute phải là chuỗi JSON.',
    'lt'                   => [
        'numeric' => ':attribute phải ít hơn :value.',
        'file'    => ':attribute phải ít hơn :value kilobytes.',
        'string'  => ':attribute phải ít hơn :value ký tự.',
        'array'   => ':attribute phải ít hơn :value phần tử.',
    ],
    'lte'                  => [
        'numeric' => ':attribute phải ít hơn hoặc bằng :value.',
        'file'    => ':attribute phải ít hơn hoặc bằng :value kilobytes.',
        'string'  => ':attribute phải ít hơn hoặc bằng :value ký tự.',
        'array'   => ':attribute phải không được nhiều hơn :value phần tử.',
    ],
    'max'                  => [
        'numeric' => ':attribute có thể lớn hơn :max.',
        'file'    => ':attribute có thể lớn hơn :max kilobytes.',
        'string'  => ':attribute có thể lớn hơn :max ký tự.',
        'array'   => ':attribute có thể nhiều hơn :max phần tử.',
    ],
    'mimes'                => ':attribute phải là tập tin dạng type: :values.',
    'mimetypes'            => ':attribute phải là tập tin dạng type: :values.',
    'min'                  => [
        'numeric' => ':attribute phải ít nhất :min.',
        'file'    => ':attribute phải ít nhất :min kilobytes.',
        'string'  => ':attribute phải ít nhất :min ký tự.',
        'array'   => ':attribute phải ít nhất :min items.',
    ],
    'not_in'               => ':attribute được chọn không có sẵn.',
    'not_regex'            => 'Định dạng :attribute không đúng.',
    'numeric'              => ':attribute phải là số.',
    'present'              => 'Trường :attribute phải có mặt.',
    'regex'                => 'Định dạng :attribute không đúng.',
    'required'             => 'Trường :attribute không được rỗng.',
    'required_if'          => 'Trường :attribute không được rỗng khi :other là :value.',
    'required_unless'      => 'Trường :attribute không được rỗng trừ khi :other là trong :values.',
    'required_with'        => 'Trường :attribute không được rỗng khi :values được có mặt.',
    'required_with_all'    => 'Trường :attribute không được rỗng khi :values được có mặt.',
    'required_without'     => 'Trường :attribute không được rỗng khi :values không được có mặt.',
    'required_without_all' => 'Trường :attribute không được rỗng khi tất cả :values không được có mặt.',
    'same'                 => ':attribute và :other phải giống nhau.',
    'size'                 => [
        'numeric' => ':attribute phải trong :size.',
        'file'    => ':attribute phải trong :size kilobytes.',
        'string'  => ':attribute phải trong :size ký tự.',
        'array'   => ':attribute phải chứa :size phần tử.',
    ],
    'string'               => ':attribute phải là 1 chuỗi.',
    'timezone'             => ':attribute phải là 1 vùng có sẵn.',
    'unique'               => ':attribute được tồn tại.',
    'uploaded'             => ':attribute tải lên thất bại.',
    'url'                  => ':attribute có định dạng không đúng.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap attribute place-holders
    | with something more reader friendly such as E-Mail Address instead
    | of "email". This simply helps us make messages a little cleaner.
    |
    */

    'attributes' => [],

];
