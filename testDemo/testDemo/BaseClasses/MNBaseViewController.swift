//
//  HLBaseViewController.swift
//  yios
//
//  Created by 江 on 16/7/27.
//  Copyright © 2016年 江. All rights reserved.
//

import UIKit
#if !RX_NO_MODULE
    import RxSwift
    import RxCocoa
#endif
class MNBaseViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    var titleLabel: UILabel! {
        willSet(value) {
            self.view.addSubview(value)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        self.binding()
        self.settingView()
        self.layout()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let temtb = self.tabBarController as! MNTabBarViewController
        temtb.zj_TBcallTheTabbar(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- delegate回调
    
    //MARK:- binding
    func binding() {
        
    }
    //MARK:- selector/target 事件处理
    //MARK:- settingViw设置view
    func settingView() {
        
    }
    //MARK:- 动画
    //MARK:- 设置约束/frame
    func layout() {
        
    }
    //MARK:- 数据处理
    //MARK:- 网络请求
    //MARK:- 自定义及其他方法
    
    deinit {
        print("dealloc \(self.classForCoder)")
    }
}
