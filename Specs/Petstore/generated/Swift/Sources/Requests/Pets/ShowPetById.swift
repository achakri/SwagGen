//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension Petstore.Pets {

    public enum ShowPetById {

        public static let service = APIService<Response>(id: "showPetById", tag: "pets", method: "GET", path: "/pets/{petId}", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The id of the pet to retrieve */
                public var petId: String

                public init(petId: String) {
                    self.petId = petId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: ShowPetById.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(petId: String) {
                let options = Options(petId: petId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "petId" + "}", with: "\(self.options.petId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [Pet]

            /** Expected response to a valid request */
            case status200([Pet])

            /** unexpected error */
            case defaultResponse(statusCode: Int, ErrorType)

            public var success: [Pet]? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: ErrorType? {
                switch self {
                case .defaultResponse(_, let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<[Pet], ErrorType> {
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
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data) throws {
                let decoder = JSONDecoder()
                switch statusCode {
                case 200: self = try .status200(decoder.decode([Pet].self, from: data))
                default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(ErrorType.self, from: data))
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
