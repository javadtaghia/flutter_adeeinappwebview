import 'package:flutter_adeeinappwebview_platform_interface/flutter_adeeinappwebview_platform_interface.dart';

import 'cookie_manager.dart';
import 'http_auth_credentials_database.dart';
import 'find_interaction/main.dart';
import 'in_app_browser/in_app_browser.dart';
import 'in_app_webview/main.dart';
import 'print_job/main.dart';
import 'web_message/main.dart';
import 'web_storage/main.dart';
import 'web_authentication_session/main.dart';

/// Implementation of [InAppWebViewPlatform] using the WebKit API.
class MacOSInAppWebViewPlatform extends InAppWebViewPlatform {
  /// Registers this class as the default instance of [InAppWebViewPlatform].
  static void registerWith() {
    InAppWebViewPlatform.instance = MacOSInAppWebViewPlatform();
  }

  /// Creates a new [MacOSCookieManager].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [CookieManager] in `flutter_adeeinappwebview` instead.
  @override
  MacOSCookieManager createPlatformCookieManager(
    PlatformCookieManagerCreationParams params,
  ) {
    return MacOSCookieManager(params);
  }

  /// Creates a new [MacOSInAppWebViewController].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [InAppWebViewController] in `flutter_adeeinappwebview` instead.
  @override
  MacOSInAppWebViewController createPlatformInAppWebViewController(
    PlatformInAppWebViewControllerCreationParams params,
  ) {
    return MacOSInAppWebViewController(params);
  }

  /// Creates a new empty [MacOSInAppWebViewController] to access static methods.
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [InAppWebViewController] in `flutter_adeeinappwebview` instead.
  @override
  MacOSInAppWebViewController createPlatformInAppWebViewControllerStatic() {
    return MacOSInAppWebViewController.static();
  }

  // TODO: unhide when Flutter official PlatformView for macOS is available
  // /// Creates a new [MacOSInAppWebViewWidget].
  // ///
  // /// This function should only be called by the app-facing package.
  // /// Look at using [InAppWebView] in `flutter_adeeinappwebview` instead.
  // @override
  // MacOSInAppWebViewWidget createPlatformInAppWebViewWidget(
  //   PlatformInAppWebViewWidgetCreationParams params,
  // ) {
  //   return MacOSInAppWebViewWidget(params);
  // }

  /// Creates a new [MacOSFindInteractionController].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [FindInteractionController] in `flutter_adeeinappwebview` instead.
  @override
  MacOSFindInteractionController createPlatformFindInteractionController(
    PlatformFindInteractionControllerCreationParams params,
  ) {
    return MacOSFindInteractionController(params);
  }

  /// Creates a new [MacOSPrintJobController].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [PrintJobController] in `flutter_adeeinappwebview` instead.
  @override
  MacOSPrintJobController createPlatformPrintJobController(
    PlatformPrintJobControllerCreationParams params,
  ) {
    return MacOSPrintJobController(params);
  }

  /// Creates a new [MacOSWebMessageChannel].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [WebMessageChannel] in `flutter_adeeinappwebview` instead.
  @override
  MacOSWebMessageChannel createPlatformWebMessageChannel(
    PlatformWebMessageChannelCreationParams params,
  ) {
    return MacOSWebMessageChannel(params);
  }

  /// Creates a new empty [MacOSWebMessageChannel] to access static methods.
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [WebMessageChannel] in `flutter_adeeinappwebview` instead.
  @override
  MacOSWebMessageChannel createPlatformWebMessageChannelStatic() {
    return MacOSWebMessageChannel.static();
  }

  /// Creates a new [MacOSWebMessageListener].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [WebMessageListener] in `flutter_adeeinappwebview` instead.
  @override
  MacOSWebMessageListener createPlatformWebMessageListener(
    PlatformWebMessageListenerCreationParams params,
  ) {
    return MacOSWebMessageListener(params);
  }

