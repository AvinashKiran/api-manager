//
//  HTTPMethod.swift
//  APIManager
//
//  Created by Rauhul Varma on 1/7/18.
//  Copyright © 2018 Rauhul Varma. All rights reserved.
//

/// Enumeration of the HTTP methods
public enum HTTPMethod: String {
    /// The GET method requests a representation of the specified resource. Requests using GET should only retrieve data.
    case GET
    /// The HEAD method asks for a response identical to that of a GET request, but without the response body.
    case HEAD
    /// The POST method is used to submit an entity to the specified resource, often causing a change in state or side effects on the server.
    case POST
    /// The PUT method replaces all current representations of the target resource with the request payload.
    case PUT
    /// The DELETE method deletes the specified resource.
    case DELETE
    /// The OPTIONS method is used to describe the communication options for the target resource.
    case OPTIONS
    /// The PATCH method is used to apply partial modifications to a resource.
    case PATCH
}
