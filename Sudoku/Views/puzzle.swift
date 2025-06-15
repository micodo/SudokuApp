//
//  puzzle.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 15.06.25.
//

typealias Candidates = Set<String>

let allCandidates: Candidates = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];

enum CellValue {
    case empty(Candidates)
    case given(String)
    case solved(String)
}

struct Cell {
    let row: Int
    let col: Int
    let box: Int
    let value: CellValue
}

struct Puzzle {
    let cells: [[Cell]]
    
    init() {
        self.cells = Array(repeating: Array(repeating: .init(row: 0, col: 0, box: 0, value: .empty(allCandidates)), count: 9), count: 9)
    }
}
