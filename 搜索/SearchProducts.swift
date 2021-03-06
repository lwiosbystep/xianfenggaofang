//
//  SearchProducts.swift
//  爱鲜蜂仿2次
//
//  Created by lotawei on 16/8/18.
//  Copyright © 2016年 lotawei. All rights reserved.
//

import UIKit

class SearchProducts: NSObject, DictModelProtocol {
    var code: Int = -1
    var msg: String?
    var reqid: String?
    var data: [Goods]?
    
    class func loadSearchData(completion:((data: SearchProducts?, error: NSError?) -> Void)) {
        let path = NSBundle.mainBundle().pathForResource("促销", ofType: nil)
        let data = NSData(contentsOfFile: path!)
        if data != nil {
            let dict: NSDictionary = (try! NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)) as! NSDictionary
            let modelTool = DictModelManager.sharedManager
            let data = modelTool.objectWithDictionary(dict, cls: SearchProducts.self) as? SearchProducts
            completion(data: data, error: nil)
        }
    }
    
    static func customClassMapping() -> [String : String]? {
        return ["data" : "\(Goods.self)"]
    }
}