  /// Creates a new [MacOSJavaScriptReplyProxy].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [JavaScriptReplyProxy] in `flutter_adeeinappwebview` instead.
  @override
  MacOSJavaScriptReplyProxy createPlatformJavaScriptReplyProxy(
    PlatformJavaScriptReplyProxyCreationParams params,
  ) {
    return MacOSJavaScriptReplyProxy(params);
  }

  /// Creates a new [MacOSWebMessagePort].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [WebMessagePort] in `flutter_adeeinappwebview` instead.
  @override
  MacOSWebMessagePort createPlatformWebMessagePort(
    PlatformWebMessagePortCreationParams params,
  ) {
    return MacOSWebMessagePort(params);
  }

  /// Creates a new [MacOSWebStorage].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [MacOSWebStorage] in `flutter_adeeinappwebview` instead.
  @override
  MacOSWebStorage createPlatformWebStorage(
    PlatformWebStorageCreationParams params,
  ) {
    return MacOSWebStorage(params);
  }

  /// Creates a new [MacOSLocalStorage].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [MacOSLocalStorage] in `flutter_adeeinappwebview` instead.
  @override
  MacOSLocalStorage createPlatformLocalStorage(
    PlatformLocalStorageCreationParams params,
  ) {
    return MacOSLocalStorage(params);
  }

  /// Creates a new [MacOSSessionStorage].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [PlatformSessionStorage] in `flutter_adeeinappwebview` instead.
  @override
  MacOSSessionStorage createPlatformSessionStorage(
    PlatformSessionStorageCreationParams params,
  ) {
    return MacOSSessionStorage(params);
  }

  /// Creates a new [MacOSHeadlessInAppWebView].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [HeadlessInAppWebView] in `flutter_adeeinappwebview` instead.
  @override
  MacOSHeadlessInAppWebView createPlatformHeadlessInAppWebView(
    PlatformHeadlessInAppWebViewCreationParams params,
  ) {
    return MacOSHeadlessInAppWebView(params);
  }

  /// Creates a new [MacOSHttpAuthCredentialDatabase].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [HttpAuthCredentialDatabase] in `flutter_adeeinappwebview` instead.
  @override
  MacOSHttpAuthCredentialDatabase createPlatformHttpAuthCredentialDatabase(
    PlatformHttpAuthCredentialDatabaseCreationParams params,
  ) {
    return MacOSHttpAuthCredentialDatabase(params);
  }

  /// Creates a new [MacOSInAppBrowser].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [InAppBrowser] in `flutter_adeeinappwebview` instead.
  @override
  MacOSInAppBrowser createPlatformInAppBrowser(
    PlatformInAppBrowserCreationParams params,
  ) {
    return MacOSInAppBrowser(params);
  }

  /// Creates a new empty [MacOSInAppBrowser] to access static methods.
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [InAppBrowser] in `flutter_adeeinappwebview` instead.
  @override
  MacOSInAppBrowser createPlatformInAppBrowserStatic() {
    return MacOSInAppBrowser.static();
  }

  /// Creates a new empty [MacOSWebStorageManager] to access static methods.
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [WebStorageManager] in `flutter_adeeinappwebview` instead.
  @override
  MacOSWebStorageManager createPlatformWebStorageManager(
      PlatformWebStorageManagerCreationParams params) {
    return MacOSWebStorageManager(params);
  }

  /// Creates a new [MacOSWebAuthenticationSession].
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [WebAuthenticationSession] in `flutter_adeeinappwebview` instead.
  @override
  MacOSWebAuthenticationSession createPlatformWebAuthenticationSession(
      PlatformWebAuthenticationSessionCreationParams params) {
    return MacOSWebAuthenticationSession(params);
  }

  /// Creates a new empty [MacOSWebAuthenticationSession] to access static methods.
  ///
  /// This function should only be called by the app-facing package.
  /// Look at using [WebAuthenticationSession] in `flutter_adeeinappwebview` instead.
  @override
  MacOSWebAuthenticationSession createPlatformWebAuthenticationSessionStatic() {
    return MacOSWebAuthenticationSession.static();
  }
}
