//
//  ViewController.swift
//  IOSSafariViewControllerTutorial
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate
{
    override func viewDidAppear(_ animated: Bool)
    {
		guard let url = URL(string: "https://seedlang.com")
		else { return }
		let safariViewController = SFSafariViewController(url: url)
		present(safariViewController, animated: true)
		{
			var frame = safariViewController.view.frame
			let OffsetY: CGFloat  = 53 // works on my iPhone8, but not perfect
			frame.origin = CGPoint(x: frame.origin.x, y: frame.origin.y - OffsetY)
			frame.size = CGSize(width: frame.width, height: frame.height + OffsetY)
			safariViewController.view.frame = frame
		}
    }

    func safariViewControllerDidFinish(_ controller: SFSafariViewController)
    {
        controller.dismiss(animated: true, completion: nil)
    }
}

