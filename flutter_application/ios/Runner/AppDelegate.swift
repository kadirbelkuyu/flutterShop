import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyD6M6L4qOd1q5f1uFh2EzSK0cCF2qYDXF0")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    //if #available(iOS 10.0, *) {
      //UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
    }
  }
