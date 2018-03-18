<!DOCTYPE HTML>
<html lang="zh-cmn-Hans">

<head>
    <meta charset="UTF-8">
    <meta content="ie=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width" name="viewport">
    <meta name="theme-color" content="#3f51b5">
    <title>{$config["appName"]}</title>
    <!-- css -->
    <link href="/theme/material/css/base.min.css" rel="stylesheet">
    <link href="/theme/material/css/project.min.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- favicon -->
    <!-- ... -->
</head>
<style>
    .divcss5 {
        position: fixed;
        bottom: 0;
    }

     .logo {
        margin:100px auto 0;
        padding:15px;
        text-align:center;
     }
</style>
<body class="page-brand">
<div class="logo" >
    {if $config['logo'] == 'true'}
    <img src="{$config["log_url"]}" />
    {else}
        <p style="font-size: 400%">&nbsp;{$config["appName"]}</p>
    {/if}
</div>