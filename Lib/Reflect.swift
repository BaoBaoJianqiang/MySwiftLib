///
///  Reflect.swift
///  TestSwift
///
///  Created by jianqiang on 17/4/18.
///  Copyright © 2017年 jianqiang. All rights reserved.
///

import Foundation

class Reflect<T: BaseViewController> {
    /// 类文件字符串转换为ViewController
    ///
    /// - Parameter childControllerName: VC的字符串
    /// - Returns: NSObject
    static func getClassFromString(_ childControllerName: String) -> T?{
        
        /// 1.获取命名空间
        /// 通过字典的键来取值,如果键名不存在,那么取出来的值有可能就为没值.所以通过字典取出的值的类型为AnyObject?
        guard let clsName = Bundle.main.infoDictionary!["CFBundleExecutable"] else {
            print("命名空间不存在")
            return nil
        }
        /// 2.通过命名空间和类名转换成类
        let cls : AnyClass? = NSClassFromString((clsName as! String) + "." + childControllerName)
        
        /// swift 中通过Class创建一个对象,必须告诉系统Class的类型
        guard let clsType = cls as? T.Type else {
            print("无法转换成BaseViewController")
            return nil
        }
        
        /// 3.通过Class创建对象
        let childController = clsType.init()
        
        return childController
    }
}
