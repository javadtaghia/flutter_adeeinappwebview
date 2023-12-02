package com.pichillilorenzo.flutterwebviewexample;

import android.os.Bundle;
import com.pichillilorenzo.flutter_adeeinappwebview_android.InAppWebViewFlutterPlugin;

@SuppressWarnings("deprecation")
public class EmbedderV1Activity extends io.flutter.app.FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    InAppWebViewFlutterPlugin.registerWith(
            registrarFor("com.pichillilorenzo.flutter_adeeinappwebview.InAppWebViewFlutterPlugin"));
  }
}