//
//  BaseViewController.swift
//  TestSwift
//
//  Created by jianqiang on 17/4/18.
//  Copyright © 2017年 jianqiang. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    var params: Dictionary<String, NSObject>? = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
    }
    
    override func loadView() {
        super.loadView()
        
        initVariables()
        initViews()
    }
    
    func initVariables() {
        
    }
    
    func initViews() {
        
    }
    
    func loadData() {
        
    }
}
