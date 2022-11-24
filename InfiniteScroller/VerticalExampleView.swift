//
//  VerticalExampleView.swift
//  InfiniteScroller
//
//  Created by James Sedlacek on 11/24/22.
//

import SwiftUI

struct VerticalExampleView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            exampleUp()
            exampleDown()
            exampleUp()
            exampleDown()
        }.ignoresSafeArea()
    }
    
    private func exampleUp() -> some View {
        return GeometryReader { geoReader in
            InfiniteScroller(scrollingDirection: .up,
                             contentSize: geoReader.size,
                             content: {
                VStack(spacing: 0) {
                    Rectangle().fill(.blue)
                        .frame(height: geoReader.size.height / 4)
                    Rectangle().fill(.red)
                        .frame(height: geoReader.size.height / 4)
                    Rectangle().fill(.yellow)
                        .frame(height: geoReader.size.height / 4)
                    Rectangle().fill(.green)
                        .frame(height: geoReader.size.height / 4)
                }
                .frame(width: 100)
                .frame(maxHeight: .infinity)
            })
        }
    }
    
    private func exampleDown() -> some View {
        return GeometryReader { geoReader in
            InfiniteScroller(scrollingDirection: .down,
                             contentSize: geoReader.size,
                             content: {
                VStack(spacing: 0) {
                    Rectangle().fill(.blue)
                        .frame(height: geoReader.size.height / 4)
                    Rectangle().fill(.red)
                        .frame(height: geoReader.size.height / 4)
                    Rectangle().fill(.yellow)
                        .frame(height: geoReader.size.height / 4)
                    Rectangle().fill(.green)
                        .frame(height: geoReader.size.height / 4)
                }
                .frame(width: 100)
                .frame(maxHeight: .infinity)
            })
        }
    }
}

struct VerticalExampleView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalExampleView()
    }
}
