//
//  ClockFace.swift
//  SwiftUIClock
//
//  Created by Angelos Staboulis on 3/3/25.
//

import SwiftUI

struct ClockFace: View {
    var body: some View {
        VStack{
            Image("face").resizable().frame(width: 300, height: 300, alignment: .center)
        }
    }
}

#Preview {
    ClockFace()
}
