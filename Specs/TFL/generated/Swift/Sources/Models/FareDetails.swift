//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class FareDetails: Codable, Equatable {

    public var boundsId: Int?

    public var displayName: String?

    public var displayOrder: Int?

    public var endDate: DateTime?

    public var from: String?

    public var fromStation: String?

    public var isTour: Bool?

    public var messages: [Message]?

    public var mode: String?

    public var `operator`: String?

    public var passengerType: String?

    public var routeCode: String?

    public var routeDescription: String?

    public var specialFare: Bool?

    public var startDate: DateTime?

    public var throughFare: Bool?

    public var ticketsAvailable: [Ticket]?

    public var to: String?

    public var toStation: String?

    public var validatorInformation: String?

    public var via: String?

    public init(boundsId: Int? = nil, displayName: String? = nil, displayOrder: Int? = nil, endDate: DateTime? = nil, from: String? = nil, fromStation: String? = nil, isTour: Bool? = nil, messages: [Message]? = nil, mode: String? = nil, `operator`: String? = nil, passengerType: String? = nil, routeCode: String? = nil, routeDescription: String? = nil, specialFare: Bool? = nil, startDate: DateTime? = nil, throughFare: Bool? = nil, ticketsAvailable: [Ticket]? = nil, to: String? = nil, toStation: String? = nil, validatorInformation: String? = nil, via: String? = nil) {
        self.boundsId = boundsId
        self.displayName = displayName
        self.displayOrder = displayOrder
        self.endDate = endDate
        self.from = from
        self.fromStation = fromStation
        self.isTour = isTour
        self.messages = messages
        self.mode = mode
        self.`operator` = `operator`
        self.passengerType = passengerType
        self.routeCode = routeCode
        self.routeDescription = routeDescription
        self.specialFare = specialFare
        self.startDate = startDate
        self.throughFare = throughFare
        self.ticketsAvailable = ticketsAvailable
        self.to = to
        self.toStation = toStation
        self.validatorInformation = validatorInformation
        self.via = via
    }

    private enum CodingKeys: String, CodingKey {
        case boundsId
        case displayName
        case displayOrder
        case endDate
        case from
        case fromStation
        case isTour
        case messages
        case mode
        case `operator` = "operator"
        case passengerType
        case routeCode
        case routeDescription
        case specialFare
        case startDate
        case throughFare
        case ticketsAvailable
        case to
        case toStation
        case validatorInformation
        case via
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        boundsId = try container.decodeIfPresent(.boundsId)
        displayName = try container.decodeIfPresent(.displayName)
        displayOrder = try container.decodeIfPresent(.displayOrder)
        endDate = try container.decodeIfPresent(.endDate)
        from = try container.decodeIfPresent(.from)
        fromStation = try container.decodeIfPresent(.fromStation)
        isTour = try container.decodeIfPresent(.isTour)
        messages = try container.decodeArrayIfPresent(.messages)
        mode = try container.decodeIfPresent(.mode)
        `operator` = try container.decodeIfPresent(.`operator`)
        passengerType = try container.decodeIfPresent(.passengerType)
        routeCode = try container.decodeIfPresent(.routeCode)
        routeDescription = try container.decodeIfPresent(.routeDescription)
        specialFare = try container.decodeIfPresent(.specialFare)
        startDate = try container.decodeIfPresent(.startDate)
        throughFare = try container.decodeIfPresent(.throughFare)
        ticketsAvailable = try container.decodeArrayIfPresent(.ticketsAvailable)
        to = try container.decodeIfPresent(.to)
        toStation = try container.decodeIfPresent(.toStation)
        validatorInformation = try container.decodeIfPresent(.validatorInformation)
        via = try container.decodeIfPresent(.via)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(boundsId, forKey: .boundsId)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(displayOrder, forKey: .displayOrder)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(fromStation, forKey: .fromStation)
        try container.encodeIfPresent(isTour, forKey: .isTour)
        try container.encodeIfPresent(messages, forKey: .messages)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(`operator`, forKey: .`operator`)
        try container.encodeIfPresent(passengerType, forKey: .passengerType)
        try container.encodeIfPresent(routeCode, forKey: .routeCode)
        try container.encodeIfPresent(routeDescription, forKey: .routeDescription)
        try container.encodeIfPresent(specialFare, forKey: .specialFare)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(throughFare, forKey: .throughFare)
        try container.encodeIfPresent(ticketsAvailable, forKey: .ticketsAvailable)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(toStation, forKey: .toStation)
        try container.encodeIfPresent(validatorInformation, forKey: .validatorInformation)
        try container.encodeIfPresent(via, forKey: .via)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? FareDetails else { return false }
      guard self.boundsId == object.boundsId else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.displayOrder == object.displayOrder else { return false }
      guard self.endDate == object.endDate else { return false }
      guard self.from == object.from else { return false }
      guard self.fromStation == object.fromStation else { return false }
      guard self.isTour == object.isTour else { return false }
      guard self.messages == object.messages else { return false }
      guard self.mode == object.mode else { return false }
      guard self.`operator` == object.`operator` else { return false }
      guard self.passengerType == object.passengerType else { return false }
      guard self.routeCode == object.routeCode else { return false }
      guard self.routeDescription == object.routeDescription else { return false }
      guard self.specialFare == object.specialFare else { return false }
      guard self.startDate == object.startDate else { return false }
      guard self.throughFare == object.throughFare else { return false }
      guard self.ticketsAvailable == object.ticketsAvailable else { return false }
      guard self.to == object.to else { return false }
      guard self.toStation == object.toStation else { return false }
      guard self.validatorInformation == object.validatorInformation else { return false }
      guard self.via == object.via else { return false }
      return true
    }

    public static func == (lhs: FareDetails, rhs: FareDetails) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
