import SwiftUI

struct ContentView: View {
    @StateObject var dreamData = DreamData()
        
    var body: some View { 
        NavigationStack {
            List {
                Section(header: Text("Dream Record List")) {
                    
                    ForEach(dreamData.dreams) { dream in
                        NavigationLink {
                            Text(dream.content)
                        } label: {
                            DreamRow(dream: dream)
                        }
                    }
                    .onDelete(perform: dreamData.removeDream)
                    
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
