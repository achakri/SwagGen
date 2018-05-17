//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DateRangeNullable: Codable, Equatable {

    public var endDate: DateTime?

    public var startDate: DateTime?

    public init(endDate: DateTime? = nil, startDate: DateTime? = nil) {
        self.endDate = endDate
        self.startDate = startDate
    }

    private enum CodingKeys: String, CodingKey {
        case endDate
        case startDate
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        endDate = try container.decodeIfPresent(.endDate)
        startDate = try container.decodeIfPresent(.startDate)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(startDate, forKey: .startDate)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DateRangeNullable else { return false }
      guard self.endDate == object.endDate else { return false }
      guard self.startDate == object.startDate else { return false }
      return true
    }

    public static func == (lhs: DateRangeNullable, rhs: DateRangeNullable) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
