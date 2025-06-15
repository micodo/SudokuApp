//
//  SolutionView.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 15.06.25.
//

import SwiftUI

struct SolutionView: View {
    let solution: String
    var body: some View {
        Text(self.solution)
    }
}

#Preview {
    SolutionView(solution: "5")
}
