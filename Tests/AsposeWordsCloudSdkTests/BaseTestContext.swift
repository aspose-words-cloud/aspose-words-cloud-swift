import XCTest
@testable import AsposeWordsCloudSdk

class BaseTestContext: XCTestCase {
    private var api : WordsAPI?;
    private var baseFolder : URL?;
    
    public func getApi() -> WordsAPI {
        return self.api!;
    }
    
    public func getLocalBaseFolder() -> URL {
        return self.baseFolder!;
    }
    
    public func getLocalTestDataFolder() -> URL {
        return self.baseFolder!.appendingPathComponent("TestData", isDirectory: true);
    }
    
    public func getRemoteTestDataFolder() -> String {
        return "Temp/SwiftSdkTests/TestData/";
    }
    
    override func setUp() {
        if (self.api == nil) {
            self.baseFolder = URL(fileURLWithPath: #file)
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent();
            
            let credsUrl = self.baseFolder!
                .appendingPathComponent("Settings", isDirectory: true)
                .appendingPathComponent("servercreds.json", isDirectory: false);
            
            do {
                let credsData = try Data(contentsOf: credsUrl);
                let config = try ObjectSerializer.deserialize(type: Configuration.self, from: credsData);
                self.api = WordsAPI(configuration: config);
            }
            catch {
                XCTFail("File servercreds.json not found in Settings folder of project root.");
            }
        }
    }
    
    override func tearDown() {
        
    }
}
