import struct Foundation.Date

extension Date: Mockup {
    public static func random() -> Date {
        return Date(
            timeIntervalSinceReferenceDate: .random(
                in: 0...timeIntervalSinceReferenceDate
            )
        )
    }
}
