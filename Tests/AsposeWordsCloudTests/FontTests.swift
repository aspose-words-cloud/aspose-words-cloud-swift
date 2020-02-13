import XCTest
@testable import AsposeWordsCloud

class FontTests: BaseTestContext {
    static var allTests = [
        ("testResetCache", testResetCache),
        ("testGetAvailableFonts", testGetAvailableFonts),
    ];

    func testResetCache() throws {
        let request = ResetCacheRequest();
        try super.getApi().resetCache(request: request);
    }
    

    func testGetAvailableFonts() throws {
        let request = GetAvailableFontsRequest();
        let actual = try super.getApi().getAvailableFonts(request: request);
        XCTAssert(actual.getSystemFonts()?.count ?? 0 > 0);
    }
}
