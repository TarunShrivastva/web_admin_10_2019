<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Title -->
    <title>{{ MetaTag::get('title') }}</title>
    {!! MetaTag::tag('description') !!}
    {!! MetaTag::tag('image') !!}
    <!-- Favicon -->
    <link rel="icon" href="{{ URL::to('frontend/img/core-img/favicon.ico') }}">
    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="{{ URL::to('frontend/style.css') }}">

</head>
