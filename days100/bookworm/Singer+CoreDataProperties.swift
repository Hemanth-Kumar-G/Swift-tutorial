//
//  Singer+CoreDataProperties.swift
//  days100
//
//  Created by HEMANTH on 08/01/23.
//
//

import Foundation
import CoreData


extension Singer {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }
    
    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    
    var wrapperFirstName :String{
        firstName ?? "Unknown"
    }
    
    var wrapperLastName :String{
        lastName ?? "Unknown"
    }
    
}

extension Singer : Identifiable {
    
}
