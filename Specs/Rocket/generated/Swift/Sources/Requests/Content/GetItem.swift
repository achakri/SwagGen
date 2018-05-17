//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension Rocket.Content {

    /** Returns the details of an item with the specified id. */
    public enum GetItem {

        public static let service = APIService<Response>(id: "getItem", tag: "content", method: "GET", path: "/items/{id}", hasBody: false)

        /** If no value is specified no dependencies are expanded.

        If 'children' is specified then the list of any direct children will be expanded. For example
        seasons of a show or episodes of a season.

        If 'all' is specified then the parent chain will be expanded along with any child list at each level.
        For example if an episode is specified then its season will be expanded and that season's episode list.
        The season will have its show expanded and the show will have its season list expanded.

        The 'all' options is useful when you deep link into a show/season/episode for the first time as
        it provides full context for navigating around the show page. Subsequent navigation around
        children of the show should only need to request expand of children.

        If an expand is specified which is not relevant to the item type, it will be ignored.
         */
        public enum Expand: String, Codable {
            case all = "all"
            case children = "children"

            public static let cases: [Expand] = [
              .all,
              .children,
            ]
        }

        /** Given a provided show id, it can be useful to get the details of a child season. This option
        provides a means to return the `first` or `latest` season of a show given the show id.

        The `expand` parameter also works here so for example you could land on a show page and request the
        latest season along with `expand=all`. This would then return the detail of the latest season with
        its list of child episode summaries, and also expand the detail of the show with its list of seasons summaries.

        Note the `id` parameter must be a show id for this parameter to work correctly.
         */
        public enum SelectSeason: String, Codable {
            case first = "first"
            case latest = "latest"

            public static let cases: [SelectSeason] = [
              .first,
              .latest,
            ]
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The identifier of the item to load.

The custom identifier of an item can be used here if the `use_custom_id` parameter is true.
 */
                public var id: String

                /** The maximum rating (inclusive) of items returned, e.g. 'auoflc-pg'. */
                public var maxRating: String?

                /** If no value is specified no dependencies are expanded.

If 'children' is specified then the list of any direct children will be expanded. For example
seasons of a show or episodes of a season.

If 'all' is specified then the parent chain will be expanded along with any child list at each level.
For example if an episode is specified then its season will be expanded and that season's episode list.
The season will have its show expanded and the show will have its season list expanded.

The 'all' options is useful when you deep link into a show/season/episode for the first time as
it provides full context for navigating around the show page. Subsequent navigation around
children of the show should only need to request expand of children.

If an expand is specified which is not relevant to the item type, it will be ignored.
 */
                public var expand: Expand?

                /** Given a provided show id, it can be useful to get the details of a child season. This option
provides a means to return the `first` or `latest` season of a show given the show id.

The `expand` parameter also works here so for example you could land on a show page and request the
latest season along with `expand=all`. This would then return the detail of the latest season with
its list of child episode summaries, and also expand the detail of the show with its list of seasons summaries.

Note the `id` parameter must be a show id for this parameter to work correctly.
 */
                public var selectSeason: SelectSeason?

                /** Set to true when passing a custom Id as the `id` path parameter. */
                public var useCustomId: Bool?

                /** The type of device the content is targeting. */
                public var device: String?

                /** The active subscription code. */
                public var sub: String?

                /** The list of segments to filter the response by. */
                public var segments: [String]?

                /** The set of opt in feature flags which cause breaking changes to responses.

While Rocket APIs look to avoid breaking changes under the active major version, the formats of responses
may need to evolve over this time.

These feature flags allow clients to select which response formats they expect and avoid breaking
clients as these formats evolve under the current major version.

### Flags

- `all` - Enable all flags. Useful for testing. _Don't use in production_.
- `idp` - Dynamic item detail pages with schedulable rows.
- `ldp` - Dynamic list detail pages with schedulable rows.

See the `feature-flags.md` for available flag details.
 */
                public var ff: [FeatureFlags]?

                public init(id: String, maxRating: String? = nil, expand: Expand? = nil, selectSeason: SelectSeason? = nil, useCustomId: Bool? = nil, device: String? = nil, sub: String? = nil, segments: [String]? = nil, ff: [FeatureFlags]? = nil) {
                    self.id = id
                    self.maxRating = maxRating
                    self.expand = expand
                    self.selectSeason = selectSeason
                    self.useCustomId = useCustomId
                    self.device = device
                    self.sub = sub
                    self.segments = segments
                    self.ff = ff
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetItem.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, maxRating: String? = nil, expand: Expand? = nil, selectSeason: SelectSeason? = nil, useCustomId: Bool? = nil, device: String? = nil, sub: String? = nil, segments: [String]? = nil, ff: [FeatureFlags]? = nil) {
                let options = Options(id: id, maxRating: maxRating, expand: expand, selectSeason: selectSeason, useCustomId: useCustomId, device: device, sub: sub, segments: segments, ff: ff)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                if let maxRating = options.maxRating {
                  params["max_rating"] = maxRating
                }
                if let expand = options.expand?.encode() {
                  params["expand"] = expand
                }
                if let selectSeason = options.selectSeason?.encode() {
                  params["select_season"] = selectSeason
                }
                if let useCustomId = options.useCustomId {
                  params["use_custom_id"] = useCustomId
                }
                if let device = options.device {
                  params["device"] = device
                }
                if let sub = options.sub {
                  params["sub"] = sub
                }
                if let segments = options.segments?.joined(separator: ",") {
                  params["segments"] = segments
                }
                if let ff = options.ff?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["ff"] = ff
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = ItemDetail

            /** The item requested */
            case status200(ItemDetail)

            /** Bad request. */
            case status400(ServiceError)

            /** Not found. */
            case status404(ServiceError)

            /** Internal server error. */
            case status500(ServiceError)

            /** Service error. */
            case defaultResponse(statusCode: Int, ServiceError)

            public var success: ItemDetail? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: ServiceError? {
                switch self {
                case .status400(let response): return response
                case .status404(let response): return response
                case .status500(let response): return response
                case .defaultResponse(_, let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<ItemDetail, ServiceError> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status400(let response): return response
                case .status404(let response): return response
                case .status500(let response): return response
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status404: return 404
                case .status500: return 500
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status404: return false
                case .status500: return false
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data) throws {
                let decoder = JSONDecoder()
                switch statusCode {
                case 200: self = try .status200(decoder.decode(ItemDetail.self, from: data))
                case 400: self = try .status400(decoder.decode(ServiceError.self, from: data))
                case 404: self = try .status404(decoder.decode(ServiceError.self, from: data))
                case 500: self = try .status500(decoder.decode(ServiceError.self, from: data))
                default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(ServiceError.self, from: data))
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
