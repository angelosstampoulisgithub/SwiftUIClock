//
//  HeaderView.swift
//  SwiftUIClock
//
//  Created by Angelos Staboulis on 3/3/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack{
            HStack{
                Text("SwiftUI Clock").font(.largeTitle)
            }
        }.position(x: UIScreen.main.bounds.width / 2, y: 220)
    }
}

#Preview {
    HeaderView()
}
