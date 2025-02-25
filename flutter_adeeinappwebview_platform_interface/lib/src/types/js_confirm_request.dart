import 'package:flutter_adeeinappwebview_internal_annotations/flutter_adeeinappwebview_internal_annotations.dart';
import '../in_app_webview/platform_webview.dart';
import '../web_uri.dart';

part 'js_confirm_request.g.dart';

///Class that represents the request of the [PlatformWebViewCreationParams.onJsConfirm] event.
@ExchangeableObject()
class JsConfirmRequest_ {
  ///The url of the page requesting the dialog.
  WebUri? url;

  ///Message to be displayed in the window.
  String? message;

  ///Use [isMainFrame] instead.
  @Deprecated("Use isMainFrame instead")
  bool? iosIsMainFrame;

  ///Indicates whether the request was made for the main frame.
  @SupportedPlatforms(platforms: [IOSPlatform(), MacOSPlatform()])
  bool? isMainFrame;

  JsConfirmRequest_(
      {this.url,
      this.message,
      @Deprecated("Use isMainFrame instead") this.iosIsMainFrame,
      this.isMainFrame});
}
