public class Configuration : Codable {
    private var baseUrl : String;
    private var appSid: String;
    private var appKey: String;
    private var debugMode: Bool?;
    
    public init(baseUrl: String, appSid: String, appKey: String, debugMode: Bool = false) {
        self.baseUrl = baseUrl;
        self.appSid = appSid;
        self.appKey = appKey;
        self.debugMode = debugMode;
    }
    
    public func getBaseUrl() -> String {
        return self.baseUrl;
    }
    
    public func getAppSid() -> String {
        return self.appSid;
    }
    
    public func getAppKey() -> String {
        return self.appKey;
    }
    
    public func isDebugMode() -> Bool {
        return self.debugMode != nil ? self.debugMode! : false;
    }
    
    public func getVersion() -> String {
        return "v4.0";
    }
    
    public func getApiRootUrl() -> URL {
        return URL(string: self.getBaseUrl())!.appendingPathComponent(self.getVersion());
    }
}
