#import "AudioProgressBarsPlugin.h"
#if __has_include(<audio_progress_bars/audio_progress_bars-Swift.h>)
#import <audio_progress_bars/audio_progress_bars-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "audio_progress_bars-Swift.h"
#endif

@implementation AudioProgressBarsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAudioProgressBarsPlugin registerWithRegistrar:registrar];
}
@end
