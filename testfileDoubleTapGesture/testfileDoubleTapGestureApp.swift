//
//  testfileDoubleTapGestureApp.swift
//  testfileDoubleTapGesture
//
//  Created by Tium Solutions on 10/30/24.
//

import SwiftUI
import RealityKit // 9번 라인 주석을 풀어버리면 시뮬레이터가 아닌 xcode 에 빨간 에러가 나오면서 build실행이 안됨. ' Type 'testfileDoubleTapGestureApp does not conform to protocol 'App' '
                    //  9번 라인 주석을 풀었을 때, 에러가 14번 줄의 some Scene 에서 발생함. 14번 줄의 Scene 의 지칭을 SwiftUI.Scene 으로 명확하게 해주면 에러 없음.
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
