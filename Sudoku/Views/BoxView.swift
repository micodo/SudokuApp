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
            ForEach(0..<3) { r in
                HStack(spacing: 0) {
                    ForEach(0..<3) { c in
                        let row = ((box - 1) / 3) * 3 + r + 1
                        let col = ((box - 1) % 3) * 3 + c + 1
                        CellView(row: row, col: col, box: box)
                    }
                }
            }
        }
        .border(Color.primary, width: 1 )
    }
}


#Preview {
    let puzzle = "090008000 000000300 470000000 000042000 600000009 001003000 000700095 003000000 002000008";
    BoxView(box: 0)
        .environment(Puzzle(from: puzzle))
}
