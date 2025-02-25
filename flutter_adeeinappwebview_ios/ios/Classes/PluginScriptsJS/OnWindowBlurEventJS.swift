//
//  OnWindowBlurEventJS.swift
//  flutter_adeeinappwebview
//
//  Created by Lorenzo Pichilli on 16/02/21.
//

import Foundation

let ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT_GROUP_NAME = "IN_APP_WEBVIEW_ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT"

let ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT = PluginScript(
    groupName: ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT_GROUP_NAME,
    source: ON_WINDOW_BLUR_EVENT_JS_SOURCE,
    injectionTime: .atDocumentStart,
    forMainFrameOnly: true,
    requiredInAllContentWorlds: false,
    messageHandlerNames: [])

let ON_WINDOW_BLUR_EVENT_JS_SOURCE = """
(function(){
    window.addEventListener('blur', function(e) {
        window.\(JAVASCRIPT_BRIDGE_NAME).callHandler('onWindowBlur');
    });
})();
"""
