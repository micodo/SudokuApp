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
            .foregroundColor(self.getColor())
            .aspectRatio(1.0, contentMode: .fit)
            .overlay() {
                if let cell = puzzle.getCell(row, col) {
                    switch cell.value {
                        case .empty(let candidates):
                            CellCandidatesView(candidates: candidates)
                        case .given(let value):
                            Text(String(value))
                                .font(.largeTitle)
                        case .solved(let value):
                            Text(String(value))
                                .font(.largeTitle)
                    }
                } else {
                    Text("?")
                        .font(.largeTitle)
                }
            }
            .border(Color.primary, width: 0.5)
            .onTapGesture {
                if let sc = puzzle.selectedCell {
                    if sc !== puzzle.getCell(row, col) {
                        puzzle.selectedCell = puzzle.getCell(row, col)
                    }
                }
                puzzle.selectedCell = puzzle.getCell(row, col)
            }
    }
    func getColor() -> Color {
        if let selectedCell = puzzle.selectedCell {
            if col == selectedCell.col && row == selectedCell.row && box == selectedCell.box {
                return colors["selectedCell"]!
            }
            if col == selectedCell.col || row == selectedCell.row ||
                        box == selectedCell.box {
                return colors["selectedGroup"]!
            }
        }
        return .clear
    }
}

#Preview {
    let puzzle = "090008000 000000300 470000000 000042000 600000009 001003000 000700095 003000000 002000008";
    CellView(row: 1, col: 1, box: 1)
        .environment(Puzzle(from: puzzle))
}
