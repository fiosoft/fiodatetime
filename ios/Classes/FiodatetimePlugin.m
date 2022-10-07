#import "FiodatetimePlugin.h"
#if __has_include(<fiodatetime/fiodatetime-Swift.h>)
#import <fiodatetime/fiodatetime-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fiodatetime-Swift.h"
#endif

@implementation FiodatetimePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFiodatetimePlugin registerWithRegistrar:registrar];
}
@end
