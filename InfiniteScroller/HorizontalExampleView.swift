//
//  HorizontalExampleView.swift
//  InfiniteScroller
//
//  Created by James Sedlacek on 11/24/22.
//

import SwiftUI

struct HorizontalExampleView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            exampleWordsLeft()
            exampleRight()
            exampleLeft()
            exampleRight()
            exampleLeft()
        }
    }
    
    private func exampleWordsLeft() -> some View {
        return GeometryReader { geoReader in
            InfiniteScroller(scrollingDirection: .left,
                             contentSize: geoReader.size,
                             content: {
                HStack(spacing: 0) {
                    Text("Infinite Scroller Text Example . . .")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(width: geoReader.size.width)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
    
    private func exampleRight() -> some View {
        return GeometryReader { geoReader in
            InfiniteScroller(scrollingDirection: .right,
                             contentSize: geoReader.size,
                             content: {
                HStack(spacing: 0) {
                    Rectangle().fill(.blue)
                        .frame(width: geoReader.size.width / 4)
                    Rectangle().fill(.red)
                        .frame(width: geoReader.size.width / 4)
                    Rectangle().fill(.yellow)
                        .frame(width: geoReader.size.width / 4)
                    Rectangle().fill(.green)
                        .frame(width: geoReader.size.width / 4)
                }
                .frame(height: 100)
                .frame(maxWidth: .infinity)
            })
        }
    }
    
    private func exampleLeft() -> some View {
        return GeometryReader { geoReader in
            InfiniteScroller(scrollingDirection: .left,
                             contentSize: geoReader.size,
                             content: {
                HStack(spacing: 0) {
                    Rectangle().fill(.blue)
                        .frame(width: geoReader.size.width / 4)
                    Rectangle().fill(.red)
                        .frame(width: geoReader.size.width / 4)
                    Rectangle().fill(.yellow)
                        .frame(width: geoReader.size.width / 4)
                    Rectangle().fill(.green)
                        .frame(width: geoReader.size.width / 4)
                }
                .frame(height: 100)
                .frame(maxWidth: .infinity)
            })
        }
    }
}

struct HorizontalExampleView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalExampleView()
    }
}
