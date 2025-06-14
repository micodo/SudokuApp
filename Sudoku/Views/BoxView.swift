//
//  BoxView.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 14.06.25.
//

import SwiftUI

struct BoxView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                CellView()
                CellView()
                CellView()
            }
            HStack(spacing: 0) {
                CellView()
                CellView()
                CellView()
            }
            HStack(spacing: 0) {
                CellView()
                CellView()
                CellView()
            }
        }
        .border(Color.black, width: 1 )
    }
}
