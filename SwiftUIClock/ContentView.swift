//
//  ContentView.swift
//  SwiftUIClock
//
//  Created by Angelos Staboulis on 5/7/21.
//

import SwiftUI

struct ContentView: View {
    @State var date:DateComponents!
    @State var hour:Double
    @State var minute:Double
    @State var second:Double
    @State var text_full_date = String()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let helper = Helper()
    var body: some View {
        ZStack{
            Color.blue
            HeaderView()
            ClockFace()
            HourHand(hour: $hour)
            MinuteHand(minute:$minute)
            SecondHand(second:$second)
            BottomFullTextDate(text_full_date: $text_full_date)
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onReceive(timer, perform: { timer in
                text_full_date =  helper.createTextFullDate()
                hour = helper.createHourHand()
                minute = helper.createMinuteHand()
                second = helper.createSecondHand()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(hour: 0.0, minute: 0.0, second: 0.0)
    }
}
