//
//  MyCustomClasses.swift
//  SegueProject
//
//  Created by student on 01/04/25.
//

import Foundation

public class College{
    var Name = "MIT"
    var Address = "Sir MV Road, Manipal 576104"
    var PhoneNumber = 08202571010
    var StudentCount = 3200
    var DirectorName = "Cdr(Dr.)Anil Rana"
}

public class Department:College{
    var HOD = "PCS"
    var FacultyStrength = 78
    var Location = "AB5,MIT"
    
}

public class Laboratory:Department{
    
}
