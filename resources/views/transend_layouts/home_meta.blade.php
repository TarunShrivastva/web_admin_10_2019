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
    <style>
        .table-n {
            font-family: arial;
            border-color: #eee
        }
        .table-n td {
            padding: 2px 10px;
            line-height: 25px;
            border-color: #eee;
            font-size: 15px;
            font-weight: 300;
        }
        .table-n tr td:nth-child(2) {
            font-weight: 600
        }
        .table-n td strong {
            display: inline-block;
            margin-bottom: 10px;
            font: 16px Arial;
            font-weight: 600
        }
        .table-n .visible-sm {
            display: none
        }
        .table-n h2 {
            font-size: 34px;
            font-style: italic;
            color: #e64444;
            margin-bottom: 10px;
            font-family: serif;
        }
        .table-n h4 {
            font-size: 25px;
            font-weight: 300;
            text-transform: uppercase;
            font-family: arial;
            margin: 5px 0 25px;
            color: #6caaf7;
        }
        .table-n td div {
            padding: 3px 0;
            display: flex;
            align-items: center;
            font-size: 15px;
            font-weight: 600
        }
        .table-n td div img {
            height: 25px
        }
        .table-n table td {
            border: 1px solid #dcdcdc;
        }
        .table-n table tr td:nth-child(even) {
            text-align: center
        }
        @media (max-width:767px) {
            .table-n {
                max-width: 100%
            }
            .table-n td {
                font-size: 12px;
                line-height: 18px !important
            }
            .table-n > tbody > tr > td {
                padding: 0
            }
            .table-n .hidden-xs {
                display: none
            }
            .table-n td strong {
                margin-bottom: 8px;
                font: 14px Arial;
            }
            .table-n .visible-sm {
                display: table-row
            }
            .table-n h4 {
                font-size: 18px;
                margin: 15px 0 10px;
                line-height: initial
            }
            .table-n td div {
                font-size: 12px
            }
            .table-n table tr:last-child td {
                padding: 0 2px
            }
            .table-n td div img {
                height: 18px
            }
        }
    </style>
</head>
