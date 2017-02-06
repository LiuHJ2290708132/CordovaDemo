cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
	{
		"file": "plugins/cordova-js-plugin/www/logger.js",
	    "id": "cordova-js-plugin.logger",
	    "clobbers": [
	     	"logger"
	    ]
	}
];
module.exports.metadata = 
// TOP OF METADATA
{
    "cordova-plugin-whitelist": "1.2.2"
}
// BOTTOM OF METADATA
});
