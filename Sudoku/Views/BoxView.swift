//
//  BoxView.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 14.06.25.
//

import SwiftUI

struct BoxView: View {
    let box: Int
    var body: some View {
        VStack(spacing: 0) {
            ForEach(1..<4) { x in
                HStack(spacing: 0) {
                    ForEach(1..<4) { y in
                        let row = (box - 1) / 3 * 3 + x
                        let col = (box - 1) % 3 * 3 + y
                        CellView(row: row, col: col)
                    }
                }
            }
        }
        .border(Color.primary, width: 1 )
    }
}


#Preview {
    let puzzle = "090008000 000000300 470000000 000042000 600000009 001003000 000700095 003000000 002000008";
    BoxView(box: 2)
        .environment(Puzzle(from: puzzle))
}
