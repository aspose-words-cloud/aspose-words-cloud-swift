import Foundation

public enum ApiError : LocalizedError {
    case requestError(errorCode: Int, message: String?)
    
    public var errorDescription: String? {
        switch self {
            case let .requestError(errorCode, message):
                return "Error Code: \(errorCode); Description: \(message ?? "")";
        }
    }
}
