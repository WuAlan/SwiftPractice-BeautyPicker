//
//  KoreanViewController.swift
//  beautyPicker
//
//  Created by WuYanlin on 15/4/7.
//  Copyright (c) 2015年 AllenWu. All rights reserved.
//



import UIKit
import Social
class KoreanViewController: UIViewController {

    
    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func facebookTapped(sender: AnyObject) {
        var controller=SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("hello swift.")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func weiboTapped(sender: AnyObject) {
        var controller=SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.setInitialText("hello swift.")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func twitterTapped(sender: AnyObject) {
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
