//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Laura Johnson on 4/23/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
