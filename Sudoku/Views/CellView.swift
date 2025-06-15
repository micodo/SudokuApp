//
//  CellView.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 14.06.25.
//
import SwiftUI

struct CellView: View {
    let row: Int
    let col: Int
    let box: Int
    @Environment(Puzzle.self) var puzzle
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .aspectRatio(1.0, contentMode: .fit)
            .overlay() {
                if let cell = puzzle.cells.flatMap({$0}).first(where: {
                    $0.row == row && $0.col == col && $0.box == box
                }) {
                    switch cell.value {
                        case .empty(let candidates):
                            CellCandidatesView(candidates: candidates)
                        case .given(let value):
                            Text(value)
                                .font(.largeTitle)
                        case .solved(let value):
                            Text(value)
                                .font(.largeTitle)
                    }
                } else {
                    Text("?")
                        .font(.largeTitle)
                }
            }
            .padding(0.5)
            .border(Color.primary, width: 0.5)
    }
}

#Preview {
    CellView(row: 1, col: 1, box: 1)
        .environment(Puzzle())
}
