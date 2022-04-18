import 'package:flutter/rendering.dart';

import 'data_base.dart';

Future setDebugInspectorValues() async {
  await PerformanceStorage.initHive();
  final storage = PerformanceStorage();

  debugPaintSizeEnabled = storage.debugPaintSizeEnabled;
  debugPaintBaselinesEnabled = storage.debugPaintBaselinesEnabled;
  debugPaintLayerBordersEnabled = storage.debugPaintLayerBordersEnabled;
  debugPaintPointersEnabled = storage.debugPaintPointersEnabled;
  debugRepaintRainbowEnabled = storage.debugRepaintRainbowEnabled;
  debugRepaintTextRainbowEnabled = storage.debugRepaintTextRainbowEnabled;
  debugDisableClipLayers = storage.debugDisableClipLayers;
  debugDisablePhysicalShapeLayers = storage.debugDisablePhysicalShapeLayers;
  debugDisableOpacityLayers = storage.debugDisableOpacityLayers;
}
