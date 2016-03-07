//
//  WebViewController.swift
//  GuideSample
//
//  Created by Servet Can Asutay on 08/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    var urlStr:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        webView.delegate = self
        
        let requestURL = NSURL(string:urlStr)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)*/
        
        UIApplication.sharedApplication().openURL(NSURL(string: urlStr)!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView)
    {
    }
    func webViewDidFinishLoad(webView: UIWebView)
    {
        let contentSize:CGSize = webView.scrollView.contentSize
        let viewSize:CGSize = self.view.bounds.size
        
        let rw = viewSize.width / contentSize.width
        
        webView.scrollView.minimumZoomScale = rw
        webView.scrollView.maximumZoomScale = rw
        webView.scrollView.zoomScale = rw
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
