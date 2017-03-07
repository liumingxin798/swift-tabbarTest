//
//  threeViewController.swift
//  tabbarTest
//
//  Created by 刘明鑫 on 16/10/17.
//  Copyright © 2016年 刘明鑫. All rights reserved.
//

import UIKit

class threeViewController: FatherViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Navgation()
    }
    func Navgation(){
        mxLabel.text = "测试第三页"
        mxLeftBtn.isHidden = true;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
