import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class PerformanceStorage {
  static const String boxName = 'debug_perfomance';

  static Future initHive() async {
    if (!Hive.isBoxOpen(boxName)) {
      Hive.init((await getApplicationDocumentsDirectory()).path);
    }
    return await Hive.openBox(boxName);
  }

  Box get _hiveBox => Hive.box(boxName);

  bool get debugPaintSizeEnabled =>
      _hiveBox.get(_Keys.debugPaintSizeEnabled.getName()) ?? false;

  bool get debugPaintBaselinesEnabled =>
      _hiveBox.get(_Keys.debugPaintBaselinesEnabled.getName()) ?? false;

  bool get debugPaintLayerBordersEnabled =>
      _hiveBox.get(_Keys.debugPaintLayerBordersEnabled.getName()) ?? false;

  bool get debugPaintPointersEnabled =>
      _hiveBox.get(_Keys.debugPaintPointersEnabled.getName()) ?? false;

  bool get debugRepaintRainbowEnabled =>
      _hiveBox.get(_Keys.debugRepaintRainbowEnabled.getName()) ?? false;

  bool get debugRepaintTextRainbowEnabled =>
      _hiveBox.get(_Keys.debugRepaintTextRainbowEnabled.getName()) ?? false;

  bool get debugDisableClipLayers =>
      _hiveBox.get(_Keys.debugDisableClipLayers.getName()) ?? false;

  bool get debugDisablePhysicalShapeLayers =>
      _hiveBox.get(_Keys.debugDisablePhysicalShapeLayers.getName()) ?? false;

  bool get debugDisableOpacityLayers =>
      _hiveBox.get(_Keys.debugDisableOpacityLayers.getName()) ?? false;

  set debugPaintSizeEnabled(bool? debugPaintSizeEnabled) => _hiveBox.put(
      _Keys.debugPaintSizeEnabled.getName(), debugPaintSizeEnabled);

  set debugPaintBaselinesEnabled(bool? debugPaintBaselinesEnabled) =>
      _hiveBox.put(_Keys.debugPaintBaselinesEnabled.getName(),
          debugPaintBaselinesEnabled);

  set debugPaintLayerBordersEnabled(bool? debugPaintLayerBordersEnabled) =>
      _hiveBox.put(_Keys.debugPaintLayerBordersEnabled.getName(),
          debugPaintLayerBordersEnabled);

  set debugPaintPointersEnabled(bool? debugPaintPointersEnabled) =>
      _hiveBox.put(
          _Keys.debugPaintPointersEnabled.getName(), debugPaintPointersEnabled);

  set debugRepaintRainbowEnabled(bool? debugRepaintRainbowEnabled) =>
      _hiveBox.put(_Keys.debugRepaintRainbowEnabled.getName(),
          debugRepaintRainbowEnabled);

  set debugRepaintTextRainbowEnabled(bool? debugRepaintTextRainbowEnabled) =>
      _hiveBox.put(_Keys.debugRepaintTextRainbowEnabled.getName(),
          debugRepaintTextRainbowEnabled);

  set debugDisableClipLayers(bool? debugDisableClipLayers) => _hiveBox.put(
      _Keys.debugDisableClipLayers.getName(), debugDisableClipLayers);

  set debugDisablePhysicalShapeLayers(bool? debugDisablePhysicalShapeLayers) =>
      _hiveBox.put(_Keys.debugDisablePhysicalShapeLayers.getName(),
          debugDisablePhysicalShapeLayers);

  set debugDisableOpacityLayers(bool? debugDisableOpacityLayers) =>
      _hiveBox.put(
          _Keys.debugDisableOpacityLayers.getName(), debugDisableOpacityLayers);
}

enum _Keys {
  debugPaintSizeEnabled,
  debugPaintBaselinesEnabled,
  debugPaintLayerBordersEnabled,
  debugPaintPointersEnabled,
  debugRepaintRainbowEnabled,
  debugRepaintTextRainbowEnabled,
  debugDisableClipLayers,
  debugDisablePhysicalShapeLayers,
  debugDisableOpacityLayers,
}

extension on _Keys {
  String getName() {
    switch (this) {
      case _Keys.debugPaintSizeEnabled:
        return 'debugPaintSizeEnabled';
      case _Keys.debugPaintBaselinesEnabled:
        return 'debugPaintBaselinesEnabled';
      case _Keys.debugPaintLayerBordersEnabled:
        return 'debugPaintLayerBordersEnabled';
      case _Keys.debugPaintPointersEnabled:
        return 'debugPaintPointersEnabled';
      case _Keys.debugRepaintRainbowEnabled:
        return 'debugRepaintRainbowEnabled';
      case _Keys.debugRepaintTextRainbowEnabled:
        return 'debugRepaintTextRainbowEnabled';
      case _Keys.debugDisableClipLayers:
        return 'debugDisableClipLayers';
      case _Keys.debugDisablePhysicalShapeLayers:
        return 'debugDisablePhysicalShapeLayers';
      case _Keys.debugDisableOpacityLayers:
        return 'debugDisableOpacityLayers';
    }
  }
}
