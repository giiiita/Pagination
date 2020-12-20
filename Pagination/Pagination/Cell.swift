//
//  Cell.swift
//  Pagination
//
//  Created by giiiita on 2020/12/20.
//

import SwiftUI

struct Cell: View {
    let number: Int
    var body: some View {
        Text("\(self.number)")
            .frame(width: 200, height: 100)
            .background(Color.green)
            .cornerRadius(20)
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(number: 1)
    }
}
