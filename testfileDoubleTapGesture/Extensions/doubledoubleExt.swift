//
//  doubledoubleExt.swift
//  testfileDoubleTapGesture
//
//  Created by Tium Solutions on 10/30/24.
//

import Foundation
import SwiftUI
import RealityKit


public extension View {    //import swiftUI 를 해주어서 cannot type 'view' error 를 없앰.
    func doubleTapGesture(action: @escaping () -> Void) -> some View {
        self.gesture(
            TapGesture(count: 3)
                .onEnded { _ in
                    action()
                }
        )
    }
}

