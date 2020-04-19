import Foundation
import UIKit

extension UIAlertController {
  
  /**
   Adds a UIAlertAction, initialized with a title, style, and completion handler.
   
   - parameter title: The text to use for the action title.
   - parameter style: The style to use for the action (optional, defaults to `.default`).
   - parameter handler: A closure to execute when the user selects the action (optional, defaults to `nil`).
   
   - returns: self
   */
  @discardableResult
  public func addAction(title: String?, style: UIAlertAction.Style = .default, handler: ((UIAlertAction) -> Void)? = nil) -> Self {
    addAction(UIAlertAction(title: title, style: style, handler: handler))
    return self
  }
  
  /**
   Creates a UIAlertController instance, styled as an action sheet.
   
   - parameter title: The title for the controller (optional, defaults to `nil`).
   - parameter message: The message for the controller (optional, defaults to `nil`).
   
   - returns: A UIAlertController instance, styled as an action sheet.
   */
  public static func actionSheet(title: String? = nil, message: String? = nil) -> UIAlertController {
    return UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
  }
  
  /**
   Creates a UIAlertController instance, styled as an alert.
   
   - parameter title: The title for the controller (optional, defaults to `nil`).
   - parameter message: The message for the controller (optional, defaults to `nil`).
   
   - returns: A UIAlertController instance, styled as an alert.
   */
  public static func alert(title: String? = nil, message: String? = nil) -> UIAlertController {
    return UIAlertController(title: title, message: message, preferredStyle: .alert)
  }
  
  /**
   Presents the UIAlertController inside the specified view controller.
   
   - parameter controller: The controller in which to present the alert controller (optional, defaults to `.current`).
   - parameter animated: Pass `true` to animate the presentation; otherwise, pass `false` (optional, defaults to `true`).
   - parameter completion: The closure to execute after the presentation finishes (optional, defaults to `nil`).
   */
  public func present(in controller: UIViewController? = .current, animated: Bool = true, completion: (() -> Void)? = nil) {
    controller?.present(self, animated: animated, completion: completion)
  }
}
