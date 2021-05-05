//
//  ViewController.swift
//  UnitTestProject
//
//  Created by João Leonardo Morganti on 04/05/21.
//

import UIKit
import SwiftyGif

class ViewController: UIViewController {
    
    @IBOutlet weak var gifImageView: UIImageView!
    
    private let GIF_URL = "https://miro.medium.com/max/1800/1*jB76MLZjiNhGSQQvxm7LSQ.gif"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupGif()
    }
    
    private func setupGif() {
        let url = URL(string: self.GIF_URL)
        let loader = UIActivityIndicatorView(style: .large)
        self.gifImageView.layer.cornerRadius = 20
        self.gifImageView.setGifFromURL(url!, customLoader: loader)
    }
    
}

