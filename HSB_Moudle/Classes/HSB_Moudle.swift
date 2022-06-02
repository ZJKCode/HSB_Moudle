//
//  HSB_Moudle.swift
//  HSB_Moudle
//
//  Created by jikuan zhang on 2022/6/1.
//

import Foundation
import HSRouter

public class HSB_Moudle: RouterMoudleProtocol {
    public var moudle: String {"HSB_Moudle"}
    
    public var scheme: String {"hsbpps"}
    
    public var pathDic: [String : String] {
        ["path/b":"HSB_Controller",
         "path/b/detail":"HSB_DetailController"]
    }
    
    public class func registerPages(){
        HSB_Moudle().registerPages()
    }
}
