<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class LoginAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
    /*-- google font --*/
        'fonts/poppins/poppins.css',
    /*-- icons --*/
        'fonts/font-awesome/css/font-awesome.min.css',
        'fonts/material-design-icons/material-icon.css',
    /*--bootstrap --*/
        //'plugins/bootstrap/css/bootstrap.min.css',

        'css/pages/extra_pages.css',
    ];
    public $js = [
    /*-- start js include path --*/
        //'plugins/jquery/jquery.min.js',
        'js/pages/extra-pages/pages.js',
    /*-- end js include path --*/
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
