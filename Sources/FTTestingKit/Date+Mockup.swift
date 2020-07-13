import struct Foundation.Date

extension Date: Mockup {
    public static func random() -> Date {
        Date(
            timeIntervalSinceReferenceDate: .random(
                in: 0...timeIntervalSinceReferenceDate
            )
        )
    }
}
