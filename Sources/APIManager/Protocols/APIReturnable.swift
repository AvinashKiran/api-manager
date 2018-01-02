//
//  APIReturnable.swift
//  APIManager
//
//  Created by Rauhul Varma on 10/29/17.
//  Copyright © 2017 Rauhul Varma. All rights reserved.
//

import Foundation

/**
    Defines the methods required for an object to be returned by an `APIService`. Any `Decodable` object can be used as an APIReturnable and will attempt use Swift's native `JSONDecoder` to attempt decoding.

    If the returned object should decoded with a different decoder or with addition configuration to the JSONDecoder, the optional `decode(data:)` can be overriden to enable this behavior.

 */
public protocol APIReturnable: Decodable {
    associatedtype ReturnType: Decodable
    /// Optional override point to enable specialized decoding strategies or other customization
    static func decode(from data: Data) throws -> ReturnType


}

/// Default implementations of APIReturnable components
public extension APIReturnable {

    /// Default implementation of decode that uses a `JSONDecoder` to attempt decoding.
    public static func decode(from data: Data) throws -> Self {
        return try JSONDecoder().decode(Self.self, from: data)
    }
}


class JSON: APIReturnable {
    var rawDictionary = [String: Any]()
    public var data: Data

    enum CodingKeys: CodingKey {
        case data
    }


//        func decode(fromd data: Data) throws -> Self {
//            return try JSONDecoder().decode(JSON.self, from: data)
//        }


}



//
//public protocol DataDecoder {
//    func decode<T : Decodable>(_ type: T.Type, from data: Data) throws -> T
//    static var decoder: DataDecoder {
//        return JSONDecoder()
//    }
//    static var decoder: DataDecoder { get }
//
//}
//extension JSONDecoder: DataDecoder { }



