//
//  Student+CoreDataProperties.swift
//  days100
//
//  Created by HEMANTH on 08/01/23.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?

}

extension Student : Identifiable {

}
