//
//  HourHand.swift
//  SwiftUIClock
//
//  Created by Angelos Staboulis on 3/3/25.
//

import SwiftUI

struct HourHand: View {
    @Binding var hour : Double
    var body: some View {
        VStack{
            Image("hand_hour").resizable().frame(width: 15, height: 90, alignment: .center).rotationEffect(Angle(degrees: hour + 15))
        }
    }
}

