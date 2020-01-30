import XCTest
@testable import AsposeWordsCloudSdk

class BaseTestContext: XCTestCase {
    private var api : WordsApi?;
    
    public func getApi() -> WordsApi {
        return api!;
    }
    
    override func setUp() {
        if (api == nil) {
            let credsUrl = URL(fileURLWithPath: #file)
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .appendingPathComponent("Settings", isDirectory: true)
                .appendingPathComponent("servercreds.json", isDirectory: false);
            
            do {
                let credsData = try Data(contentsOf: credsUrl);
                let config = try ObjectSerializer.deserialize(type: Configuration.self, from: credsData);
                api = WordsApi(configuration: config);
            }
            catch {
                XCTFail("File servercreds.json not found in root of project");
            }
        }
    }
    
    override func tearDown() {
        
    }
}
