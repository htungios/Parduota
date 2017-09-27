//
//  PABaseDataModel.swift
//  Parduota
//
//  Created by TungHN on 9/15/17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit
import ObjectMapper
import SwiftyJSON

class PABaseDataModel: NSObject {
    enum PropertiesKey: String {
        case id
    }
    
    // MARK: - Properties
    
    var id: Int = 0
    
    override init() {
        super.init()
    }
    
    // MARK: - Mappable
    
    required convenience init?(map: ObjectMapper.Map) {
        self.init()
    }
    
    func mapping(map: ObjectMapper.Map) {
        self.id    <- map[PropertiesKey.id.rawValue]
    }
    
    func initFromJson(json:JSON) {
        // Init from json, init from NSUserdefault
        self.id  = json["id"].intValue
    }

}
