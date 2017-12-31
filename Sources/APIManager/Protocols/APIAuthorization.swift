//
//  APIAuthorization.swift
//  APIManager
//
//  Created by Rauhul Varma on 4/21/17.
//  Copyright © 2017 Rauhul Varma. All rights reserved.
//

import Foundation

/// `APIAuthorization` defines all the properties and methods a class must contain to be used as an authorization for an `APIRequest`.
public protocol APIAuthorization {

    /// Defines how to embed a custom `APIAuthorization` object into an `APIRequest`. This can be done by modifying the request's one or all of the following: url parameters, body, headers
    func embedInto<Service, ReturnType>(request: APIRequest<Service, ReturnType>) -> (HTTPParameters?, HTTPBody?)
}
