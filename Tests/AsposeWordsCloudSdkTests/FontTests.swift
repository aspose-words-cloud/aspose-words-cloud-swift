import XCTest
@testable import AsposeWordsCloudSdk

class FontTests: BaseTestContext {
    static var allTests = [
        ("testResetCache", testResetCache),
        ("testGetAvailableFonts", testGetAvailableFonts),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Font/" + action;
    }

    func testResetCache() throws {
        let request = ResetCacheRequest();
        super.getApi().resetCache(request);
    }
    

    func testGetAvailableFonts() throws {
        let request = GetAvailableFontsRequest();
        let actual = super.getApi().getAvailableFonts(request);            
    }
}
