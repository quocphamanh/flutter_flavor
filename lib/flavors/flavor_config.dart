import 'package:flutter/services.dart';

class FlavorConfig {
  // 1
  Future<void> getFlavor() async {
    // 2
    const methodChannel = MethodChannel('flavor');
    // 3
    final flavor = await methodChannel.invokeMethod<String>('getFlavor');
    // 4
    if (flavor == 'dev') {
      print('Flavor: dev');
    } else if (flavor == 'staging') {
      print('Flavor: staging');
    } else if (flavor == 'product') {
      print('Flavor: product');
    }
  }
}
