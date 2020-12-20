//
//  GridView.swift
//  Pagination
//
//  Created by giiiita on 2020/12/20.
//

import SwiftUI
import QGrid

struct GridCell: View {
    let name: String
    
    var cellWidth: CGFloat {
        floor((UIScreen.main.bounds.width - (16 * 3)) / 2)
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                ZStack {
                    Color.green
                        .frame(width: cellWidth, height: cellWidth)
                }
                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment: .center, spacing: 5) {
                        Text(self.name)
                        Spacer()
                    }
                    .frame(height: 28)
                }
                .padding(EdgeInsets(top: 10, leading: 8, bottom: 12, trailing: 8))
                .frame(width: cellWidth, height: 64)
            }
            .background(Color.gray)
        }
        .frame(width: cellWidth)
        .cornerRadius(20)
    }
}

class Sauna: Identifiable {
    var id: Int
    var name: String
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

struct GridView: View {
    let data: [Sauna] = [
        Sauna(id:1, name: "オリエンタル"),
        Sauna(id:2, name: "ニューウイング"),
        Sauna(id:3, name: "かるまる"),
        Sauna(id:4, name: "北欧"),
        Sauna(id:5, name: "しきじ"),
        Sauna(id:6, name: "光明泉"),
        Sauna(id:7, name: "清水湯"),
        Sauna(id:8, name: "金春湯"),
        Sauna(id:9, name: "マルシン")
    ]
    
    var body: some View {
        QGrid(self.data,
              columns: 2,
              vSpacing: 24.0,
              hSpacing: 15.0,
              contentOffsetChanged: { value in
                print("\(value)")
              }) { data in
                Button(
                    action: {
                    },
                    label: {
                        GridCell(name: data.name)
                    }
                ).buttonStyle(PlainButtonStyle())
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
