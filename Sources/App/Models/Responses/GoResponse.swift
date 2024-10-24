//
//  GoResponse.swift
//  GoMigoAPI
//
//  Created by ADMIN UNACH on 24/10/24.
//

import Vapor
import Fluent

final class GoResponse: Fields, @unchecked Sendable, Content {
    
    @Field(key: "from")
    var from: GoUser
    
    @Field(key: "to")
    var to: GoUser
    
    @Field(key: "original_match")
    var originalMatch: GoMatch
    
    @Field(key: "reply_match")
    var replyMatch: GoMatch
    
    @Field(key: "current_ubication")
    var currentUbication: Place?
    
    @Field(key: "body")
    var body: Body
    
    @Field(key: "reason")
    var reason: GoReason
    
    @Field(key: "request_time")
    var requestTime: Float
    
    final class Body: Fields, @unchecked Sendable, Content {
        
        @Field(key: "status")
        var status: Status
        
        @Field(key: "message")
        var message: String
        
        @Field(key: "description")
        var description: String
    }
    
    enum Status: String, Content {
        case acepted
        case denied
        case ignored
    }
}
