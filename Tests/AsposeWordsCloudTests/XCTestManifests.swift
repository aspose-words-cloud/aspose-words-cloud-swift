import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BuildReportTests.allTests),
        testCase(BookmarkTests.allTests),
        testCase(DocumentTests.allTests),
        testCase(DocumentPropertiesTests.allTests),
        testCase(DocumentProtectionTests.allTests),
        testCase(DrawingTests.allTests),
        testCase(FieldTests.allTests),
        testCase(FontTests.allTests),
        testCase(FootnoteTests.allTests),
        testCase(HeaderFooterTests.allTests),
        testCase(HyperlinkTests.allTests),
        testCase(MacrosTests.allTests),
        testCase(MailMergeTests.allTests),
        testCase(MathObjectTests.allTests),
        testCase(PageSetupTests.allTests),
        testCase(ParagraphTests.allTests),
        testCase(RangeTests.allTests),
        testCase(RunTests.allTests),
        testCase(SectionsTests.allTests),
        testCase(StorageTests.allTests),
        testCase(TableTests.allTests),
        testCase(TextTests.allTests),
        testCase(WatermarkTests.allTests),
        testCase(ListsTests.allTests),
        testCase(StylesTests.allTests),
    ]
}
#endif
