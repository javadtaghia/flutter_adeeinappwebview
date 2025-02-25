package ai.adee.flutter_adeeinappwebview_android.plugin_scripts_js;

import ai.adee.flutter_adeeinappwebview_android.types.PluginScript;
import ai.adee.flutter_adeeinappwebview_android.types.UserScriptInjectionTime;

public class OnWindowBlurEventJS {
  public static final String ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT_GROUP_NAME = "IN_APP_WEBVIEW_ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT";
  public static final PluginScript ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT = new PluginScript(
          OnWindowBlurEventJS.ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT_GROUP_NAME,
          OnWindowBlurEventJS.ON_WINDOW_BLUR_EVENT_JS_SOURCE,
          UserScriptInjectionTime.AT_DOCUMENT_START,
          null,
          false,
          null
  );

  public static final String ON_WINDOW_BLUR_EVENT_JS_SOURCE = "(function(){" +
          "  window.addEventListener('blur', function(e) {" +
          "    window." + JavaScriptBridgeJS.JAVASCRIPT_BRIDGE_NAME + ".callHandler('onWindowBlur');" +
          "  });" +
          "})();";
}
