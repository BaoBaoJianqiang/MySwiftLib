//
//  Navigator.swift
//  TestSwift
//
//  Created by jianqiang on 17/4/18.
//  Copyright © 2017年 jianqiang. All rights reserved.
//

import Foundation
import UIKit

class Navigator {
    static var myNavigator: Navigator? = nil;
    
    private init() {
        
    }
    
    static func getInstance() -> Navigator {
        if myNavigator == nil {
            myNavigator = Navigator()
        }
        
        return myNavigator!
    }
    
    var nav: UINavigationController? = nil

    func navigateTo(_ viewController: String) {
        navigateTo(viewController, nil)
    }

    func navigateTo(_ viewController: String, _ params: Dictionary<String, NSObject>?) {
        
        let classObject = Reflect.getClassFromString(viewController)!
        classObject.params = params
        
        nav?.pushViewController(classObject, animated: true)
    }
}


