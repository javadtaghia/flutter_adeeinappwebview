package ai.adee.flutter_adeeinappwebview_android.in_app_browser;

import android.content.Intent;

public interface ActivityResultListener {
  /** @return true if the result has been handled. */
  boolean onActivityResult(int requestCode, int resultCode, Intent data);
}
