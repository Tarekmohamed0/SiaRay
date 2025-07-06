import Flutter
import UIKit
import Firebase
@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()
    
    // Create and set up the Flutter view controller
    let flutterViewController: FlutterViewController = window?.rootViewController as! FlutterViewController
    flutterViewController.view.backgroundColor = UIColor.clear
    
    // Make window visible immediately without any transitions
    if let window = self.window {
      window.backgroundColor = UIColor.clear
      window.makeKeyAndVisible()
    }
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
