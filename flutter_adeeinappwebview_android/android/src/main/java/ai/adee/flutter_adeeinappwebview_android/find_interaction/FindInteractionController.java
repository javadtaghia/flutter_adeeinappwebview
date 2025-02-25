package ai.adee.flutter_adeeinappwebview_android.find_interaction;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import ai.adee.flutter_adeeinappwebview_android.InAppWebViewFlutterPlugin;
import ai.adee.flutter_adeeinappwebview_android.types.Disposable;
import ai.adee.flutter_adeeinappwebview_android.types.FindSession;
import ai.adee.flutter_adeeinappwebview_android.webview.InAppWebViewInterface;

import io.flutter.plugin.common.MethodChannel;

public class FindInteractionController implements Disposable {
  static final String LOG_TAG = "FindInteractionController";
  public static final String METHOD_CHANNEL_NAME_PREFIX = "ai.adee/flutter_adeeinappwebview_find_interaction_";

  @Nullable
  public InAppWebViewInterface webView;
  @Nullable
  public FindSession activeFindSession;
  @Nullable
  public FindInteractionChannelDelegate channelDelegate;
  @Nullable
  public FindInteractionSettings settings;
  @Nullable
  public String searchText;

  public FindInteractionController(@NonNull InAppWebViewInterface webView, @NonNull InAppWebViewFlutterPlugin plugin,
                             @NonNull Object id, @Nullable FindInteractionSettings settings) {
    this.webView = webView;
    this.settings = settings;
    final MethodChannel channel = new MethodChannel(plugin.messenger, METHOD_CHANNEL_NAME_PREFIX + id);
    this.channelDelegate = new FindInteractionChannelDelegate(this, channel);
  }

  public void prepare() {

  }

  public void findAll(@Nullable String find) {
    if (find == null) {
      find = searchText;
    } else {
      // updated searchText
      searchText = find;
    }
    if (webView != null && find != null) {
      webView.findAllAsync(find);
    }
  }

  public void findNext(boolean forward) {
    if (webView != null) {
      webView.findNext(forward);
    }
  }

  public void clearMatches() {
    if (webView != null) {
      webView.clearMatches();
    }
  }

  public void dispose() {
    if (channelDelegate != null) {
      channelDelegate.dispose();
      channelDelegate = null;
    }
    webView = null;
    activeFindSession = null;
    searchText = null;
  }
}
