import SwiftUI

class DreamData: ObservableObject {
    @Published var dreams: [Dream] = [
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

    func removeDream(at offsets: IndexSet) {
        dreams.remove(atOffsets: offsets)
    }
}
