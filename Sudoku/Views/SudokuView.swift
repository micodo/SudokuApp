//
//  SudokuView.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 14.06.25.
//

import SwiftUI

struct SudokuView: View {
    var body: some View {
        VStack(spacing: 0) {
            ForEach(1..<4) { x in
                HStack(spacing: 0) {
                    ForEach(1..<4) { y in
                        BoxView(index: boxIndex(x: x, y: y))
                    }
                }
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
        .border(Color.primary, width: 2 )
        .padding()
    }
}

func boxIndex(x: Int, y: Int) -> Int {
    return (x - 1) * 3 + y
}

#Preview {
    SudokuView()
        .environment(Puzzle())
}
