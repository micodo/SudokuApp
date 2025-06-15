//
//  CellCandidatesView.swift
//  Sudoku
//
//  Created by Linus Warnatz on 15.06.25.
//

import SwiftUI

struct CellCandidatesView: View {
    let candidates: Candidates
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 0.0, verticalSpacing: 0.0) {
            GridRow {
                ForEach(0..<3) { i in
                    if candidates.contains(allCandidates[i]) {
                        Rectangle()
                            .fill(.clear)
                            .aspectRatio(1.0, contentMode: .fit)
                            .overlay {
                                Text(allCandidates[i])
                                    .font(.system(size: 9))
                                    .foregroundColor(.secondary)
                            }
                    }
                    else {
                        EmptyView()
                    }
                }
            }
            GridRow {
                ForEach(3..<6) { i in
                    if candidates.contains(allCandidates[i]) {
                        Rectangle()
                            .fill(.clear)
                            .aspectRatio(1.0, contentMode: .fit)
                            .overlay {
                                Text(allCandidates[i])
                                    .font(.system(size: 9))
                                    .foregroundColor(.secondary)
                            }
                   }
                    else {
                        EmptyView()
                    }
                }
            }
            GridRow {
                ForEach(6..<9) { i in
                    if candidates.contains(allCandidates[i]) {
                        Rectangle()
                            .fill(.clear)
                            .aspectRatio(1.0, contentMode: .fit)
                            .overlay {
                                Text(allCandidates[i])
                                    .font(.system(size: 9))
                                    .foregroundColor(.secondary)
                            }
                  }
                    else {
                        EmptyView()
                    }
                }
            }
        }

    }
}

#Preview {
    CellCandidatesView(candidates: Set(allCandidates))
}
