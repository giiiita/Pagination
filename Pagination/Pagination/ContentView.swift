//
//  ContentView.swift
//  Pagination
//
//  Created by giiiita on 2020/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var contentOffset: CGFloat = .zero
    @State var scrollViewContentHeight: CGFloat = .zero
    var body: some View {
        GeometryReader { geometry in
            ScrollTrackerView(contentOffset: self.$contentOffset) {
                VStack(spacing: 8) {
                    ForEach(0..<10) { number in
                        Cell(number: number)
                    }
                }.modifier(ScrollContentHeightKey())
            }.contentOffsetChanged {
                let maximumOffset: CGFloat = self.scrollViewContentHeight - geometry.size.height
                let distanceToBottom: CGFloat = maximumOffset - self.contentOffset
                print("\(distanceToBottom)")
            }.onPreferenceChange(ScrollContentHeightKey.self) {
                self.scrollViewContentHeight = $0
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
