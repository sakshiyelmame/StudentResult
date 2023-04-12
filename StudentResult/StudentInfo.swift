//
//  StudentInfo.swift
//  StudentResult
//
//  Created by Apple on 23/12/22.
//

import Foundation

struct StudentInfo {
    let firstName : String
    let middleName : String
    let lastName : String
    let percentage : Double
    let isReservation : Bool
    
    func getFullName()-> String{
        return "\(self.firstName) \(self.middleName) \(self.lastName)"
        
    }
    
    func getResult() -> String {
        if self.isReservation {
            if self.percentage>35 {
                return "\(self.getFullName()) passed"
            } else{
                return "\(self.getFullName()) failed"
            }
        }else {
            if self.percentage>40 {
                return "\(self.getFullName()) passed"
            } else {
                return "\(self.getFullName()) failed"
            }
        }
    }
}
