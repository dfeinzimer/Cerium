import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet var RoverCam2: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        RoverCam2 = WKWebView(frame: .zero, configuration: webConfiguration)
        RoverCam2.uiDelegate = self
        view = RoverCam2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let motion_url = URL(string:"http://10.0.1.140:8081/")
        let myRequest = URLRequest(url: motion_url!)
        RoverCam2.load(myRequest)
    }
}
