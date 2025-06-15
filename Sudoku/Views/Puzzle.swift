//
//  puzzle.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 15.06.25.
//

import SwiftUI

typealias Candidates = Set<String>

let allCandidates: Candidates = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];

enum CellValue {
    case empty(Candidates)
    case given(String)
    case solved(String)
}

class Cell {
    let row: Int
    let col: Int
    let box: Int
    let value: CellValue
    
    init(row: Int, col: Int, value: CellValue) {
        self.row = row
        self.col = col
        self.box = (row / 3) * 3 + (col / 3)
        self.value = value
    }
}

@Observable
class Puzzle {
    let cells: [Cell]
    
    init() {
        var cells: [Cell] = [];
        for row in (1..<10) {
            for col in (1..<10) {
                cells.append(Cell(row: row, col: col, value: .empty(allCandidates)))
            }
        }
        self.cells = cells
    }
    
    init(from puzzle: String) {
        var cells: [Cell] = [];
        for (row, line) in puzzle.split(separator: " ").enumerated() {
            for (col, char) in line.enumerated() {
                switch char {
                    case let c where ("1"..."9").contains(c):
                    cells.append(Cell(row: row + 1, col: col + 1, value: .given(String(c))))
                default:
                    cells.append(Cell(row: row + 1, col: col + 1, value: .empty(allCandidates)))
                }
                
            }
        }
        self.cells = cells
    }
    
    init(cells: [Cell]) {
        self.cells = cells
    }
    
    func getCell(_ row: Int, _ col: Int) -> Cell? {
        return self.cells.first { $0.row == row && $0.col == col }
    }
}
