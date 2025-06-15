//
//  BoxView.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 14.06.25.
//

import SwiftUI

struct BoxView: View {
    let index: Int
    var body: some View {
        VStack(spacing: 0) {
            ForEach(1..<4) { x in
                HStack(spacing: 0) {
                    ForEach(1..<4) { y in
                        CellView(row: x, col: y, box: index)
                    }
                }
            }
        }
        .border(Color.primary, width: 1 )
    }
}


#Preview {
    BoxView(index: 1)
        .environment(Puzzle())
}
