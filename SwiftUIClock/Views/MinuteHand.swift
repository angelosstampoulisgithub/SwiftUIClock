//
//  MinuteHand.swift
//  SwiftUIClock
//
//  Created by Angelos Staboulis on 3/3/25.
//

import SwiftUI

struct MinuteHand: View {
    @Binding var minute : Double
    var body: some View {
        VStack{
            Image("hand_minute").resizable().frame(width: 15, height: 90, alignment: .center)
                .rotationEffect(Angle(degrees: minute))
        }
    }
}

