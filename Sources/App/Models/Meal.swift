//
//  File.swift
//  
//
//  Created by Wilson Cusack on 7/20/19.
//

import Foundation
import FluentPostgreSQL
import Vapor

final class Meal: Model {
    static var idKey: IDKey = \.id

    typealias Database = PostgreSQLDatabase
    
    typealias ID = UUID

    var id: UUID?
    var description: String
    
    init(description: String){
        self.id = UUID()
        self.description = description
    }
}

extension Meal: Migration { }
extension Meal: Content { }
extension Meal: Parameter { }

