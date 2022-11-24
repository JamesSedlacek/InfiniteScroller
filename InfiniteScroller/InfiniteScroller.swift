//
//  InfiniteScroller.swift
//
//  Created by James Sedlacek on 11/22/22.
//

import SwiftUI

struct InfiniteScroller<Content: View>: View {
    
    enum ScrollingDirection {
        case left, right, up, down
        
        var axis: Axis.Set {
            switch self {
            case .left: return Axis.Set.horizontal
            case .right: return Axis.Set.horizontal
            case .up: return Axis.Set.vertical
            case .down: return Axis.Set.vertical
            }
        }
    }
    
    let scrollingDirection: ScrollingDirection
    let animation: Animation = .linear(duration: 20).repeatForever(autoreverses: false)
    let contentSize: CGSize
    let content: (() -> Content)
    @State private var offset: CGFloat = 0
    
    var body: some View {
        ScrollView(scrollingDirection.axis, showsIndicators: false) {
            switch scrollingDirection.axis {
            case .horizontal:
                HStack(spacing: 0) {
                    content()
                    content()
                }.offset(x: offset, y: 0)
            case .vertical:
                VStack(spacing: 0) {
                    content()
                    content()
                }.offset(x: 0, y: offset)
            default:
                EmptyView()
            }
        }
        .disabled(true)
        .onAppear {
            initOffset()
            withAnimation(animation) {
                updateOffset()
            }
        }
    }
    
    private func initOffset() {
        switch scrollingDirection {
        case .left:
            offset = 0
        case .right:
            offset = -contentSize.width
        case .up:
            offset = 0
        case .down:
            offset = -contentSize.height
        }
    }
    
    private func updateOffset() {
        switch scrollingDirection {
        case .left:
            offset = -contentSize.width
        case .right:
            offset = 0
        case .up:
            offset = -contentSize.height
        case .down:
            offset = 0
        }
    }
}
