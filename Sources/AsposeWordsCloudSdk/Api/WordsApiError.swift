import Foundation

public enum WordsApiError : LocalizedError {
    case requestError(errorCode: Int, message: String?)
    case requiredArgumentError(argumentName: String)
    
    public var errorDescription: String? {
        switch self {
            case let .requestError(errorCode, message):
                return "Request error: \(errorCode); Description: \(message ?? "")";
            case let .requiredArgumentError(argumentName):
                return "Required argument \(argumentName) not present.";
        }
    }
}
