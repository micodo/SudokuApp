//
//  CellView.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 14.06.25.
//
import SwiftUI

struct CellView: View {
    //let candidates: Candidates
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .aspectRatio(1.0, contentMode: .fit)
            .overlay() {
                Text("2")
                    .font(.largeTitle)
        
            }
            .padding(0.5)
            .border(Color.primary, width: 0.5)
    }
}

#Preview {
    //CellView(candidates: ["1", "4"])
}
