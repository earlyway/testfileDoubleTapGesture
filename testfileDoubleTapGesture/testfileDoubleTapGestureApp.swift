//
//  testfileDoubleTapGestureApp.swift
//  testfileDoubleTapGesture
//
//  Created by Tium Solutions on 10/30/24.
//

import SwiftUI
import RealityKit // 이 주석을 풀어버리면 에러가 나오면서 실행이 안됨...' Type 'testfileDoubleTapGestureApp does not conform to protocol 'App' '

@main
struct testfileDoubleTapGestureApp: App {
    
    var body: some SwiftUI.Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.automatic)
        .defaultSize(width: 1, height: 1, depth: 1, in: .meters)
    }
}
