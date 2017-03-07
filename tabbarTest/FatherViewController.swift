
//
//  FatherViewController.swift
//  tabbarTest
//
//  Created by 刘明鑫 on 16/10/17.
//  Copyright © 2016年 刘明鑫. All rights reserved.
//
//------@param 屏幕高度

import UIKit

//------@param 屏幕高度
let ManScreen_Height = (UIScreen.main.bounds.size.height)
//------@param 屏幕宽度
let ManScreen_Width = (UIScreen.main.bounds.size.width)

var mxImageView:UIImageView!
var mxTopView:UIView!
var mxLabel:UILabel!
var mxLeftBtn:UIButton!
var mxRightBtn:UIButton!



class FatherViewController: UIViewController,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent;
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
        fatherImage()
        fatherTopView()
        fatherLeftBtn()
        fatherLabel()
        
    }
    //初始化
//    private lazy var ImageView:UIImageView? = {
//        var mximage = UIImageView(image:UIImage(named:"NavgationBackground"))
//            mximage.frame = CGRect(x:0,y:0,width:0,height:0)
//        return mximage;
//    }()
    func fatherImage(){
        mxImageView = UIImageView(image:UIImage(named:"NavgationBackground"))
        mxImageView.frame = CGRect(x:0,y:0,width:ManScreen_Width,height:64)
        self.view.addSubview(mxImageView)
    }
    func fatherTopView(){
        mxTopView = UIView(frame:CGRect(x:0, y:20, width:ManScreen_Width,height:44))
        mxTopView.backgroundColor = UIColor.clear
        self.view.addSubview(mxTopView)
    }
    func fatherLeftBtn(){
        mxLeftBtn = UIButton(type:.custom)
        mxLeftBtn.frame = CGRect(x:10,y:0,width:44,height:44)
        mxLeftBtn.setImage(UIImage(named:"nav_back"), for:.normal)
        mxLeftBtn.addTarget(self, action:#selector(self.returnNavgation), for:.touchUpInside)
        mxTopView.addSubview(mxLeftBtn)
    }
    func fatherLabel(){
        mxLabel = UILabel(frame:CGRect(x:(ManScreen_Width-(ManScreen_Width-80))/2,y:3,width:ManScreen_Width-80,height:40))
        mxLabel.font = UIFont.systemFont(ofSize:17)
        mxLabel.textAlignment = NSTextAlignment.center
        mxLabel.textColor = UIColor.white
        mxTopView.addSubview(mxLabel)
    }
    func returnNavgation(){
        print("oc")
        self.navigationController!.popViewController(animated: true)
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
