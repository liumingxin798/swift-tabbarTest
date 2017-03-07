//
//  MainViewController.swift
//  tabbarTest
//
//  Created by 刘明鑫 on 16/10/17.
//  Copyright © 2016年 刘明鑫. All rights reserved.
//

import UIKit
let colorNum = 255

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createTabbar();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createTabbar(){
        
     
        //第一个导航控制器
        let first = UINavigationController(rootViewController:oneViewController(nibName:nil,bundle:nil))
        let item1:UITabBarItem = UITabBarItem(title:"测试",image:UIImage(named:"tab1_default"),selectedImage:UIImage(named:"tab1_selected"));
        first.tabBarItem = item1;
        //第二个导航控制器
        let second = UINavigationController(rootViewController:twoViewController(nibName:nil,bundle:nil))
        let item2:UITabBarItem = UITabBarItem(title:"测试",image:UIImage(named:"tab2_default"),selectedImage:UIImage(named:"tab2_selected"));
        second.tabBarItem = item2;
        
        //第三个导航控制器
        let three =
            UINavigationController(rootViewController:threeViewController(nibName:nil,bundle:nil))
        let item3:UITabBarItem = UITabBarItem(title:"测试",image:UIImage(named:"tab3_default"),selectedImage:UIImage(named:"tab3_selected"));
        three.tabBarItem = item3;
        
        
        self.tabBar.tintColor = UIColor(red: 26/255.0, green: 37/255.0, blue: 58/255.0, alpha: 1)
        //吧这3个导航控制器 加入数组
        let tabArry = [first,second,three];
        //加入tabbar控制器
        self.viewControllers = tabArry;
        
        
    }

}
