//
//  SecondHand.swift
//  SwiftUIClock
//
//  Created by Angelos Staboulis on 3/3/25.
//

import SwiftUI

struct SecondHand: View {
    @Binding var second:Double
    var body: some View {
        VStack{
            Image("hand_second").resizable().frame(width: 15, height: 90, alignment: .center).rotationEffect(Angle(degrees: Double(second)))
        }
    }
}

