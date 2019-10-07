<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
    /*-- google font --*/
        'fonts/poppins/poppins.css',
    /*-- icons --*/
        'fonts/simple-line-icons/simple-line-icons.min.css',
        'fonts/font-awesome/css/font-awesome.min.css',
        'fonts/material-design-icons/material-icon.css',
    /*--bootstrap --*/
        'plugins/bootstrap/css/bootstrap.min.css',
        'plugins/summernote/summernote.css',
    /*-- Material Design Lite CSS --*/
        'plugins/material/material.min.css',
        'css/material_style.css',
    /*-- inbox style --*/
        'css/pages/inbox.min.css',
    /*-- Theme Styles --*/
        'css/theme/light/theme_style.css',
        'css/plugins.min.css',
        'css/theme/light/style.css',
        'css/responsive.css',
        'css/theme/light/theme-color.css',
    ];
    public $js = [
    /*-- start js include path --*/
        //'plugins/jquery/jquery.min.js',
        'plugins/popper/popper.js',
        'plugins/jquery-blockui/jquery.blockui.min.js',
	    'plugins/jquery-slimscroll/jquery.slimscroll.js',
    /*-- bootstrap --*/
        'plugins/bootstrap/js/bootstrap.min.js',
        'plugins/bootstrap-switch/js/bootstrap-switch.min.js',
        'plugins/sparkline/jquery.sparkline.js',
	    'js/pages/sparkline/sparkline-data.js',
    /*-- Common js--*/
	    'js/app.js',
        'js/layout.js',
        'js/theme-color.js',
    /*-- material --*/
        'plugins/material/material.min.js',
    /*-- chart js --*/
        'plugins/chart-js/Chart.bundle.js',
        'plugins/chart-js/utils.js',
        'js/pages/chart/chartjs/home-data.js',
    /*-- summernote --*/
        'plugins/summernote/summernote.js',
        'js/pages/summernote/summernote-data.js',
    /*-- end js include path --*/
    ];
    public $depends = [
        'yii\web\YiiAsset',
        //'yii\bootstrap\BootstrapPluginAsset',
    ];
}
