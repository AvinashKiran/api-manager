//
//  JSON.swift
//  APIManagerTests
//
//  Created by Rauhul Varma on 11/2/17.
//  Copyright © 2017 Rauhul Varma. All rights reserved.
//

import Foundation
import APIManager

final class JSON: APIReturnable {
    var rawDictionary = [String: Any]()

    enum CodingKeys: CodingKey { }

//    func decode(fromd data: Data) throws -> Self {
//        return try JSONDecoder().decode(JSON.self, from: data) as Self.self
//    }


//    static func decode(from data: Data) throws -> JSON {
//        let json = try JSONSerialization.jsonObject(with: data, options: [])
//        if let json = json as? [String: Any] {
//            let j = JSON()
//            j.rawDictionary = json
//            return j
//        } else {
//            throw NSError(domain: "Conversion Error. Failed to convert data to json dictionary.", code: 1, userInfo: nil)
//        }
//    }
}
