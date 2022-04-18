import 'package:debug_inspector/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model.dart';

class PerformanceDebugSwitcher extends StatelessWidget {
  const PerformanceDebugSwitcher({Key? key}) : super(key: key);

  setValues(
    BuildContext context, {
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
      context.read<DebugInspectorProvider>().setValues(
            debugPaintSizeEnabled: !debugPaintSizeEnabled,
          );
    }
    if (debugPaintBaselinesEnabled != null) {
      context.read<DebugInspectorProvider>().setValues(
            debugPaintBaselinesEnabled: !debugPaintBaselinesEnabled,
          );
    }
    if (debugPaintLayerBordersEnabled != null) {
      context.read<DebugInspectorProvider>().setValues(
            debugPaintLayerBordersEnabled: !debugPaintLayerBordersEnabled,
          );
    }
    if (debugPaintPointersEnabled != null) {
      context.read<DebugInspectorProvider>().setValues(
            debugPaintPointersEnabled: !debugPaintPointersEnabled,
          );
    }
    if (debugRepaintRainbowEnabled != null) {
      context.read<DebugInspectorProvider>().setValues(
            debugRepaintRainbowEnabled: !debugRepaintRainbowEnabled,
          );
    }
    if (debugRepaintTextRainbowEnabled != null) {
      context.read<DebugInspectorProvider>().setValues(
            debugRepaintTextRainbowEnabled: !debugRepaintTextRainbowEnabled,
          );
    }
    if (debugDisableClipLayers != null) {
      context.read<DebugInspectorProvider>().setValues(
            debugDisableClipLayers: !debugDisableClipLayers,
          );
    }
    if (debugDisablePhysicalShapeLayers != null) {
      context.read<DebugInspectorProvider>().setValues(
            debugDisablePhysicalShapeLayers: !debugDisablePhysicalShapeLayers,
          );
    }
    if (debugDisableOpacityLayers != null) {
      context.read<DebugInspectorProvider>().setValues(
            debugDisableOpacityLayers: !debugDisableOpacityLayers,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DebugInspectorProvider>(
      create: (context) => DebugInspectorProvider()..init(),
      child: Builder(
        builder: (context) {
          return StreamBuilder<InspectorModel?>(
            stream: context.read<DebugInspectorProvider>().controller,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.data!;
                return ListView(
                  children: [
                    _Item(
                      value: data.debugPaintSizeEnabled,
                      text: 'debugPaintSizeEnabled',
                      onChanged: () => setValues(
                        context,
                        debugPaintSizeEnabled: data.debugPaintSizeEnabled,
                      ),
                    ),
                    _Item(
                      value: data.debugPaintBaselinesEnabled,
                      text: 'debugPaintBaselinesEnabled',
                      onChanged: () => setValues(
                        context,
                        debugPaintBaselinesEnabled:
                            data.debugPaintBaselinesEnabled,
                      ),
                    ),
                    _Item(
                      value: data.debugPaintLayerBordersEnabled,
                      text: 'debugPaintLayerBordersEnabled',
                      onChanged: () => setValues(
                        context,
                        debugPaintLayerBordersEnabled:
                            data.debugPaintLayerBordersEnabled,
                      ),
                    ),
                    _Item(
                      value: data.debugPaintPointersEnabled,
                      text: 'debugPaintPointersEnabled',
                      onChanged: () => setValues(
                        context,
                        debugPaintPointersEnabled:
                            data.debugPaintPointersEnabled,
                      ),
                    ),
                    _Item(
                      value: data.debugRepaintRainbowEnabled,
                      text: 'debugRepaintRainbowEnabled',
                      onChanged: () => setValues(
                        context,
                        debugRepaintRainbowEnabled:
                            data.debugRepaintRainbowEnabled,
                      ),
                    ),
                    _Item(
                      value: data.debugRepaintTextRainbowEnabled,
                      text: 'debugRepaintTextRainbowEnabled',
                      onChanged: () => setValues(
                        context,
                        debugRepaintTextRainbowEnabled:
                            data.debugRepaintTextRainbowEnabled,
                      ),
                    ),
                    _Item(
                      value: data.debugDisableClipLayers,
                      text: 'debugDisableClipLayers',
                      onChanged: () => setValues(
                        context,
                        debugDisableClipLayers: data.debugDisableClipLayers,
                      ),
                    ),
                    _Item(
                      value: data.debugDisablePhysicalShapeLayers,
                      text: 'debugDisablePhysicalShapeLayers',
                      onChanged: () => setValues(
                        context,
                        debugDisablePhysicalShapeLayers:
                            data.debugDisablePhysicalShapeLayers,
                      ),
                    ),
                    _Item(
                      value: data.debugDisableOpacityLayers,
                      text: 'debugDisableOpacityLayers',
                      onChanged: () => setValues(
                        context,
                        debugDisableOpacityLayers:
                            data.debugDisableOpacityLayers,
                      ),
                    ),
                  ],
                );
              }

              return Container();
            },
          );
        },
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String text;
  final bool value;
  final Function() onChanged;

  const _Item({
    Key? key,
    required this.text,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(text),
      value: value,
      onChanged: (_) => onChanged(),
    );
  }
}

showPerformanceSwitcher(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (_) => const PerformanceDebugSwitcher(),
  );
}
