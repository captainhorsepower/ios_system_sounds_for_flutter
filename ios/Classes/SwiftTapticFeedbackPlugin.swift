import Flutter
import UIKit
import AudioToolbox

public class SwiftTapticFeedbackPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "taptic_feedback", binaryMessenger: registrar.messenger())
    let instance = SwiftTapticFeedbackPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }



  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let  feedbackLight        : SystemSoundID = 1519;
    let  feedbackStrong       : SystemSoundID = 1520;
    let  doubleFeedbackStrong : SystemSoundID = 1102;
    let  tripleFeedbackLight  : SystemSoundID = 1521;
    let  tripleFeedbackStrong : SystemSoundID = 1107;
    let  quintFeedbackLight   : SystemSoundID = 1164;
    
    switch (call.method) {
    case "light":
      AudioServicesPlaySystemSound(feedbackLight)
      result(nil)
    case "strong":
      AudioServicesPlaySystemSound(feedbackStrong)
      result(nil)
    case "doubleStrong":
      AudioServicesPlaySystemSound(doubleFeedbackStrong)
      result(nil)
    case "tripleLight":
      AudioServicesPlaySystemSound(tripleFeedbackLight)
      result(nil)
    case "tripleStrong":
      AudioServicesPlaySystemSound(tripleFeedbackStrong)
      result(nil)
    case "quintStrong":
      AudioServicesPlaySystemSound(quintFeedbackLight)
      result(nil)
    case "fromCode":
      let soundId = call.arguments as! SystemSoundID
      AudioServicesPlaySystemSound(soundId)
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
