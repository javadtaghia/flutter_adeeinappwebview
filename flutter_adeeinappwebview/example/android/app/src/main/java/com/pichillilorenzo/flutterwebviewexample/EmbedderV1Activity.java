package ai.adee.flutterwebviewexample;

import android.os.Bundle;
import ai.adee.flutter_adeeinappwebview_android.InAppWebViewFlutterPlugin;

@SuppressWarnings("deprecation")
public class EmbedderV1Activity extends io.flutter.app.FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    InAppWebViewFlutterPlugin.registerWith(
            registrarFor("ai.adee.flutter_adeeinappwebview.InAppWebViewFlutterPlugin"));
  }
}