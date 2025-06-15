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
            HStack(spacing: 0) {
                BoxView()
                BoxView()
                BoxView()
            }
            HStack(spacing: 0) {
                BoxView()
                BoxView()
                BoxView()
             }
            HStack(spacing: 0) {
                BoxView()
                BoxView()
                BoxView()
             }
        }
        .aspectRatio(1.0, contentMode: .fit)
        .border(Color.primary, width: 2 )
        .padding()
    }
}

#Preview {
    SudokuView()
}
