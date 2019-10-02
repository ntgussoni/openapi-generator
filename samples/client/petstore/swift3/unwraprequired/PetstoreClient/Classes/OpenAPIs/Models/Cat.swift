//
// Cat.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class Cat: Animal {

    public var declawed: Bool?


    public init(className: String, color: String?=nil, declawed: Bool?=nil) {
        self.declawed = declawed
    }
    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["declawed"] = self.declawed

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
