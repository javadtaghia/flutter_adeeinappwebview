# flutter\_inappwebview\_platform\_interface

A common platform interface for the [`flutter_adeeinappwebview`](https://pub.dev/packages/flutter_adeeinappwebview) plugin.

This interface allows platform-specific implementations of the `flutter_adeeinappwebview`
plugin, as well as the plugin itself, to ensure they are supporting the
same interface.

# Usage

To implement a new platform-specific implementation of `flutter_adeeinappwebview`, extend
[`InAppWebViewPlatform`](lib/src/inappwebview_platform.dart) with an implementation that performs the
platform-specific behavior, and when you register your plugin, set the default
`InAppWebViewPlatform` by calling
`InAppWebViewPlatform.instance = MyPlatformWebview()`.

# Note on breaking changes

Strongly prefer non-breaking changes (such as adding a method to the interface)
over breaking changes for this package.

See https://flutter.dev/go/platform-interface-breaking-changes for a discussion
on why a less-clean interface is preferable to a breaking change.