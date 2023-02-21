//
//  ViewController.swift
//  Proto Spinner ios
//
//  Created by Santosh Krishnamurthy on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loadingView: UIView! {
        didSet{
            loadingView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    
    var progress: Float? {
        didSet{
            if let progress{
                progressView.progress = progress
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activityIndicator.startAnimating()
        loadingView.isHidden = false
    }

    @IBAction func showSpinnerPressed(_ sender: UIButton) {
        activityIndicator.startAnimating()
        loadingView.isHidden = false
        progressView.isHidden = false
        if let progress{
            self.progress = progress + 0.1
        } else{
            self.progress = 0.1
        }
    }
    
    @IBAction func hideSpinnerPressed(_ sender: UIButton) {
        activityIndicator.stopAnimating()
        loadingView.isHidden = true
        progressView.isHidden = true
        self.progress = 0.1
    }
    
}

