import SwiftUI

struct DreamRow:  View {
    
    @ObservedObject var dream: Dream
    
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
            
            Spacer()

//            if dream.isImportant {
//                Image(systemName: "star.fill")
//                    .foregroundColor(.yellow)
//            }
        }
    }
}

#Preview {
    DreamRow(dream: Dream(date: "2025/06/01", icon: "moon.stars.fill", content: "Dreamt in peace", title: "Starry Dream", color: .purple, isImportant: true))
}
