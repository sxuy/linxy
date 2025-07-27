
import SwiftUI

class Dream: Identifiable, ObservableObject {
    let id = UUID()
    @Published var date: String
    @Published var icon: String
    @Published var content: String
    @Published var title: String
    @Published var color: Color
    @Published var isImportant: Bool

    init(date: String, icon: String, content: String, title: String, color: Color, isImportant: Bool) {
        self.date = date
        self.icon = icon
        self.content = content
        self.title = title
        self.color = color
        self.isImportant = isImportant
    }
}
