//
//  ContentView.swift
//  WordScramble
//
//  Created by Adriano Valumin on 10/21/23.
//

import SwiftUI

struct ContentView: View {
    @State var cats = ["Tony", "Calvin", "Minnie"]
    var body: some View {
//        List {
//            ForEach(0..<5) {
//                Section("Section \($0)") {
//                    ForEach(0..<5) {
//                        Text("Hello \($0)")
//                    }
//                }
//            }
//        }
//        .listStyle(.insetGrouped)
        
//        List(0..<5) {
//            Text("Hello, \($0)")
//        }
        
        List(cats, id: \.self) {
            Text($0)
        }
        
        HStack {
            
            Spacer()
            
            Button("Add more") {
                cats.append(cats.randomElement() ?? "Unknown")
            }
            .buttonStyle(.bordered)
            
            Spacer()
            
            Button("Remove") {
                cats.removeLast()
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
        }
        .padding()
        .border(.background)
        
    }
    
//    func testBundles() {
//        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt")
//            if let fileContents = try? String(contentsOf: fileURL) {
////            Loaded the file into a string
//        }
//    }
    
}

#Preview {
    ContentView()
}
