//
//  GalleryViewController.swift
//  beautyPicker
//
//  Created by WuYanlin on 15/4/6.
//  Copyright (c) 2015年 AllenWu. All rights reserved.
//

import UIKit
import Social
class GalleryViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    var imageName:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = imageName
        {
            beautyImage.image = UIImage(named: imageName!)
            switch name
            {
            case "korean":
                navigationItem.title = "韩国人"
            case "libingbing":
                navigationItem.title = "李冰冰"
            case "wangfei":
                navigationItem.title = "王菲"
            case "yangmi":
                navigationItem.title = "杨幂"
            case "zhouxu":
                navigationItem.title = "周迅"
            default:
                navigationItem.title = "U should not see this."
            }
        }
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func shareTapped(sender: AnyObject) {
        var controller=SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("hello swift.")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
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
