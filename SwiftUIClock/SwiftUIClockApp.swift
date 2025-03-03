//
//  SwiftUIClockApp.swift
//  SwiftUIClock
//
//  Created by Angelos Staboulis on 5/7/21.
//

import SwiftUI

@main
struct SwiftUIClockApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(hour: 0.0, minute: 0.0, second: 0.0)
        }
    }
}
