//
//  puzzle.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 15.06.25.
//

import SwiftUI

typealias Candidates = Set<Character>

let allCandidates: [Character] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];

enum CellValue {
    case empty(Candidates)
    case given(Character)
    case solved(Character)
}

class Cell {
    let row: Int
    let col: Int
    let box: Int
    var value: CellValue
    
    init(row: Int, col: Int, value: CellValue) {
        self.row = row
        self.col = col
        self.box = (row - 1) / 3 * 3 + ((col - 1) / 3) + 1
        self.value = value
    }
}

@Observable
class Puzzle {
    let cells: [Cell]
    var selectedCell: Cell?
    
    init() {
        var cells: [Cell] = [];
        for row in (1...9) {
            for col in (1...9) {
                cells.append(Cell(row: row, col: col, value: .empty(Set(allCandidates))))
            }
        }
        self.cells = cells
    }
    
    init(from puzzle: String) {
        var cells: [Cell] = [];
        for row in (1...9) {
            for col in (1...9) {
                cells.append(Cell(row: row, col: col, value: .empty(Set(allCandidates))))
            }
        }
        self.cells = cells
        for (row, line) in puzzle.split(separator: " ").enumerated() {
            for (col, char) in line.enumerated() {
                if (allCandidates.contains(char)) {
                    self.setClue(row + 1, col + 1, char)
                }
            }
        }
    }
    
    init(cells: [Cell]) {
        self.cells = cells
    }
    
    func getCell(_ row: Int, _ col: Int) -> Cell? {
        return self.cells.first { $0.row == row && $0.col == col }
    }
    
    func setClue(_ row: Int, _ col: Int, _ clue: Character) {
        guard let cell = self.getCell(row, col) else { return }
        cell.value = .given(clue)
    }
}
