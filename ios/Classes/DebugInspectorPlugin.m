#import "DebugInspectorPlugin.h"
#if __has_include(<debug_inspector/debug_inspector-Swift.h>)
#import <debug_inspector/debug_inspector-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "debug_inspector-Swift.h"
#endif

@implementation DebugInspectorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDebugInspectorPlugin registerWithRegistrar:registrar];
}
@end
