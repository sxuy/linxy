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
                
                Section (header: Text("Test")) {
                    Image("Hat")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                    Image("House")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                    Image("Lantern")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                    Image("Dogs")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Linxy")
            .toolbar {
                ToolbarItemGroup() {
                    Button{} label: {
                        Label("Filter",systemImage: "line.3.horizontal.decrease")
                    }
                    Menu {
                        Button("Sort") {}
                        Button("Expert") {}
                        Button("Import") {}
                    } label: {
                        Label("Menu", systemImage: "ellipsis.circle")
                    }
                }
                
                if #available(iOS 26.0, *) {
                    ToolbarSpacer(.fixed)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                    } label: {
                        Label("Record", systemImage: "plus")
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.cyan)
                }
                
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    Button {
                    } label: {
                        Label("up", systemImage: "chevron.up")
                    }
                }
            }
            
            .overlay(alignment: .bottom) {
                Button(action: {}) {
                    Text("Record your private dreams every day")
                        .bold()
                        .padding()
                        .modifyBlock { view in
                            if #available(iOS 26.0, *) {
                                view.glassEffect()
                            } else {
                                view
                            }
                        }
                        .padding(.bottom, 8)
                }
            }
            
        }
    }
}

#Preview {
    TabsView()
}
