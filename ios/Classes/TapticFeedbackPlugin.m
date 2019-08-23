#import "TapticFeedbackPlugin.h"
#import <taptic_feedback/taptic_feedback-Swift.h>

@implementation TapticFeedbackPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTapticFeedbackPlugin registerWithRegistrar:registrar];
}
@end
