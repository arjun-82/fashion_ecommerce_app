import 'package:fashion/config/index/index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(
    widgetsBinding: widgetsBinding,
  );
  Get.put(SliderController());
  runApp(const ProviderScope(child:  FashionApp()));

  
  // Set delay before removing the splash screen
  await Future.delayed(
    const Duration(seconds: 3),
  );
  FlutterNativeSplash.remove();
}
