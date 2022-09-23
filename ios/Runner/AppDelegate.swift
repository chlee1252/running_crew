import UIKit
import Flutter
import flutter_config

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      FlutterConfigPlugin.env(for: "NAVER_MAP_CLIENT_KEY")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
