//
//  linxyApp.swift
//  linxy
//
//  Created by xuyi sun on 5/29/25.
//

import SwiftUI

@main
struct linxyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

public extension View {
    @ViewBuilder
    func modifyBlock(@ViewBuilder _ block: (Self) -> some View) -> some View {
        block(self)
    }
}


#Preview {
    ContentView()
}
