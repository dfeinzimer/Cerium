import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet var RoverCam1: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        RoverCam1 = WKWebView(frame: .zero, configuration: webConfiguration)
        RoverCam1.uiDelegate = self
        view = RoverCam1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"http://apple.com/")
        let myRequest = URLRequest(url: myURL!)
        RoverCam1.load(myRequest)
    }

}
