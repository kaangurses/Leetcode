// 729. My Calendar I

final class MyCalendar {
    private var calendar: [Range<Int>]

    init() {
        self.calendar = []
    }

    func book(_ start: Int, _ end: Int) -> Bool {
        let newMeeting = start..<end
        if calendar.first(where: { $0.overlaps(newMeeting) }) != nil {
            return false
        }
        calendar.append(newMeeting)
        return true
    }
}
