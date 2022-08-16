package quocpa.gmo.net.flavor_getx

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "flavor").setMethodCallHandler {
            call, result -> 
            when (call.method) {
                "getPackage" -> {
                    result.success(BuildConfig.FLAVOR)
                }
                // NOTE: Add new case
                "getFlavor" -> {
                    result.success(BuildConfig.FLAVOR)
                }
                else -> result.notImplemented()
            }
        }
    }
}
