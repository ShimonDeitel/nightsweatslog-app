import Foundation

struct EntryItem: Identifiable, Codable, Equatable {
    var id: UUID
    var dateAdded: Date
    var possibleCause: String
    var severity: String
    var roomTemp: String
    var notes: String

    init(id: UUID = UUID(), dateAdded: Date = Date(), possibleCause: String, severity: String, roomTemp: String, notes: String) {
        self.id = id
        self.dateAdded = dateAdded
        self.possibleCause = possibleCause
        self.severity = severity
        self.roomTemp = roomTemp
        self.notes = notes
    }

    static func blank() -> EntryItem {
        EntryItem(possibleCause: "", severity: "", roomTemp: "", notes: "")
    }
}
