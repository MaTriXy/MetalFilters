//
//  ViewController.swift
//  MetalFilters
//
//  Created by xu.shuifeng on 2018/6/5.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import UIKit
import MetalPetal

class ViewController: UIViewController {

    fileprivate var filter: InstagramFilters?
    
    @IBOutlet weak var imageView: MTIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        filter = InstagramFilters()
        
        guard let image = UIImage(named: "IMG_8957.JPG") else {
            return
        }
        let originImage = MTIImage(cgImage: image.cgImage!, options: [.SRGB: false], alphaType: .alphaIsOne).oriented(.right)
        imageView.image = originImage
        
        filter?.amaroFilter.inputImage = originImage
        imageView.image = filter?.amaroFilter.outputImage
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

