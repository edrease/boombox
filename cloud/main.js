//main.js
var fs = require('fs');
var layer = require('cloud/layer-parse-module/layer-module.js');

//main.js
var layerProviderID = 'layer:///providers/327cceee-b8b7-11e5-9cd4-fb530312586e';  // Should have the format of layer:///providers/<GUID>
var layerKeyID = 'layer:///keys/a802247a-b8b7-11e5-9cd4-fb530312586e';   // Should have the format of layer:///keys/<GUID>
var privateKey = fs.readFileSync('cloud/layer-parse-module/keys/layer-key.js');
layer.initialize(layerProviderID, layerKeyID, privateKey);

Parse.Cloud.define("generateToken", function(request, response) {
    var currentUser = request.user;
    if (!currentUser) throw new Error('You need to be logged in!');
    var userID = currentUser.id;
    var nonce = request.params.nonce;
    if (!nonce) throw new Error('Missing nonce parameter');
        response.success(layer.layerIdentityToken(userID, nonce));
});
