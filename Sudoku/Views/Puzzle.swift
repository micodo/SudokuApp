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
    
    init(row: Int, col: Int, box: Int, value: CellValue) {
        self.row = row
        self.col = col
        self.box = box
        self.value = value
    }
}

@Observable
class Puzzle {
    let cells: [[Cell]]
    
    init() {
        self.cells = Array(repeating: Array(repeating: .init(row: 1, col: 1, box: 1, value: .given("7")), count: 9), count: 9)
    }
    init(cells: [[Cell]]) {
        self.cells = cells
    }
}
