//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DisruptedPoint: Codable, Equatable {

    public var additionalInformation: String?

    public var appearance: String?

    public var atcoCode: String?

    public var commonName: String?

    public var description: String?

    public var fromDate: DateTime?

    public var mode: String?

    public var stationAtcoCode: String?

    public var toDate: DateTime?

    public var type: String?

    public init(additionalInformation: String? = nil, appearance: String? = nil, atcoCode: String? = nil, commonName: String? = nil, description: String? = nil, fromDate: DateTime? = nil, mode: String? = nil, stationAtcoCode: String? = nil, toDate: DateTime? = nil, type: String? = nil) {
        self.additionalInformation = additionalInformation
        self.appearance = appearance
        self.atcoCode = atcoCode
        self.commonName = commonName
        self.description = description
        self.fromDate = fromDate
        self.mode = mode
        self.stationAtcoCode = stationAtcoCode
        self.toDate = toDate
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case additionalInformation
        case appearance
        case atcoCode
        case commonName
        case description
        case fromDate
        case mode
        case stationAtcoCode
        case toDate
        case type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        additionalInformation = try container.decodeIfPresent(.additionalInformation)
        appearance = try container.decodeIfPresent(.appearance)
        atcoCode = try container.decodeIfPresent(.atcoCode)
        commonName = try container.decodeIfPresent(.commonName)
        description = try container.decodeIfPresent(.description)
        fromDate = try container.decodeIfPresent(.fromDate)
        mode = try container.decodeIfPresent(.mode)
        stationAtcoCode = try container.decodeIfPresent(.stationAtcoCode)
        toDate = try container.decodeIfPresent(.toDate)
        type = try container.decodeIfPresent(.type)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(additionalInformation, forKey: .additionalInformation)
        try container.encodeIfPresent(appearance, forKey: .appearance)
        try container.encodeIfPresent(atcoCode, forKey: .atcoCode)
        try container.encodeIfPresent(commonName, forKey: .commonName)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(fromDate, forKey: .fromDate)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(stationAtcoCode, forKey: .stationAtcoCode)
        try container.encodeIfPresent(toDate, forKey: .toDate)
        try container.encodeIfPresent(type, forKey: .type)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DisruptedPoint else { return false }
      guard self.additionalInformation == object.additionalInformation else { return false }
      guard self.appearance == object.appearance else { return false }
      guard self.atcoCode == object.atcoCode else { return false }
      guard self.commonName == object.commonName else { return false }
      guard self.description == object.description else { return false }
      guard self.fromDate == object.fromDate else { return false }
      guard self.mode == object.mode else { return false }
      guard self.stationAtcoCode == object.stationAtcoCode else { return false }
      guard self.toDate == object.toDate else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: DisruptedPoint, rhs: DisruptedPoint) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
