import SwiftUI

struct Dream: Identifiable {
    let id = UUID()
    let date: String
    let icon: String
    let content: String
}

struct ContentView: View {
    var body: some View {
        let dreams = [
                Dream(date: "2025/06/01", icon: "moon.stars.fill", content: "Dreamt in peace"),
                Dream(date: "2025/06/02", icon: "cloud.moon.fill", content: "A cloudy dream"),
                Dream(date: "2025/06/03", icon: "sparkles", content: "Magical place")
            ]
        
        NavigationStack {
            List {
                Section(header: Text("Dream Record List")) {
                    ForEach(dreams) { dream in
                        NavigationLink {
                            Text(dream.content)
                        } label: {
                            Label(dream.date, systemImage: dream.icon)
                        }
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
