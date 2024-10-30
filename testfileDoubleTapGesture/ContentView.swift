//
//  ContentView.swift
//  testfileDoubleTapGesture
//
//  Created by Tium Solutions on 10/30/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State var enlarge = false
    
    
    @State private var showDeletePopup = false // for d t
    @State private var deleteConfirmed = false// for d t
    
    var body: some View {
            
            VStack {
                if deleteConfirmed {
                    Text("Item deleted.")
                } else {
                    Text("Tap delete to remove the item.")
                }
                
                Button("Delete Item") {
                    showDeletePopup = true
                }
                .background(Color.red)
                .foregroundColor(.green)
                .cornerRadius(8)
                .glassBackgroundEffect()
                
                .doubleTapGesture{
                    print("double tap gesture detected")
                }
                
                .alert(isPresented: $showDeletePopup) {
                    Alert(
                        title: Text("Delete Confirmation"),
                        message: Text("Are you sure you want to delete this item?"),
                        primaryButton: .destructive(Text("Yes")) {
                            deleteConfirmed = true
                        },
                        secondaryButton: .cancel()
                    )
                }
                .frame(width: 400, height:100)
                .background(Color.white)
            }
            .frame(width: 600, height:350)
            .glassBackgroundEffect()
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .fontWeight(.heavy)
        }
    }

#Preview(windowStyle: .automatic) {
    ContentView()
}
