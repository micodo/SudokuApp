//
//  ChatPrototypeApp.swift
//  ChatPrototype
//
//  Created by Michelle Warnatz on 14..6.25.
//

import SwiftUI

@main
struct ChatPrototypeApp: App {
    @State var puzzle = Puzzle(from: ".9...8... ......3.. 47....... ....42... 6.......9 ..1..3... ...7...95 ..3...... ..2.....8")
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(puzzle)
        }
    }
}
