import UIKit
import WebKit

class WebViewController: UIViewController {

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let config = WKWebViewConfiguration()
        config.preferences.javaScriptEnabled = true

        webView = WKWebView(frame: view.bounds, configuration: config)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(webView)

        let url = URL(string: "https://console.cloud.google.com")!
        webView.load(URLRequest(url: url))
    }
}
