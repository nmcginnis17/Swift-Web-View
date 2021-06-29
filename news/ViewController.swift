//
//  ViewController.swift
//  news
//
//  Created by Nicholas McGinnis on 6/28/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

	@IBOutlet var webView: WKWebView!
	
	override func loadView() {
			let webConfiguration = WKWebViewConfiguration()
			webView = WKWebView(frame: .zero, configuration: webConfiguration)
			webView.uiDelegate = self
			view = webView
		}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		let myURL = URL(string:"https://money.yahoo.com/")
		let myRequest = URLRequest(url: myURL!)
		webView.load(myRequest)
	}


}

