import SwiftUI

struct DreamRow:  View {
    
    let dream: Dream
    
    var body: some View {
        HStack {
            Label {
                VStack(alignment: .leading, spacing:5) {
                    Text(dream.title)
                        .bold()
                    Text(dream.date)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }
            } icon: {
                Image(systemName: dream.icon)
                    .foregroundStyle(Color(dream.color))
            }
        }
    }
}

#Preview {
    ContentView()
}
