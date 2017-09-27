//
//  PAUserModel.swift
//  Parduota
//
//  Created by TungHN on 9/15/17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit
import ObjectMapper
import SwiftyJSON

class PAUserModel: PABaseDataModel {
    
    enum PropertiesKey: String {
        case firstName
        case lastName
    }
    
    // MARK: - Properties

    var first_name: String = Constant.EMPTY_STRING
    var last_name: String = Constant.EMPTY_STRING
    
    // MARK: - Mappable

    override func mapping(map: ObjectMapper.Map) {
        super.mapping(map: map)
        
        self.first_name <- map[PropertiesKey.firstName.rawValue]
        self.last_name <- map[PropertiesKey.lastName.rawValue]
    }
    
    func toDic() -> [String: Any] {
        let dic: [String: Any] = [
            PropertiesKey.firstName.rawValue: first_name,
            PropertiesKey.lastName.rawValue: last_name
        ]
        
        return dic
    }
    
    override func initFromJson(json: JSON) {
        super.initFromJson(json: json)
        
        first_name = json[PropertiesKey.firstName.rawValue].stringValue
        last_name = json[PropertiesKey.lastName.rawValue].stringValue
    }
    
}
