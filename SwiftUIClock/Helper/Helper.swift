//
//  Helper.swift
//  SwiftUIClock
//
//  Created by Angelos Staboulis on 3/3/25.
//

import Foundation
class Helper{

    func createHourHand()->Double{
        let date = Calendar.current.dateComponents(in: .current, from: Date())

        guard let hourConvert = date.hour else{
            return 0
        }
        
        return Double((360/12) * hourConvert)
    }
    func createMinuteHand()->Double{
        let date = Calendar.current.dateComponents(in: .current, from: Date())

        guard let minuteConvert = date.minute else{
            return 0
        }
        
        return Double((360/60) * minuteConvert)
    }
    func createSecondHand()->Double{
        let date = Calendar.current.dateComponents(in: .current, from: Date())

        guard let secondConvert = date.second else{
            return 0
        }
        
        return Double((360/60) * secondConvert)
    }
    func createTextFullDate()->String{
        let date = Calendar.current.dateComponents(in: .current, from: Date())

        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.string(from: date.date!)
        let text_full_date =  dateFormatter.string(from: date.date!)
        return text_full_date
    }
}
