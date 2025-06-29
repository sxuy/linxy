import SwiftUI

struct Dream: Identifiable {
    let id = UUID()
    let date: String
    let icon: String
    let content: String
    let title: String
    let color: Color
    let isImportant: Bool
}

struct ContentView: View {
    var body: some View {
        let dreams = [
                Dream(date: "2025/06/01",
                      icon: "moon.stars.fill",
                      content: "Dreamt in peace",
                      title: "Starry Dream",
                      color: .purple,
                      isImportant: true),
                Dream(date: "2025/06/02",
                      icon: "cloud.moon.fill",
                      content: "A cloudy dream",
                      title: "Cloudy Night",
                      color: .cyan,
                      isImportant: false),
                Dream(date: "2025/06/03",
                      icon: "sparkles",
                      content: "Magical place",
                      title: "Fantasy Land",
                      color: .yellow,
                      isImportant: true)
            ]
        
        NavigationStack {
            List {
                Section(header: Text("Dream Record List")) {
                    
                    ForEach(dreams) { dream in
                        NavigationLink {
                            Text(dream.content)
                        } label: {
                            DreamRow(dream: dream)
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
