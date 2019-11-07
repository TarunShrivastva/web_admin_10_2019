<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ MetaTag::get('title') }}</title>
    {!! MetaTag::tag('description') !!}
    {!! MetaTag::tag('image') !!}
    <link rel="icon" href="{{ URL::to('frontend/img/core-img/favicon.ico') }}">
    <link rel="stylesheet" href="{{ URL::to('frontend/style.css') }}">
</head>
