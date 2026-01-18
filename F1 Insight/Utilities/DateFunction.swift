//
//  DateFunction.swift
//  F1 Insight
//
//  Created by Houssam on 18/01/2026.
//

import Foundation

extension Date {
   static func makeDate(_ string: String) -> Date {
        let formatter = DateFormatter()
           formatter.dateFormat = "yyyy-MM-dd"
           formatter.timeZone = .current
           return formatter.date(from: string) ?? Date()
    }
}



