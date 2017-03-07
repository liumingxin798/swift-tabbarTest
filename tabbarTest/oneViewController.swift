//
//  oneViewController.swift
//  tabbarTest
//
//  Created by 刘明鑫 on 16/10/17.
//  Copyright © 2016年 刘明鑫. All rights reserved.
//

import UIKit

class oneViewController: FatherViewController,UITableViewDelegate,UITableViewDataSource {
    var test = ["数组1","数组1","数组1","数组1","数组1","数组1","数组1","数组1","数组1","数组1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CreateTableView()
        Navgation()
    }
    func Navgation(){
        mxLabel.text = "测试第一页"
        mxLeftBtn.isHidden = true;
    }
    func CreateTableView() {
        
        let tableView = UITableView(frame:CGRect(x:0,y:64,width:ManScreen_Width,height:ManScreen_Height-44-64),style:UITableViewStyle.plain)
        tableView.delegate = self;
        tableView.dataSource = self;
        self.view.addSubview(tableView);
    }
    //tableView的代理
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return test.count;
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier:"cell")
        
        cell.textLabel?.text = test[indexPath.row]
        
        return cell;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailForOneViewController()
        self.navigationController?.pushViewController(detail, animated: true)
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
