import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section (header: Text("Dream Record List"), footer: Text("")) {
                    NavigationLink {Text("Dreamt in peace")} label: {
                        Label("2025/06/01", systemImage: "moon.stars.fill")
                    }
                }
            }
            .navigationTitle("Linxy")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Record") {
                    }
                } //.primaryAction
            }
        }
    }
}

#Preview {
    ContentView()
}
