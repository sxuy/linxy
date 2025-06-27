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
            TabsView()
        }
    }
}

struct TabsView: View {
    var body: some View {
        
        TabView {
            ContentView()
                .tabItem {
                    Label("List", systemImage: "bookmark.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
        
        .modifyBlock {view in
            if #available(iOS 26.0, *){
                view.tabBarMinimizeBehavior(.onScrollDown)
//                    .tabViewBottomAccessory(content: LiquidView)
            }else {
                view
            }
        }
    }
    
    @ViewBuilder
    func LiquidView() -> some View {
        HStack {
            Text("LiquidGlassTest")
        }
        .padding(20)
    }
}

public extension View {
    @ViewBuilder
    func modifyBlock(@ViewBuilder _ block: (Self) -> some View) -> some View {
        block(self)
    }
}


#Preview {
    TabsView()
}
