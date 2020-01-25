import SwiftUI
import UIKit

@available(iOS 13.0, *)
public struct SwiftUISpinner: UIViewRepresentable {
  
  public var animating: Bool
  
  public func makeUIView(context: Context) -> UIActivityIndicatorView {
    UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
  }
  
  public func updateUIView(_ view: UIActivityIndicatorView, context: Context) {
    if animating {
      view.startAnimating()
    } else {
      view.stopAnimating()
    }
  }
}
