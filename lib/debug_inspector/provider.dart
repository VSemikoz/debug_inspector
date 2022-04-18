import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

import '../debug_inspector.dart';

class DebugInspectorProvider extends ChangeNotifier {
  bool isInit = false;
  InspectorModel? _data;
  BehaviorSubject<InspectorModel?> controller = BehaviorSubject.seeded(null);
  late PerformanceStorage _storage;

  init() {
    if (isInit) {
      return;
    } else {
      _storage = PerformanceStorage();
      _initInspector();
      return;
    }
  }

  _initInspector() {
    _storage = PerformanceStorage();
    _updateData();
  }

  _updateData() {
    _data = InspectorModel(
      debugPaintSizeEnabled: _storage.debugPaintSizeEnabled,
      debugPaintBaselinesEnabled: _storage.debugPaintBaselinesEnabled,
      debugPaintLayerBordersEnabled: _storage.debugPaintLayerBordersEnabled,
      debugPaintPointersEnabled: _storage.debugPaintPointersEnabled,
      debugRepaintRainbowEnabled: _storage.debugRepaintRainbowEnabled,
      debugRepaintTextRainbowEnabled: _storage.debugRepaintTextRainbowEnabled,
      debugDisableClipLayers: _storage.debugDisableClipLayers,
      debugDisablePhysicalShapeLayers: _storage.debugDisablePhysicalShapeLayers,
      debugDisableOpacityLayers: _storage.debugDisableOpacityLayers,
    );
    controller.sink.add(_data!);
  }

  setValues({
    bool? debugPaintSizeEnabled,
    bool? debugPaintBaselinesEnabled,
    bool? debugPaintLayerBordersEnabled,
    bool? debugPaintPointersEnabled,
    bool? debugRepaintRainbowEnabled,
    bool? debugRepaintTextRainbowEnabled,
    bool? debugDisableClipLayers,
    bool? debugDisablePhysicalShapeLayers,
    bool? debugDisableOpacityLayers,
  }) {
    if (debugPaintSizeEnabled != null) {
      _storage.debugPaintSizeEnabled = debugPaintSizeEnabled;
    }
    if (debugPaintBaselinesEnabled != null) {
      _storage.debugPaintBaselinesEnabled = debugPaintBaselinesEnabled;
    }
    if (debugPaintLayerBordersEnabled != null) {
      _storage.debugPaintLayerBordersEnabled = debugPaintLayerBordersEnabled;
    }
    if (debugPaintPointersEnabled != null) {
      _storage.debugPaintPointersEnabled = debugPaintPointersEnabled;
    }
    if (debugRepaintRainbowEnabled != null) {
      _storage.debugRepaintRainbowEnabled = debugRepaintRainbowEnabled;
    }
    if (debugRepaintTextRainbowEnabled != null) {
      _storage.debugRepaintTextRainbowEnabled = debugRepaintTextRainbowEnabled;
    }
    if (debugDisableClipLayers != null) {
      _storage.debugDisableClipLayers = debugDisableClipLayers;
    }
    if (debugDisablePhysicalShapeLayers != null) {
      _storage.debugDisablePhysicalShapeLayers = debugDisablePhysicalShapeLayers;
    }
    if (debugDisableOpacityLayers != null) {
      _storage.debugDisableOpacityLayers = debugDisableOpacityLayers;
    }
    _updateData();
  }
}
