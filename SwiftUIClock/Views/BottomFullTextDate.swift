//
//  BottomFullTextDate.swift
//  SwiftUIClock
//
//  Created by Angelos Staboulis on 3/3/25.
//

import SwiftUI

struct BottomFullTextDate: View {
    @Binding var text_full_date:String

    var body: some View {
        VStack{
            Text(text_full_date)
        }.position(x: UIScreen.main.bounds.width / 2, y: 700)
       
    }
}

#Preview {
    BottomFullTextDate(text_full_date: .constant(""))
}
