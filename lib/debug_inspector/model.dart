class InspectorModel {
  final bool debugPaintSizeEnabled;
  final bool debugPaintBaselinesEnabled;
  final bool debugPaintLayerBordersEnabled;
  final bool debugPaintPointersEnabled;
  final bool debugRepaintRainbowEnabled;
  final bool debugRepaintTextRainbowEnabled;
  final bool debugDisableClipLayers;
  final bool debugDisablePhysicalShapeLayers;
  final bool debugDisableOpacityLayers;

  const InspectorModel({
    required this.debugPaintSizeEnabled,
    required this.debugPaintBaselinesEnabled,
    required this.debugPaintLayerBordersEnabled,
    required this.debugPaintPointersEnabled,
    required this.debugRepaintRainbowEnabled,
    required this.debugRepaintTextRainbowEnabled,
    required this.debugDisableClipLayers,
    required this.debugDisablePhysicalShapeLayers,
    required this.debugDisableOpacityLayers,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InspectorModel &&
          runtimeType == other.runtimeType &&
          debugPaintSizeEnabled == other.debugPaintSizeEnabled &&
          debugPaintBaselinesEnabled == other.debugPaintBaselinesEnabled &&
          debugPaintLayerBordersEnabled ==
              other.debugPaintLayerBordersEnabled &&
          debugPaintPointersEnabled == other.debugPaintPointersEnabled &&
          debugRepaintRainbowEnabled == other.debugRepaintRainbowEnabled &&
          debugRepaintTextRainbowEnabled ==
              other.debugRepaintTextRainbowEnabled &&
          debugDisableClipLayers == other.debugDisableClipLayers &&
          debugDisablePhysicalShapeLayers ==
              other.debugDisablePhysicalShapeLayers &&
          debugDisableOpacityLayers == other.debugDisableOpacityLayers);

  @override
  int get hashCode =>
      debugPaintSizeEnabled.hashCode ^
      debugPaintBaselinesEnabled.hashCode ^
      debugPaintLayerBordersEnabled.hashCode ^
      debugPaintPointersEnabled.hashCode ^
      debugRepaintRainbowEnabled.hashCode ^
      debugRepaintTextRainbowEnabled.hashCode ^
      debugDisableClipLayers.hashCode ^
      debugDisablePhysicalShapeLayers.hashCode ^
      debugDisableOpacityLayers.hashCode;

  @override
  String toString() {
    return 'Dog{'
        ' debugPaintSizeEnabled: $debugPaintSizeEnabled,'
        ' debugPaintBaselinesEnabled: $debugPaintBaselinesEnabled,'
        ' debugPaintLayerBordersEnabled: $debugPaintLayerBordersEnabled,'
        ' debugPaintPointersEnabled: $debugPaintPointersEnabled,'
        ' debugRepaintRainbowEnabled: $debugRepaintRainbowEnabled,'
        ' debugRepaintTextRainbowEnabled: $debugRepaintTextRainbowEnabled,'
        ' debugDisableClipLayers: $debugDisableClipLayers,'
        ' debugDisablePhysicalShapeLayers: $debugDisablePhysicalShapeLayers,'
        ' debugDisableOpacityLayers: $debugDisableOpacityLayers,'
        '}';
  }

  InspectorModel copyWith({
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
    return InspectorModel(
      debugPaintSizeEnabled:
          debugPaintSizeEnabled ?? this.debugPaintSizeEnabled,
      debugPaintBaselinesEnabled:
          debugPaintBaselinesEnabled ?? this.debugPaintBaselinesEnabled,
      debugPaintLayerBordersEnabled:
          debugPaintLayerBordersEnabled ?? this.debugPaintLayerBordersEnabled,
      debugPaintPointersEnabled:
          debugPaintPointersEnabled ?? this.debugPaintPointersEnabled,
      debugRepaintRainbowEnabled:
          debugRepaintRainbowEnabled ?? this.debugRepaintRainbowEnabled,
      debugRepaintTextRainbowEnabled:
          debugRepaintTextRainbowEnabled ?? this.debugRepaintTextRainbowEnabled,
      debugDisableClipLayers:
          debugDisableClipLayers ?? this.debugDisableClipLayers,
      debugDisablePhysicalShapeLayers: debugDisablePhysicalShapeLayers ??
          this.debugDisablePhysicalShapeLayers,
      debugDisableOpacityLayers:
          debugDisableOpacityLayers ?? this.debugDisableOpacityLayers,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'debugPaintSizeEnabled': debugPaintSizeEnabled,
      'debugPaintBaselinesEnabled': debugPaintBaselinesEnabled,
      'debugPaintLayerBordersEnabled': debugPaintLayerBordersEnabled,
      'debugPaintPointersEnabled': debugPaintPointersEnabled,
      'debugRepaintRainbowEnabled': debugRepaintRainbowEnabled,
      'debugRepaintTextRainbowEnabled': debugRepaintTextRainbowEnabled,
      'debugDisableClipLayers': debugDisableClipLayers,
      'debugDisablePhysicalShapeLayers': debugDisablePhysicalShapeLayers,
      'debugDisableOpacityLayers': debugDisableOpacityLayers,
    };
  }

  factory InspectorModel.fromMap(Map<String, dynamic> map) {
    return InspectorModel(
      debugPaintSizeEnabled: map['debugPaintSizeEnabled'] as bool,
      debugPaintBaselinesEnabled: map['debugPaintBaselinesEnabled'] as bool,
      debugPaintLayerBordersEnabled:
          map['debugPaintLayerBordersEnabled'] as bool,
      debugPaintPointersEnabled: map['debugPaintPointersEnabled'] as bool,
      debugRepaintRainbowEnabled: map['debugRepaintRainbowEnabled'] as bool,
      debugRepaintTextRainbowEnabled:
          map['debugRepaintTextRainbowEnabled'] as bool,
      debugDisableClipLayers: map['debugDisableClipLayers'] as bool,
      debugDisablePhysicalShapeLayers:
          map['debugDisablePhysicalShapeLayers'] as bool,
      debugDisableOpacityLayers: map['debugDisableOpacityLayers'] as bool,
    );
  }
}
