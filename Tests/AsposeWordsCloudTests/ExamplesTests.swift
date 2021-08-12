import AsposeWordsCloud

import XCTest
@testable import AsposeWordsCloud

class ExamplesTests : XCTestCase
{
    static var allTests = [
        ("testAcceptAllRevisions", testAcceptAllRevisions),
        ("testAcceptAllRevisionsOnline", testAcceptAllRevisionsOnline),
        ("testAppendDocument", testAppendDocument),
        ("testAppendDocumentOnline", testAppendDocumentOnline),
        ("testApplyStyleToDocumentElement", testApplyStyleToDocumentElement),
        ("testApplyStyleToDocumentElementOnline", testApplyStyleToDocumentElementOnline),
        ("testBuildReport", testBuildReport),
        ("testBuildReportOnline", testBuildReportOnline),
        ("testClassify", testClassify),
        ("testClassifyDocument", testClassifyDocument),
        ("testClassifyDocumentOnline", testClassifyDocumentOnline),
        ("testCompareDocument", testCompareDocument),
        ("testCompareDocumentOnline", testCompareDocumentOnline),
        ("testConvertDocument", testConvertDocument),
        ("testCopyFile", testCopyFile),
        ("testCopyFolder", testCopyFolder),
        ("testCopyStyle", testCopyStyle),
        ("testCopyStyleOnline", testCopyStyleOnline),
        ("testCreateDocument", testCreateDocument),
        ("testCreateFolder", testCreateFolder),
        ("testCreateOrUpdateDocumentProperty", testCreateOrUpdateDocumentProperty),
        ("testCreateOrUpdateDocumentPropertyOnline", testCreateOrUpdateDocumentPropertyOnline),
        ("testDeleteAllParagraphTabStops", testDeleteAllParagraphTabStops),
        ("testDeleteAllParagraphTabStopsOnline", testDeleteAllParagraphTabStopsOnline),
        ("testDeleteBorder", testDeleteBorder),
        ("testDeleteBorderOnline", testDeleteBorderOnline),
        ("testDeleteBorders", testDeleteBorders),
        ("testDeleteBordersOnline", testDeleteBordersOnline),
        ("testDeleteComment", testDeleteComment),
        ("testDeleteCommentOnline", testDeleteCommentOnline),
        ("testDeleteComments", testDeleteComments),
        ("testDeleteCommentsOnline", testDeleteCommentsOnline),
        ("testDeleteCustomXmlPart", testDeleteCustomXmlPart),
        ("testDeleteCustomXmlPartOnline", testDeleteCustomXmlPartOnline),
        ("testDeleteCustomXmlParts", testDeleteCustomXmlParts),
        ("testDeleteCustomXmlPartsOnline", testDeleteCustomXmlPartsOnline),
        ("testDeleteDocumentProperty", testDeleteDocumentProperty),
        ("testDeleteDocumentPropertyOnline", testDeleteDocumentPropertyOnline),
        ("testDeleteDrawingObject", testDeleteDrawingObject),
        ("testDeleteDrawingObjectOnline", testDeleteDrawingObjectOnline),
        ("testDeleteField", testDeleteField),
        ("testDeleteFieldOnline", testDeleteFieldOnline),
        ("testDeleteFields", testDeleteFields),
        ("testDeleteFieldsOnline", testDeleteFieldsOnline),
        ("testDeleteFile", testDeleteFile),
        ("testDeleteFolder", testDeleteFolder),
        ("testDeleteFootnote", testDeleteFootnote),
        ("testDeleteFootnoteOnline", testDeleteFootnoteOnline),
        ("testDeleteFormField", testDeleteFormField),
        ("testDeleteFormFieldOnline", testDeleteFormFieldOnline),
        ("testDeleteHeaderFooter", testDeleteHeaderFooter),
        ("testDeleteHeaderFooterOnline", testDeleteHeaderFooterOnline),
        ("testDeleteHeadersFooters", testDeleteHeadersFooters),
        ("testDeleteHeadersFootersOnline", testDeleteHeadersFootersOnline),
        ("testDeleteMacros", testDeleteMacros),
        ("testDeleteMacrosOnline", testDeleteMacrosOnline),
        ("testDeleteOfficeMathObject", testDeleteOfficeMathObject),
        ("testDeleteOfficeMathObjectOnline", testDeleteOfficeMathObjectOnline),
        ("testDeleteParagraph", testDeleteParagraph),
        ("testDeleteParagraphListFormat", testDeleteParagraphListFormat),
        ("testDeleteParagraphListFormatOnline", testDeleteParagraphListFormatOnline),
        ("testDeleteParagraphOnline", testDeleteParagraphOnline),
        ("testDeleteParagraphTabStop", testDeleteParagraphTabStop),
        ("testDeleteParagraphTabStopOnline", testDeleteParagraphTabStopOnline),
        ("testDeleteRun", testDeleteRun),
        ("testDeleteRunOnline", testDeleteRunOnline),
        ("testDeleteSection", testDeleteSection),
        ("testDeleteSectionOnline", testDeleteSectionOnline),
        ("testDeleteTable", testDeleteTable),
        ("testDeleteTableCell", testDeleteTableCell),
        ("testDeleteTableCellOnline", testDeleteTableCellOnline),
        ("testDeleteTableOnline", testDeleteTableOnline),
        ("testDeleteTableRow", testDeleteTableRow),
        ("testDeleteTableRowOnline", testDeleteTableRowOnline),
        ("testDeleteWatermark", testDeleteWatermark),
        ("testDeleteWatermarkOnline", testDeleteWatermarkOnline),
        ("testDownloadFile", testDownloadFile),
        ("testExecuteMailMerge", testExecuteMailMerge),
        ("testExecuteMailMergeOnline", testExecuteMailMergeOnline),
        ("testGetAvailableFonts", testGetAvailableFonts),
        ("testGetBookmarkByName", testGetBookmarkByName),
        ("testGetBookmarkByNameOnline", testGetBookmarkByNameOnline),
        ("testGetBookmarks", testGetBookmarks),
        ("testGetBookmarksOnline", testGetBookmarksOnline),
        ("testGetBorder", testGetBorder),
        ("testGetBorderOnline", testGetBorderOnline),
        ("testGetBorders", testGetBorders),
        ("testGetBordersOnline", testGetBordersOnline),
        ("testGetComment", testGetComment),
        ("testGetCommentOnline", testGetCommentOnline),
        ("testGetComments", testGetComments),
        ("testGetCommentsOnline", testGetCommentsOnline),
        ("testGetCustomXmlPart", testGetCustomXmlPart),
        ("testGetCustomXmlPartOnline", testGetCustomXmlPartOnline),
        ("testGetCustomXmlParts", testGetCustomXmlParts),
        ("testGetCustomXmlPartsOnline", testGetCustomXmlPartsOnline),
        ("testGetDocument", testGetDocument),
        ("testGetDocumentDrawingObjectByIndex", testGetDocumentDrawingObjectByIndex),
        ("testGetDocumentDrawingObjectByIndexOnline", testGetDocumentDrawingObjectByIndexOnline),
        ("testGetDocumentDrawingObjectImageData", testGetDocumentDrawingObjectImageData),
        ("testGetDocumentDrawingObjectImageDataOnline", testGetDocumentDrawingObjectImageDataOnline),
        ("testGetDocumentDrawingObjectOleData", testGetDocumentDrawingObjectOleData),
        ("testGetDocumentDrawingObjectOleDataOnline", testGetDocumentDrawingObjectOleDataOnline),
        ("testGetDocumentDrawingObjects", testGetDocumentDrawingObjects),
        ("testGetDocumentDrawingObjectsOnline", testGetDocumentDrawingObjectsOnline),
        ("testGetDocumentFieldNames", testGetDocumentFieldNames),
        ("testGetDocumentFieldNamesOnline", testGetDocumentFieldNamesOnline),
        ("testGetDocumentHyperlinkByIndex", testGetDocumentHyperlinkByIndex),
        ("testGetDocumentHyperlinkByIndexOnline", testGetDocumentHyperlinkByIndexOnline),
        ("testGetDocumentHyperlinks", testGetDocumentHyperlinks),
        ("testGetDocumentHyperlinksOnline", testGetDocumentHyperlinksOnline),
        ("testGetDocumentProperties", testGetDocumentProperties),
        ("testGetDocumentPropertiesOnline", testGetDocumentPropertiesOnline),
        ("testGetDocumentProperty", testGetDocumentProperty),
        ("testGetDocumentPropertyOnline", testGetDocumentPropertyOnline),
        ("testGetDocumentProtection", testGetDocumentProtection),
        ("testGetDocumentProtectionOnline", testGetDocumentProtectionOnline),
        ("testGetDocumentStatistics", testGetDocumentStatistics),
        ("testGetDocumentStatisticsOnline", testGetDocumentStatisticsOnline),
        ("testGetDocumentWithFormat", testGetDocumentWithFormat),
        ("testGetField", testGetField),
        ("testGetFieldOnline", testGetFieldOnline),
        ("testGetFields", testGetFields),
        ("testGetFieldsOnline", testGetFieldsOnline),
        ("testGetFilesList", testGetFilesList),
        ("testGetFootnote", testGetFootnote),
        ("testGetFootnoteOnline", testGetFootnoteOnline),
        ("testGetFootnotes", testGetFootnotes),
        ("testGetFootnotesOnline", testGetFootnotesOnline),
        ("testGetFormField", testGetFormField),
        ("testGetFormFieldOnline", testGetFormFieldOnline),
        ("testGetFormFields", testGetFormFields),
        ("testGetFormFieldsOnline", testGetFormFieldsOnline),
        ("testGetHeaderFooter", testGetHeaderFooter),
        ("testGetHeaderFooterOfSection", testGetHeaderFooterOfSection),
        ("testGetHeaderFooterOfSectionOnline", testGetHeaderFooterOfSectionOnline),
        ("testGetHeaderFooterOnline", testGetHeaderFooterOnline),
        ("testGetHeaderFooters", testGetHeaderFooters),
        ("testGetHeaderFootersOnline", testGetHeaderFootersOnline),
        ("testGetList", testGetList),
        ("testGetListOnline", testGetListOnline),
        ("testGetLists", testGetLists),
        ("testGetListsOnline", testGetListsOnline),
        ("testGetOfficeMathObject", testGetOfficeMathObject),
        ("testGetOfficeMathObjectOnline", testGetOfficeMathObjectOnline),
        ("testGetOfficeMathObjects", testGetOfficeMathObjects),
        ("testGetOfficeMathObjectsOnline", testGetOfficeMathObjectsOnline),
        ("testGetParagraph", testGetParagraph),
        ("testGetParagraphFormat", testGetParagraphFormat),
        ("testGetParagraphFormatOnline", testGetParagraphFormatOnline),
        ("testGetParagraphListFormat", testGetParagraphListFormat),
        ("testGetParagraphListFormatOnline", testGetParagraphListFormatOnline),
        ("testGetParagraphOnline", testGetParagraphOnline),
        ("testGetParagraphs", testGetParagraphs),
        ("testGetParagraphsOnline", testGetParagraphsOnline),
        ("testGetParagraphTabStops", testGetParagraphTabStops),
        ("testGetParagraphTabStopsOnline", testGetParagraphTabStopsOnline),
        ("testGetPublicKey", testGetPublicKey),
        ("testGetRangeText", testGetRangeText),
        ("testGetRangeTextOnline", testGetRangeTextOnline),
        ("testGetRun", testGetRun),
        ("testGetRunFont", testGetRunFont),
        ("testGetRunFontOnline", testGetRunFontOnline),
        ("testGetRunOnline", testGetRunOnline),
        ("testGetRuns", testGetRuns),
        ("testGetRunsOnline", testGetRunsOnline),
        ("testGetSection", testGetSection),
        ("testGetSectionOnline", testGetSectionOnline),
        ("testGetSectionPageSetup", testGetSectionPageSetup),
        ("testGetSectionPageSetupOnline", testGetSectionPageSetupOnline),
        ("testGetSections", testGetSections),
        ("testGetSectionsOnline", testGetSectionsOnline),
        ("testGetStyle", testGetStyle),
        ("testGetStyleFromDocumentElement", testGetStyleFromDocumentElement),
        ("testGetStyleFromDocumentElementOnline", testGetStyleFromDocumentElementOnline),
        ("testGetStyleOnline", testGetStyleOnline),
        ("testGetStyles", testGetStyles),
        ("testGetStylesOnline", testGetStylesOnline),
        ("testGetTable", testGetTable),
        ("testGetTableCell", testGetTableCell),
        ("testGetTableCellFormat", testGetTableCellFormat),
        ("testGetTableCellFormatOnline", testGetTableCellFormatOnline),
        ("testGetTableCellOnline", testGetTableCellOnline),
        ("testGetTableOnline", testGetTableOnline),
        ("testGetTableProperties", testGetTableProperties),
        ("testGetTablePropertiesOnline", testGetTablePropertiesOnline),
        ("testGetTableRow", testGetTableRow),
        ("testGetTableRowFormat", testGetTableRowFormat),
        ("testGetTableRowFormatOnline", testGetTableRowFormatOnline),
        ("testGetTableRowOnline", testGetTableRowOnline),
        ("testGetTables", testGetTables),
        ("testGetTablesOnline", testGetTablesOnline),
        ("testInsertComment", testInsertComment),
        ("testInsertCommentOnline", testInsertCommentOnline),
        ("testInsertCustomXmlPart", testInsertCustomXmlPart),
        ("testInsertCustomXmlPartOnline", testInsertCustomXmlPartOnline),
        ("testInsertDrawingObject", testInsertDrawingObject),
        ("testInsertDrawingObjectOnline", testInsertDrawingObjectOnline),
        ("testInsertField", testInsertField),
        ("testInsertFieldOnline", testInsertFieldOnline),
        ("testInsertFootnote", testInsertFootnote),
        ("testInsertFootnoteOnline", testInsertFootnoteOnline),
        ("testInsertFormField", testInsertFormField),
        ("testInsertFormFieldOnline", testInsertFormFieldOnline),
        ("testInsertHeaderFooter", testInsertHeaderFooter),
        ("testInsertHeaderFooterOnline", testInsertHeaderFooterOnline),
        ("testInsertList", testInsertList),
        ("testInsertListOnline", testInsertListOnline),
        ("testInsertOrUpdateParagraphTabStop", testInsertOrUpdateParagraphTabStop),
        ("testInsertOrUpdateParagraphTabStopOnline", testInsertOrUpdateParagraphTabStopOnline),
        ("testInsertPageNumbers", testInsertPageNumbers),
        ("testInsertPageNumbersOnline", testInsertPageNumbersOnline),
        ("testInsertParagraph", testInsertParagraph),
        ("testInsertParagraphOnline", testInsertParagraphOnline),
        ("testInsertRun", testInsertRun),
        ("testInsertRunOnline", testInsertRunOnline),
        ("testInsertStyle", testInsertStyle),
        ("testInsertStyleOnline", testInsertStyleOnline),
        ("testInsertTable", testInsertTable),
        ("testInsertTableCell", testInsertTableCell),
        ("testInsertTableCellOnline", testInsertTableCellOnline),
        ("testInsertTableOnline", testInsertTableOnline),
        ("testInsertTableRow", testInsertTableRow),
        ("testInsertTableRowOnline", testInsertTableRowOnline),
        ("testInsertWatermarkImage", testInsertWatermarkImage),
        ("testInsertWatermarkImageOnline", testInsertWatermarkImageOnline),
        ("testInsertWatermarkText", testInsertWatermarkText),
        ("testInsertWatermarkTextOnline", testInsertWatermarkTextOnline),
        ("testLoadWebDocument", testLoadWebDocument),
        ("testMoveFile", testMoveFile),
        ("testMoveFolder", testMoveFolder),
        ("testOptimizeDocument", testOptimizeDocument),
        ("testOptimizeDocumentOnline", testOptimizeDocumentOnline),
        ("testProtectDocument", testProtectDocument),
        ("testProtectDocumentOnline", testProtectDocumentOnline),
        ("testRejectAllRevisions", testRejectAllRevisions),
        ("testRejectAllRevisionsOnline", testRejectAllRevisionsOnline),
        ("testRemoveRange", testRemoveRange),
        ("testRemoveRangeOnline", testRemoveRangeOnline),
        ("testRenderDrawingObject", testRenderDrawingObject),
        ("testRenderDrawingObjectOnline", testRenderDrawingObjectOnline),
        ("testRenderMathObject", testRenderMathObject),
        ("testRenderMathObjectOnline", testRenderMathObjectOnline),
        ("testRenderPage", testRenderPage),
        ("testRenderPageOnline", testRenderPageOnline),
        ("testRenderParagraph", testRenderParagraph),
        ("testRenderParagraphOnline", testRenderParagraphOnline),
        ("testRenderTable", testRenderTable),
        ("testRenderTableOnline", testRenderTableOnline),
        ("testReplaceText", testReplaceText),
        ("testReplaceTextOnline", testReplaceTextOnline),
        ("testReplaceWithText", testReplaceWithText),
        ("testReplaceWithTextOnline", testReplaceWithTextOnline),
        ("testResetCache", testResetCache),
        ("testSaveAs", testSaveAs),
        ("testSaveAsOnline", testSaveAsOnline),
        ("testSaveAsRange", testSaveAsRange),
        ("testSaveAsRangeOnline", testSaveAsRangeOnline),
        ("testSaveAsTiff", testSaveAsTiff),
        ("testSaveAsTiffOnline", testSaveAsTiffOnline),
        ("testSearch", testSearch),
        ("testSearchOnline", testSearchOnline),
        ("testSplitDocument", testSplitDocument),
        ("testSplitDocumentOnline", testSplitDocumentOnline),
        ("testUnprotectDocument", testUnprotectDocument),
        ("testUnprotectDocumentOnline", testUnprotectDocumentOnline),
        ("testUpdateBookmark", testUpdateBookmark),
        ("testUpdateBookmarkOnline", testUpdateBookmarkOnline),
        ("testUpdateBorder", testUpdateBorder),
        ("testUpdateBorderOnline", testUpdateBorderOnline),
        ("testUpdateComment", testUpdateComment),
        ("testUpdateCommentOnline", testUpdateCommentOnline),
        ("testUpdateCustomXmlPart", testUpdateCustomXmlPart),
        ("testUpdateCustomXmlPartOnline", testUpdateCustomXmlPartOnline),
        ("testUpdateDrawingObject", testUpdateDrawingObject),
        ("testUpdateDrawingObjectOnline", testUpdateDrawingObjectOnline),
        ("testUpdateField", testUpdateField),
        ("testUpdateFieldOnline", testUpdateFieldOnline),
        ("testUpdateFields", testUpdateFields),
        ("testUpdateFieldsOnline", testUpdateFieldsOnline),
        ("testUpdateFootnote", testUpdateFootnote),
        ("testUpdateFootnoteOnline", testUpdateFootnoteOnline),
        ("testUpdateFormField", testUpdateFormField),
        ("testUpdateFormFieldOnline", testUpdateFormFieldOnline),
        ("testUpdateList", testUpdateList),
        ("testUpdateListLevel", testUpdateListLevel),
        ("testUpdateListLevelOnline", testUpdateListLevelOnline),
        ("testUpdateListOnline", testUpdateListOnline),
        ("testUpdateParagraphFormat", testUpdateParagraphFormat),
        ("testUpdateParagraphFormatOnline", testUpdateParagraphFormatOnline),
        ("testUpdateParagraphListFormat", testUpdateParagraphListFormat),
        ("testUpdateParagraphListFormatOnline", testUpdateParagraphListFormatOnline),
        ("testUpdateRun", testUpdateRun),
        ("testUpdateRunFont", testUpdateRunFont),
        ("testUpdateRunFontOnline", testUpdateRunFontOnline),
        ("testUpdateRunOnline", testUpdateRunOnline),
        ("testUpdateSectionPageSetup", testUpdateSectionPageSetup),
        ("testUpdateSectionPageSetupOnline", testUpdateSectionPageSetupOnline),
        ("testUpdateStyle", testUpdateStyle),
        ("testUpdateStyleOnline", testUpdateStyleOnline),
        ("testUpdateTableCellFormat", testUpdateTableCellFormat),
        ("testUpdateTableCellFormatOnline", testUpdateTableCellFormatOnline),
        ("testUpdateTableProperties", testUpdateTableProperties),
        ("testUpdateTablePropertiesOnline", testUpdateTablePropertiesOnline),
        ("testUpdateTableRowFormat", testUpdateTableRowFormat),
        ("testUpdateTableRowFormatOnline", testUpdateTableRowFormatOnline),
        ("testUploadFile", testUploadFile)
    ];

    private var configuration : Configuration?;

    private var currentDir : URL?;

    override func setUp() {
        if (self.configuration == nil) {
            let baseFolder = URL(fileURLWithPath: #file)
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent();

            let credsUrl = baseFolder
                .appendingPathComponent("Settings", isDirectory: true)
                .appendingPathComponent("servercreds.json", isDirectory: false);

            do {
                let credsData = try Data(contentsOf: credsUrl);
                self.configuration = try ObjectSerializer.deserialize(type: Configuration.self, from: credsData);
            }
            catch {
                XCTFail("File servercreds.json not found in Settings folder of project root.");
            }

            currentDir = baseFolder
                .appendingPathComponent("ExamplesData", isDirectory: true);

        }
    }

    func testAcceptAllRevisions() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let acceptRequest = AcceptAllRevisionsRequest(name: remoteFileName, destFileName: remoteFileName);
        _ = try api.acceptAllRevisions(request: acceptRequest);
    }

    func testAcceptAllRevisionsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let acceptRequest = AcceptAllRevisionsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.acceptAllRevisionsOnline(request: acceptRequest);
    }

    func testAppendDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let requestDocumentListDocumentEntries0 = DocumentEntry();
        requestDocumentListDocumentEntries0.setHref(href: remoteFileName);
        requestDocumentListDocumentEntries0.setImportFormatMode(importFormatMode: "KeepSourceFormatting");
        let requestDocumentListDocumentEntries = [
          requestDocumentListDocumentEntries0];
        let requestDocumentList = DocumentEntryList();
        requestDocumentList.setDocumentEntries(documentEntries: requestDocumentListDocumentEntries);
        let appendRequest = AppendDocumentRequest(name: remoteFileName, documentList: requestDocumentList, destFileName: remoteFileName);
        _ = try api.appendDocument(request: appendRequest);
    }

    func testAppendDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocumentListDocumentEntries0 = DocumentEntry();
        requestDocumentListDocumentEntries0.setHref(href: "Sample.docx");
        requestDocumentListDocumentEntries0.setImportFormatMode(importFormatMode: "KeepSourceFormatting");
        let requestDocumentListDocumentEntries = [
          requestDocumentListDocumentEntries0];
        let requestDocumentList = DocumentEntryList();
        requestDocumentList.setDocumentEntries(documentEntries: requestDocumentListDocumentEntries);
        let appendRequest = AppendDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, documentList: requestDocumentList);
        _ = try api.appendDocumentOnline(request: appendRequest);
    }

    func testApplyStyleToDocumentElement() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleApply = StyleApply();
        requestStyleApply.setStyleName(styleName: "Heading 1");
        let applyStyleRequest = ApplyStyleToDocumentElementRequest(name: "Sample.docx", styledNodePath: "paragraphs/1/paragraphFormat", styleApply: requestStyleApply);
        _ = try api.applyStyleToDocumentElement(request: applyStyleRequest);
    }

    func testApplyStyleToDocumentElementOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleApply = StyleApply();
        requestStyleApply.setStyleName(styleName: "Heading 1");
        let applyStyleRequest = ApplyStyleToDocumentElementOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styledNodePath: "paragraphs/1/paragraphFormat", styleApply: requestStyleApply);
        _ = try api.applyStyleToDocumentElementOnline(request: applyStyleRequest);
    }

    func testBuildReport() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestReportEngineSettingsReportBuildOptions = [
          ReportBuildOptions.allowMissingMembers,
        ReportBuildOptions.removeEmptyParagraphs];
        let requestReportEngineSettings = ReportEngineSettings();
        requestReportEngineSettings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
        requestReportEngineSettings.setReportBuildOptions(reportBuildOptions: requestReportEngineSettingsReportBuildOptions);
        let buildReportRequest = BuildReportRequest(name: "Sample.docx", data: "Data.json", reportEngineSettings: requestReportEngineSettings);
        _ = try api.buildReport(request: buildReportRequest);
    }

    func testBuildReportOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestReportEngineSettings = ReportEngineSettings();
        requestReportEngineSettings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
        requestReportEngineSettings.setDataSourceName(dataSourceName: "persons");
        let buildReportRequest = BuildReportOnlineRequest(template: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, data: "Data.json", reportEngineSettings: requestReportEngineSettings);
        _ = try api.buildReportOnline(request: buildReportRequest);
    }

    func testClassify() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let classifyRequest = ClassifyRequest(text: "Try text classification", bestClassesCount: "3");
        _ = try api.classify(request: classifyRequest);
    }

    func testClassifyDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let classifyRequest = ClassifyDocumentRequest(name: "Sample.docx", bestClassesCount: "3");
        _ = try api.classifyDocument(request: classifyRequest);
    }

    func testClassifyDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let classifyRequest = ClassifyDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, bestClassesCount: "3");
        _ = try api.classifyDocumentOnline(request: classifyRequest);
    }

    func testCompareDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCompareData = CompareData();
        requestCompareData.setAuthor(author: "author");
        requestCompareData.setComparingWithDocument(comparingWithDocument: "TestCompareDocument2.doc");
        requestCompareData.setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!);
        let compareRequest = CompareDocumentRequest(name: "TestCompareDocument1.doc", compareData: requestCompareData, destFileName: "/TestCompareDocumentOut.doc");
        _ = try api.compareDocument(request: compareRequest);
    }

    func testCompareDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCompareData = CompareData();
        requestCompareData.setAuthor(author: "author");
        requestCompareData.setComparingWithDocument(comparingWithDocument: "TestCompareDocument2.doc");
        requestCompareData.setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!);
        let compareRequest = CompareDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("compareTestDoc1.doc", isDirectory: false))!, compareData: requestCompareData, comparingDocument: InputStream(url: currentDir!.appendingPathComponent("compareTestDoc2.doc", isDirectory: false))!, destFileName: "/TestCompareDocumentOut.doc");
        _ = try api.compareDocumentOnline(request: compareRequest);
    }

    func testConvertDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let convertRequest = ConvertDocumentRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, format: "pdf");
        _ = try api.convertDocument(request: convertRequest);
    }

    func testCopyFile() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let copyRequest = CopyFileRequest(destPath: "/TestCopyFileDest.docx", srcPath: "Sample.docx");
        _ = try api.copyFile(request: copyRequest);
    }

    func testCopyFolder() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let folderToCopy = "/TestCopyFolder";

        let copyRequest = CopyFolderRequest(destPath: folderToCopy + "Dest", srcPath: folderToCopy + "Src");
        _ = try api.copyFolder(request: copyRequest);
    }

    func testCopyStyle() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleCopy = StyleCopy();
        requestStyleCopy.setStyleName(styleName: "Heading 1");
        let copyRequest = CopyStyleRequest(name: "Sample.docx", styleCopy: requestStyleCopy);
        _ = try api.copyStyle(request: copyRequest);
    }

    func testCopyStyleOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleCopy = StyleCopy();
        requestStyleCopy.setStyleName(styleName: "Heading 1");
        let copyRequest = CopyStyleOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styleCopy: requestStyleCopy);
        _ = try api.copyStyleOnline(request: copyRequest);
    }

    func testCreateDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let createRequest = CreateDocumentRequest(fileName: "Sample.docx");
        _ = try api.createDocument(request: createRequest);
    }

    func testCreateFolder() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let createRequest = CreateFolderRequest(path: "/TestCreateFolder");
        _ = try api.createFolder(request: createRequest);
    }

    func testCreateOrUpdateDocumentProperty() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let requestProperty = DocumentPropertyCreateOrUpdate();
        requestProperty.setValue(value: "Imran Anwar");
        let createRequest = CreateOrUpdateDocumentPropertyRequest(name: remoteFileName, propertyName: "AsposeAuthor", property: requestProperty, destFileName: remoteFileName);
        _ = try api.createOrUpdateDocumentProperty(request: createRequest);
    }

    func testCreateOrUpdateDocumentPropertyOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestProperty = DocumentPropertyCreateOrUpdate();
        requestProperty.setValue(value: "Imran Anwar");
        let createRequest = CreateOrUpdateDocumentPropertyOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, propertyName: "AsposeAuthor", property: requestProperty);
        _ = try api.createOrUpdateDocumentPropertyOnline(request: createRequest);
    }

    func testDeleteAllParagraphTabStops() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteAllParagraphTabStopsRequest(name: "Sample.docx", index: 0);
        _ = try api.deleteAllParagraphTabStops(request: deleteRequest);
    }

    func testDeleteAllParagraphTabStopsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteAllParagraphTabStopsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0);
        _ = try api.deleteAllParagraphTabStopsOnline(request: deleteRequest);
    }

    func testDeleteBorder() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteBorderRequest(name: "Sample.docx", borderType: "left", nodePath: "tables/1/rows/0/cells/0");
        _ = try api.deleteBorder(request: deleteRequest);
    }

    func testDeleteBorderOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteBorderOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
        _ = try api.deleteBorderOnline(request: deleteRequest);
    }

    func testDeleteBorders() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteBordersRequest(name: "Sample.docx", nodePath: "tables/1/rows/0/cells/0");
        _ = try api.deleteBorders(request: deleteRequest);
    }

    func testDeleteBordersOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteBordersOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, nodePath: "tables/1/rows/0/cells/0");
        _ = try api.deleteBordersOnline(request: deleteRequest);
    }

    func testDeleteComment() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let deleteRequest = DeleteCommentRequest(name: remoteFileName, commentIndex: 0, destFileName: remoteFileName);
        _ = try api.deleteComment(request: deleteRequest);
    }

    func testDeleteCommentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteCommentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, commentIndex: 0);
        _ = try api.deleteCommentOnline(request: deleteRequest);
    }

    func testDeleteComments() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let deleteRequest = DeleteCommentsRequest(name: remoteFileName, destFileName: remoteFileName);
        _ = try api.deleteComments(request: deleteRequest);
    }

    func testDeleteCommentsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteCommentsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.deleteCommentsOnline(request: deleteRequest);
    }

    func testDeleteCustomXmlPart() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let deleteRequest = DeleteCustomXmlPartRequest(name: remoteFileName, customXmlPartIndex: 0, destFileName: remoteFileName);
        _ = try api.deleteCustomXmlPart(request: deleteRequest);
    }

    func testDeleteCustomXmlPartOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteCustomXmlPartOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, customXmlPartIndex: 0);
        _ = try api.deleteCustomXmlPartOnline(request: deleteRequest);
    }

    func testDeleteCustomXmlParts() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let deleteRequest = DeleteCustomXmlPartsRequest(name: remoteFileName, destFileName: remoteFileName);
        _ = try api.deleteCustomXmlParts(request: deleteRequest);
    }

    func testDeleteCustomXmlPartsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteCustomXmlPartsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.deleteCustomXmlPartsOnline(request: deleteRequest);
    }

    func testDeleteDocumentProperty() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let deleteRequest = DeleteDocumentPropertyRequest(name: remoteFileName, propertyName: "testProp", destFileName: remoteFileName);
        _ = try api.deleteDocumentProperty(request: deleteRequest);
    }

    func testDeleteDocumentPropertyOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteDocumentPropertyOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, propertyName: "testProp");
        _ = try api.deleteDocumentPropertyOnline(request: deleteRequest);
    }

    func testDeleteDrawingObject() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteDrawingObjectRequest(name: "Sample.docx", index: 0);
        _ = try api.deleteDrawingObject(request: deleteRequest);
    }

    func testDeleteDrawingObjectOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteDrawingObjectOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0);
        _ = try api.deleteDrawingObjectOnline(request: deleteRequest);
    }

    func testDeleteField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteFieldRequest(name: "Sample.docx", index: 0);
        _ = try api.deleteField(request: deleteRequest);
    }

    func testDeleteFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0, nodePath: "sections/0/paragraphs/0");
        _ = try api.deleteFieldOnline(request: deleteRequest);
    }

    func testDeleteFields() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteFieldsRequest(name: "Sample.docx");
        _ = try api.deleteFields(request: deleteRequest);
    }

    func testDeleteFieldsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteFieldsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.deleteFieldsOnline(request: deleteRequest);
    }

    func testDeleteFile() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteFileRequest(path: "Sample.docx");
        _ = try api.deleteFile(request: deleteRequest);
    }

    func testDeleteFolder() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteFolderRequest(path: "");
        _ = try api.deleteFolder(request: deleteRequest);
    }

    func testDeleteFootnote() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteFootnoteRequest(name: "Sample.docx", index: 0);
        _ = try api.deleteFootnote(request: deleteRequest);
    }

    func testDeleteFootnoteOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, index: 0);
        _ = try api.deleteFootnoteOnline(request: deleteRequest);
    }

    func testDeleteFormField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let deleteRequest = DeleteFormFieldRequest(name: remoteFileName, index: 0, destFileName: remoteFileName);
        _ = try api.deleteFormField(request: deleteRequest);
    }

    func testDeleteFormFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteFormFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0, nodePath: "sections/0");
        _ = try api.deleteFormFieldOnline(request: deleteRequest);
    }

    func testDeleteHeaderFooter() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteHeaderFooterRequest(name: "Sample.docx", sectionPath: "", index: 0);
        _ = try api.deleteHeaderFooter(request: deleteRequest);
    }

    func testDeleteHeaderFooterOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteHeaderFooterOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/HeaderFooters/HeadersFooters.doc", isDirectory: false))!, sectionPath: "", index: 0);
        _ = try api.deleteHeaderFooterOnline(request: deleteRequest);
    }

    func testDeleteHeadersFooters() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteHeadersFootersRequest(name: "Sample.docx", sectionPath: "");
        _ = try api.deleteHeadersFooters(request: deleteRequest);
    }

    func testDeleteHeadersFootersOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteHeadersFootersOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/HeaderFooters/HeadersFooters.doc", isDirectory: false))!, sectionPath: "");
        _ = try api.deleteHeadersFootersOnline(request: deleteRequest);
    }

    func testDeleteMacros() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteMacrosRequest(name: "Sample.docx");
        _ = try api.deleteMacros(request: deleteRequest);
    }

    func testDeleteMacrosOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteMacrosOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.deleteMacrosOnline(request: deleteRequest);
    }

    func testDeleteOfficeMathObject() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteOfficeMathObjectRequest(name: "Sample.docx", index: 0);
        _ = try api.deleteOfficeMathObject(request: deleteRequest);
    }

    func testDeleteOfficeMathObjectOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteOfficeMathObjectOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0);
        _ = try api.deleteOfficeMathObjectOnline(request: deleteRequest);
    }

    func testDeleteParagraph() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteParagraphRequest(name: "Sample.docx", index: 0);
        _ = try api.deleteParagraph(request: deleteRequest);
    }

    func testDeleteParagraphListFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteParagraphListFormatRequest(name: "Sample.docx", index: 0);
        _ = try api.deleteParagraphListFormat(request: deleteRequest);
    }

    func testDeleteParagraphListFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteParagraphListFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, index: 0);
        _ = try api.deleteParagraphListFormatOnline(request: deleteRequest);
    }

    func testDeleteParagraphOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteParagraphOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0);
        _ = try api.deleteParagraphOnline(request: deleteRequest);
    }

    func testDeleteParagraphTabStop() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteParagraphTabStopRequest(name: "Sample.docx", position: 72.0, index: 0);
        _ = try api.deleteParagraphTabStop(request: deleteRequest);
    }

    func testDeleteParagraphTabStopOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteParagraphTabStopOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, position: 72.0, index: 0);
        _ = try api.deleteParagraphTabStopOnline(request: deleteRequest);
    }

    func testDeleteRun() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/1", index: 0);
        _ = try api.deleteRun(request: deleteRequest);
    }

    func testDeleteRunOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteRunOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Runs/Run.doc", isDirectory: false))!, paragraphPath: "paragraphs/1", index: 0);
        _ = try api.deleteRunOnline(request: deleteRequest);
    }

    func testDeleteSection() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteSectionRequest(name: "Sample.docx", sectionIndex: 0);
        _ = try api.deleteSection(request: deleteRequest);
    }

    func testDeleteSectionOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteSectionOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, sectionIndex: 0);
        _ = try api.deleteSectionOnline(request: deleteRequest);
    }

    func testDeleteTable() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteTableRequest(name: "Sample.docx", index: 1);
        _ = try api.deleteTable(request: deleteRequest);
    }

    func testDeleteTableCell() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteTableCellRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", index: 0);
        _ = try api.deleteTableCell(request: deleteRequest);
    }

    func testDeleteTableCellOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteTableCellOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
        _ = try api.deleteTableCellOnline(request: deleteRequest);
    }

    func testDeleteTableOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteTableOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 1);
        _ = try api.deleteTableOnline(request: deleteRequest);
    }

    func testDeleteTableRow() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteTableRowRequest(name: "Sample.docx", tablePath: "tables/1", index: 0);
        _ = try api.deleteTableRow(request: deleteRequest);
    }

    func testDeleteTableRowOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteTableRowOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tablePath: "tables/1", index: 0);
        _ = try api.deleteTableRowOnline(request: deleteRequest);
    }

    func testDeleteWatermark() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let deleteRequest = DeleteWatermarkRequest(name: remoteFileName, destFileName: remoteFileName);
        _ = try api.deleteWatermark(request: deleteRequest);
    }

    func testDeleteWatermarkOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteWatermarkOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.deleteWatermarkOnline(request: deleteRequest);
    }

    func testDownloadFile() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let downloadRequest = DownloadFileRequest(path: "Sample.docx");
        _ = try api.downloadFile(request: downloadRequest);
    }

    func testExecuteMailMerge() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let mailMergeRequest = ExecuteMailMergeRequest(name: remoteFileName, data: "TestExecuteTemplateData.txt", destFileName: remoteFileName);
        _ = try api.executeMailMerge(request: mailMergeRequest);
    }

    func testExecuteMailMergeOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let mailMergeRequest = ExecuteMailMergeOnlineRequest(template: InputStream(url: currentDir!.appendingPathComponent("TestExecuteTemplate.doc", isDirectory: false))!, data: InputStream(url: currentDir!.appendingPathComponent("TestExecuteTemplateData.txt", isDirectory: false))!);
        _ = try api.executeMailMergeOnline(request: mailMergeRequest);
    }

    func testGetAvailableFonts() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetAvailableFontsRequest();
        _ = try api.getAvailableFonts(request: request);
    }

    func testGetBookmarkByName() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetBookmarkByNameRequest(name: "Sample.docx", bookmarkName: "aspose");
        _ = try api.getBookmarkByName(request: request);
    }

    func testGetBookmarkByNameOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetBookmarkByNameOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, bookmarkName: "aspose");
        _ = try api.getBookmarkByNameOnline(request: request);
    }

    func testGetBookmarks() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetBookmarksRequest(name: "Sample.docx");
        _ = try api.getBookmarks(request: request);
    }

    func testGetBookmarksOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetBookmarksOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getBookmarksOnline(request: request);
    }

    func testGetBorder() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetBorderRequest(name: "Sample.docx", borderType: "left", nodePath: "tables/1/rows/0/cells/0");
        _ = try api.getBorder(request: request);
    }

    func testGetBorderOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetBorderOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
        _ = try api.getBorderOnline(request: request);
    }

    func testGetBorders() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetBordersRequest(name: "Sample.docx", nodePath: "tables/1/rows/0/cells/0");
        _ = try api.getBorders(request: request);
    }

    func testGetBordersOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetBordersOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, nodePath: "tables/1/rows/0/cells/0");
        _ = try api.getBordersOnline(request: request);
    }

    func testGetComment() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetCommentRequest(name: "Sample.docx", commentIndex: 0);
        _ = try api.getComment(request: request);
    }

    func testGetCommentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetCommentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, commentIndex: 0);
        _ = try api.getCommentOnline(request: request);
    }

    func testGetComments() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetCommentsRequest(name: "Sample.docx");
        _ = try api.getComments(request: request);
    }

    func testGetCommentsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetCommentsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getCommentsOnline(request: request);
    }

    func testGetCustomXmlPart() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetCustomXmlPartRequest(name: "Sample.docx", customXmlPartIndex: 0);
        _ = try api.getCustomXmlPart(request: request);
    }

    func testGetCustomXmlPartOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetCustomXmlPartOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, customXmlPartIndex: 0);
        _ = try api.getCustomXmlPartOnline(request: request);
    }

    func testGetCustomXmlParts() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetCustomXmlPartsRequest(name: "Sample.docx");
        _ = try api.getCustomXmlParts(request: request);
    }

    func testGetCustomXmlPartsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetCustomXmlPartsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getCustomXmlPartsOnline(request: request);
    }

    func testGetDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentRequest(documentName: "Sample.docx");
        _ = try api.getDocument(request: request);
    }

    func testGetDocumentDrawingObjectByIndex() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentDrawingObjectByIndexRequest(name: "Sample.docx", index: 0);
        _ = try api.getDocumentDrawingObjectByIndex(request: request);
    }

    func testGetDocumentDrawingObjectByIndexOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentDrawingObjectByIndexOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0, nodePath: "sections/0");
        _ = try api.getDocumentDrawingObjectByIndexOnline(request: request);
    }

    func testGetDocumentDrawingObjectImageData() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentDrawingObjectImageDataRequest(name: "Sample.docx", index: 0);
        _ = try api.getDocumentDrawingObjectImageData(request: request);
    }

    func testGetDocumentDrawingObjectImageDataOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentDrawingObjectImageDataOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0, nodePath: "sections/0");
        _ = try api.getDocumentDrawingObjectImageDataOnline(request: request);
    }

    func testGetDocumentDrawingObjectOleData() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentDrawingObjectOleDataRequest(name: "Sample.docx", index: 0);
        _ = try api.getDocumentDrawingObjectOleData(request: request);
    }

    func testGetDocumentDrawingObjectOleDataOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentDrawingObjectOleDataOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0, nodePath: "sections/0");
        _ = try api.getDocumentDrawingObjectOleDataOnline(request: request);
    }

    func testGetDocumentDrawingObjects() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentDrawingObjectsRequest(name: "Sample.docx");
        _ = try api.getDocumentDrawingObjects(request: request);
    }

    func testGetDocumentDrawingObjectsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentDrawingObjectsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, nodePath: "sections/0");
        _ = try api.getDocumentDrawingObjectsOnline(request: request);
    }

    func testGetDocumentFieldNames() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentFieldNamesRequest(name: "Sample.docx");
        _ = try api.getDocumentFieldNames(request: request);
    }

    func testGetDocumentFieldNamesOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentFieldNamesOnlineRequest(template: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, useNonMergeFields: true);
        _ = try api.getDocumentFieldNamesOnline(request: request);
    }

    func testGetDocumentHyperlinkByIndex() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentHyperlinkByIndexRequest(name: "Sample.docx", hyperlinkIndex: 0);
        _ = try api.getDocumentHyperlinkByIndex(request: request);
    }

    func testGetDocumentHyperlinkByIndexOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentHyperlinkByIndexOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, hyperlinkIndex: 0);
        _ = try api.getDocumentHyperlinkByIndexOnline(request: request);
    }

    func testGetDocumentHyperlinks() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentHyperlinksRequest(name: "Sample.docx");
        _ = try api.getDocumentHyperlinks(request: request);
    }

    func testGetDocumentHyperlinksOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentHyperlinksOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getDocumentHyperlinksOnline(request: request);
    }

    func testGetDocumentProperties() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentPropertiesRequest(name: "Sample.docx");
        _ = try api.getDocumentProperties(request: request);
    }

    func testGetDocumentPropertiesOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentPropertiesOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getDocumentPropertiesOnline(request: request);
    }

    func testGetDocumentProperty() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentPropertyRequest(name: "Sample.docx", propertyName: "Author");
        _ = try api.getDocumentProperty(request: request);
    }

    func testGetDocumentPropertyOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentPropertyOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, propertyName: "Author");
        _ = try api.getDocumentPropertyOnline(request: request);
    }

    func testGetDocumentProtection() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentProtectionRequest(name: "Sample.docx");
        _ = try api.getDocumentProtection(request: request);
    }

    func testGetDocumentProtectionOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentProtectionOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getDocumentProtectionOnline(request: request);
    }

    func testGetDocumentStatistics() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentStatisticsRequest(name: "Sample.docx");
        _ = try api.getDocumentStatistics(request: request);
    }

    func testGetDocumentStatisticsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentStatisticsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getDocumentStatisticsOnline(request: request);
    }

    func testGetDocumentWithFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetDocumentWithFormatRequest(name: "Sample.docx", format: "text", outPath: "/TestGetDocumentWithFormatAndOutPath.text");
        _ = try api.getDocumentWithFormat(request: request);
    }

    func testGetField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFieldRequest(name: "Sample.docx", index: 0);
        _ = try api.getField(request: request);
    }

    func testGetFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0, nodePath: "sections/0/paragraphs/0");
        _ = try api.getFieldOnline(request: request);
    }

    func testGetFields() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFieldsRequest(name: "Sample.docx");
        _ = try api.getFields(request: request);
    }

    func testGetFieldsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFieldsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, nodePath: "sections/0");
        _ = try api.getFieldsOnline(request: request);
    }

    func testGetFilesList() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFilesListRequest(path: "");
        _ = try api.getFilesList(request: request);
    }

    func testGetFootnote() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFootnoteRequest(name: "Sample.docx", index: 0);
        _ = try api.getFootnote(request: request);
    }

    func testGetFootnoteOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, index: 0);
        _ = try api.getFootnoteOnline(request: request);
    }

    func testGetFootnotes() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFootnotesRequest(name: "Sample.docx");
        _ = try api.getFootnotes(request: request);
    }

    func testGetFootnotesOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFootnotesOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!);
        _ = try api.getFootnotesOnline(request: request);
    }

    func testGetFormField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFormFieldRequest(name: "Sample.docx", index: 0);
        _ = try api.getFormField(request: request);
    }

    func testGetFormFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFormFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0, nodePath: "sections/0");
        _ = try api.getFormFieldOnline(request: request);
    }

    func testGetFormFields() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFormFieldsRequest(name: "Sample.docx");
        _ = try api.getFormFields(request: request);
    }

    func testGetFormFieldsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetFormFieldsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, nodePath: "sections/0");
        _ = try api.getFormFieldsOnline(request: request);
    }

    func testGetHeaderFooter() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetHeaderFooterRequest(name: "Sample.docx", headerFooterIndex: 0);
        _ = try api.getHeaderFooter(request: request);
    }

    func testGetHeaderFooterOfSection() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetHeaderFooterOfSectionRequest(name: "Sample.docx", headerFooterIndex: 0, sectionIndex: 0);
        _ = try api.getHeaderFooterOfSection(request: request);
    }

    func testGetHeaderFooterOfSectionOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetHeaderFooterOfSectionOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/HeaderFooters/HeadersFooters.doc", isDirectory: false))!, headerFooterIndex: 0, sectionIndex: 0);
        _ = try api.getHeaderFooterOfSectionOnline(request: request);
    }

    func testGetHeaderFooterOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetHeaderFooterOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/HeaderFooters/HeadersFooters.doc", isDirectory: false))!, headerFooterIndex: 0);
        _ = try api.getHeaderFooterOnline(request: request);
    }

    func testGetHeaderFooters() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetHeaderFootersRequest(name: "Sample.docx", sectionPath: "");
        _ = try api.getHeaderFooters(request: request);
    }

    func testGetHeaderFootersOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetHeaderFootersOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/HeaderFooters/HeadersFooters.doc", isDirectory: false))!, sectionPath: "");
        _ = try api.getHeaderFootersOnline(request: request);
    }

    func testGetList() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetListRequest(name: "TestGetLists.doc", listId: 1);
        _ = try api.getList(request: request);
    }

    func testGetListOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetListOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Lists/ListsGet.doc", isDirectory: false))!, listId: 1);
        _ = try api.getListOnline(request: request);
    }

    func testGetLists() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetListsRequest(name: "TestGetLists.doc");
        _ = try api.getLists(request: request);
    }

    func testGetListsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetListsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Lists/ListsGet.doc", isDirectory: false))!);
        _ = try api.getListsOnline(request: request);
    }

    func testGetOfficeMathObject() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetOfficeMathObjectRequest(name: "Sample.docx", index: 0);
        _ = try api.getOfficeMathObject(request: request);
    }

    func testGetOfficeMathObjectOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetOfficeMathObjectOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0);
        _ = try api.getOfficeMathObjectOnline(request: request);
    }

    func testGetOfficeMathObjects() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetOfficeMathObjectsRequest(name: "Sample.docx");
        _ = try api.getOfficeMathObjects(request: request);
    }

    func testGetOfficeMathObjectsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetOfficeMathObjectsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getOfficeMathObjectsOnline(request: request);
    }

    func testGetParagraph() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetParagraphRequest(name: "Sample.docx", index: 0);
        _ = try api.getParagraph(request: request);
    }

    func testGetParagraphFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetParagraphFormatRequest(name: "Sample.docx", index: 0);
        _ = try api.getParagraphFormat(request: request);
    }

    func testGetParagraphFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetParagraphFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0);
        _ = try api.getParagraphFormatOnline(request: request);
    }

    func testGetParagraphListFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetParagraphListFormatRequest(name: "Sample.docx", index: 0);
        _ = try api.getParagraphListFormat(request: request);
    }

    func testGetParagraphListFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetParagraphListFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, index: 0);
        _ = try api.getParagraphListFormatOnline(request: request);
    }

    func testGetParagraphOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetParagraphOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0, nodePath: "sections/0");
        _ = try api.getParagraphOnline(request: request);
    }

    func testGetParagraphs() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetParagraphsRequest(name: "Sample.docx");
        _ = try api.getParagraphs(request: request);
    }

    func testGetParagraphsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetParagraphsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, nodePath: "sections/0");
        _ = try api.getParagraphsOnline(request: request);
    }

    func testGetParagraphTabStops() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetParagraphTabStopsRequest(name: "Sample.docx", index: 0);
        _ = try api.getParagraphTabStops(request: request);
    }

    func testGetParagraphTabStopsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetParagraphTabStopsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0);
        _ = try api.getParagraphTabStopsOnline(request: request);
    }

    func testGetPublicKey() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetPublicKeyRequest();
        _ = try api.getPublicKey(request: request);
    }

    func testGetRangeText() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetRangeTextRequest(name: "Sample.docx", rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1");
        _ = try api.getRangeText(request: request);
    }

    func testGetRangeTextOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetRangeTextOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Range/RangeGet.doc", isDirectory: false))!, rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1");
        _ = try api.getRangeTextOnline(request: request);
    }

    func testGetRun() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/0", index: 0);
        _ = try api.getRun(request: request);
    }

    func testGetRunFont() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetRunFontRequest(name: "Sample.docx", paragraphPath: "paragraphs/0", index: 0);
        _ = try api.getRunFont(request: request);
    }

    func testGetRunFontOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetRunFontOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, paragraphPath: "paragraphs/0", index: 0);
        _ = try api.getRunFontOnline(request: request);
    }

    func testGetRunOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetRunOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, paragraphPath: "paragraphs/0", index: 0);
        _ = try api.getRunOnline(request: request);
    }

    func testGetRuns() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetRunsRequest(name: "Sample.docx", paragraphPath: "sections/0/paragraphs/0");
        _ = try api.getRuns(request: request);
    }

    func testGetRunsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetRunsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, paragraphPath: "sections/0/paragraphs/0");
        _ = try api.getRunsOnline(request: request);
    }

    func testGetSection() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetSectionRequest(name: "Sample.docx", sectionIndex: 0);
        _ = try api.getSection(request: request);
    }

    func testGetSectionOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetSectionOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, sectionIndex: 0);
        _ = try api.getSectionOnline(request: request);
    }

    func testGetSectionPageSetup() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetSectionPageSetupRequest(name: "Sample.docx", sectionIndex: 0);
        _ = try api.getSectionPageSetup(request: request);
    }

    func testGetSectionPageSetupOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetSectionPageSetupOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, sectionIndex: 0);
        _ = try api.getSectionPageSetupOnline(request: request);
    }

    func testGetSections() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetSectionsRequest(name: "Sample.docx");
        _ = try api.getSections(request: request);
    }

    func testGetSectionsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetSectionsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getSectionsOnline(request: request);
    }

    func testGetStyle() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetStyleRequest(name: "Sample.docx", styleName: "Heading 1");
        _ = try api.getStyle(request: request);
    }

    func testGetStyleFromDocumentElement() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetStyleFromDocumentElementRequest(name: "Sample.docx", styledNodePath: "paragraphs/1/paragraphFormat");
        _ = try api.getStyleFromDocumentElement(request: request);
    }

    func testGetStyleFromDocumentElementOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetStyleFromDocumentElementOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styledNodePath: "paragraphs/1/paragraphFormat");
        _ = try api.getStyleFromDocumentElementOnline(request: request);
    }

    func testGetStyleOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetStyleOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styleName: "Heading 1");
        _ = try api.getStyleOnline(request: request);
    }

    func testGetStyles() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetStylesRequest(name: "Sample.docx");
        _ = try api.getStyles(request: request);
    }

    func testGetStylesOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetStylesOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getStylesOnline(request: request);
    }

    func testGetTable() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTableRequest(name: "Sample.docx", index: 1);
        _ = try api.getTable(request: request);
    }

    func testGetTableCell() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTableCellRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", index: 0);
        _ = try api.getTableCell(request: request);
    }

    func testGetTableCellFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTableCellFormatRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", index: 0);
        _ = try api.getTableCellFormat(request: request);
    }

    func testGetTableCellFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTableCellFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
        _ = try api.getTableCellFormatOnline(request: request);
    }

    func testGetTableCellOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTableCellOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
        _ = try api.getTableCellOnline(request: request);
    }

    func testGetTableOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTableOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 1);
        _ = try api.getTableOnline(request: request);
    }

    func testGetTableProperties() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTablePropertiesRequest(name: "Sample.docx", index: 1);
        _ = try api.getTableProperties(request: request);
    }

    func testGetTablePropertiesOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTablePropertiesOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 1);
        _ = try api.getTablePropertiesOnline(request: request);
    }

    func testGetTableRow() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTableRowRequest(name: "Sample.docx", tablePath: "tables/1", index: 0);
        _ = try api.getTableRow(request: request);
    }

    func testGetTableRowFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTableRowFormatRequest(name: "Sample.docx", tablePath: "sections/0/tables/2", index: 0);
        _ = try api.getTableRowFormat(request: request);
    }

    func testGetTableRowFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTableRowFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tablePath: "sections/0/tables/2", index: 0);
        _ = try api.getTableRowFormatOnline(request: request);
    }

    func testGetTableRowOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTableRowOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tablePath: "tables/1", index: 0);
        _ = try api.getTableRowOnline(request: request);
    }

    func testGetTables() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTablesRequest(name: "Sample.docx");
        _ = try api.getTables(request: request);
    }

    func testGetTablesOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let request = GetTablesOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.getTablesOnline(request: request);
    }

    func testInsertComment() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCommentRangeStartNode = NodeLink();
        requestCommentRangeStartNode.setNodeId(nodeId: "0.3.0.3");
        let requestCommentRangeStart = DocumentPosition();
        requestCommentRangeStart.setNode(node: requestCommentRangeStartNode);
        requestCommentRangeStart.setOffset(offset: 0);
        let requestCommentRangeEndNode = NodeLink();
        requestCommentRangeEndNode.setNodeId(nodeId: "0.3.0.3");
        let requestCommentRangeEnd = DocumentPosition();
        requestCommentRangeEnd.setNode(node: requestCommentRangeEndNode);
        requestCommentRangeEnd.setOffset(offset: 0);
        let requestComment = CommentInsert();
        requestComment.setRangeStart(rangeStart: requestCommentRangeStart);
        requestComment.setRangeEnd(rangeEnd: requestCommentRangeEnd);
        requestComment.setInitial(initial: "IA");
        requestComment.setAuthor(author: "Imran Anwar");
        requestComment.setText(text: "A new Comment");
        let insertRequest = InsertCommentRequest(name: "Sample.docx", comment: requestComment);
        _ = try api.insertComment(request: insertRequest);
    }

    func testInsertCommentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCommentRangeStartNode = NodeLink();
        requestCommentRangeStartNode.setNodeId(nodeId: "0.3.0.3");
        let requestCommentRangeStart = DocumentPosition();
        requestCommentRangeStart.setNode(node: requestCommentRangeStartNode);
        requestCommentRangeStart.setOffset(offset: 0);
        let requestCommentRangeEndNode = NodeLink();
        requestCommentRangeEndNode.setNodeId(nodeId: "0.3.0.3");
        let requestCommentRangeEnd = DocumentPosition();
        requestCommentRangeEnd.setNode(node: requestCommentRangeEndNode);
        requestCommentRangeEnd.setOffset(offset: 0);
        let requestComment = CommentInsert();
        requestComment.setRangeStart(rangeStart: requestCommentRangeStart);
        requestComment.setRangeEnd(rangeEnd: requestCommentRangeEnd);
        requestComment.setInitial(initial: "IA");
        requestComment.setAuthor(author: "Imran Anwar");
        requestComment.setText(text: "A new Comment");
        let insertRequest = InsertCommentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, comment: requestComment);
        _ = try api.insertCommentOnline(request: insertRequest);
    }

    func testInsertCustomXmlPart() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCustomXmlPart = CustomXmlPartInsert();
        requestCustomXmlPart.setId(id: "hello");
        requestCustomXmlPart.setData(data: "<data>Hello world</data>");
        let insertRequest = InsertCustomXmlPartRequest(name: "Sample.docx", customXmlPart: requestCustomXmlPart);
        _ = try api.insertCustomXmlPart(request: insertRequest);
    }

    func testInsertCustomXmlPartOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCustomXmlPart = CustomXmlPartInsert();
        requestCustomXmlPart.setId(id: "hello");
        requestCustomXmlPart.setData(data: "<data>Hello world</data>");
        let insertRequest = InsertCustomXmlPartOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, customXmlPart: requestCustomXmlPart);
        _ = try api.insertCustomXmlPartOnline(request: insertRequest);
    }

    func testInsertDrawingObject() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDrawingObject = DrawingObjectInsert();
        requestDrawingObject.setHeight(height: 0);
        requestDrawingObject.setLeft(_left: 0);
        requestDrawingObject.setTop(top: 0);
        requestDrawingObject.setWidth(width: 0);
        requestDrawingObject.setRelativeHorizontalPosition(relativeHorizontalPosition: DrawingObjectInsert.RelativeHorizontalPosition.margin);
        requestDrawingObject.setRelativeVerticalPosition(relativeVerticalPosition: DrawingObjectInsert.RelativeVerticalPosition.margin);
        requestDrawingObject.setWrapType(wrapType: DrawingObjectInsert.WrapType.inline);
        let insertRequest = InsertDrawingObjectRequest(name: "Sample.docx", drawingObject: requestDrawingObject, imageFile: InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!);
        _ = try api.insertDrawingObject(request: insertRequest);
    }

    func testInsertDrawingObjectOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDrawingObject = DrawingObjectInsert();
        requestDrawingObject.setHeight(height: 0);
        requestDrawingObject.setLeft(_left: 0);
        requestDrawingObject.setTop(top: 0);
        requestDrawingObject.setWidth(width: 0);
        requestDrawingObject.setRelativeHorizontalPosition(relativeHorizontalPosition: DrawingObjectInsert.RelativeHorizontalPosition.margin);
        requestDrawingObject.setRelativeVerticalPosition(relativeVerticalPosition: DrawingObjectInsert.RelativeVerticalPosition.margin);
        requestDrawingObject.setWrapType(wrapType: DrawingObjectInsert.WrapType.inline);
        let insertRequest = InsertDrawingObjectOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, drawingObject: requestDrawingObject, imageFile: InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!);
        _ = try api.insertDrawingObjectOnline(request: insertRequest);
    }

    func testInsertField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestField = FieldInsert();
        requestField.setFieldCode(fieldCode: "{ NUMPAGES }");
        let insertRequest = InsertFieldRequest(name: "Sample.docx", field: requestField);
        _ = try api.insertField(request: insertRequest);
    }

    func testInsertFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestField = FieldInsert();
        requestField.setFieldCode(fieldCode: "{ NUMPAGES }");
        let insertRequest = InsertFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, field: requestField, nodePath: "sections/0/paragraphs/0");
        _ = try api.insertFieldOnline(request: insertRequest);
    }

    func testInsertFootnote() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFootnoteDto = FootnoteInsert();
        requestFootnoteDto.setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote);
        requestFootnoteDto.setText(text: "test endnote");
        let insertRequest = InsertFootnoteRequest(name: "Sample.docx", footnoteDto: requestFootnoteDto);
        _ = try api.insertFootnote(request: insertRequest);
    }

    func testInsertFootnoteOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFootnoteDto = FootnoteInsert();
        requestFootnoteDto.setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote);
        requestFootnoteDto.setText(text: "test endnote");
        let insertRequest = InsertFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, footnoteDto: requestFootnoteDto);
        _ = try api.insertFootnoteOnline(request: insertRequest);
    }

    func testInsertFormField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let requestFormField = FormFieldTextInput();
        requestFormField.setName(name: "FullName");
        requestFormField.setEnabled(enabled: true);
        requestFormField.setCalculateOnExit(calculateOnExit: true);
        requestFormField.setStatusText(statusText: "");
        requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
        requestFormField.setTextInputDefault(textInputDefault: "123");
        requestFormField.setTextInputFormat(textInputFormat: "UPPERCASE");
        let insertRequest = InsertFormFieldRequest(name: remoteFileName, formField: requestFormField, destFileName: remoteFileName);
        _ = try api.insertFormField(request: insertRequest);
    }

    func testInsertFormFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFormField = FormFieldTextInput();
        requestFormField.setName(name: "FullName");
        requestFormField.setEnabled(enabled: true);
        requestFormField.setCalculateOnExit(calculateOnExit: true);
        requestFormField.setStatusText(statusText: "");
        requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
        requestFormField.setTextInputDefault(textInputDefault: "123");
        requestFormField.setTextInputFormat(textInputFormat: "UPPERCASE");
        let insertRequest = InsertFormFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, formField: requestFormField, nodePath: "sections/0/paragraphs/0");
        _ = try api.insertFormFieldOnline(request: insertRequest);
    }

    func testInsertHeaderFooter() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let insertRequest = InsertHeaderFooterRequest(name: "Sample.docx", sectionPath: "", headerFooterType: "FooterEven");
        _ = try api.insertHeaderFooter(request: insertRequest);
    }

    func testInsertHeaderFooterOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let insertRequest = InsertHeaderFooterOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/HeaderFooters/HeadersFooters.doc", isDirectory: false))!, sectionPath: "", headerFooterType: "FooterEven");
        _ = try api.insertHeaderFooterOnline(request: insertRequest);
    }

    func testInsertList() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListInsert = ListInsert();
        requestListInsert.setTemplate(template: ListInsert.Template.outlineLegal);
        let insertRequest = InsertListRequest(name: "TestGetLists.doc", listInsert: requestListInsert);
        _ = try api.insertList(request: insertRequest);
    }

    func testInsertListOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListInsert = ListInsert();
        requestListInsert.setTemplate(template: ListInsert.Template.outlineLegal);
        let insertRequest = InsertListOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Lists/ListsGet.doc", isDirectory: false))!, listInsert: requestListInsert);
        _ = try api.insertListOnline(request: insertRequest);
    }

    func testInsertOrUpdateParagraphTabStop() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestTabStopInsertDto = TabStopInsert();
        requestTabStopInsertDto.setAlignment(alignment: TabStopInsert.Alignment._left);
        requestTabStopInsertDto.setLeader(leader: TabStopInsert.Leader._none);
        requestTabStopInsertDto.setPosition(position: 100.0);
        let insertRequest = InsertOrUpdateParagraphTabStopRequest(name: "Sample.docx", index: 0, tabStopInsertDto: requestTabStopInsertDto);
        _ = try api.insertOrUpdateParagraphTabStop(request: insertRequest);
    }

    func testInsertOrUpdateParagraphTabStopOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestTabStopInsertDto = TabStopInsert();
        requestTabStopInsertDto.setAlignment(alignment: TabStopInsert.Alignment._left);
        requestTabStopInsertDto.setLeader(leader: TabStopInsert.Leader._none);
        requestTabStopInsertDto.setPosition(position: 72);
        let insertRequest = InsertOrUpdateParagraphTabStopOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tabStopInsertDto: requestTabStopInsertDto, index: 0);
        _ = try api.insertOrUpdateParagraphTabStopOnline(request: insertRequest);
    }

    func testInsertPageNumbers() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let requestPageNumber = PageNumber();
        requestPageNumber.setAlignment(alignment: "center");
        requestPageNumber.setFormat(format: "{PAGE} of {NUMPAGES}");
        let insertRequest = InsertPageNumbersRequest(name: remoteFileName, pageNumber: requestPageNumber, destFileName: remoteFileName);
        _ = try api.insertPageNumbers(request: insertRequest);
    }

    func testInsertPageNumbersOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestPageNumber = PageNumber();
        requestPageNumber.setAlignment(alignment: "center");
        requestPageNumber.setFormat(format: "{PAGE} of {NUMPAGES}");
        let insertRequest = InsertPageNumbersOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Common/Sample.docx", isDirectory: false))!, pageNumber: requestPageNumber);
        _ = try api.insertPageNumbersOnline(request: insertRequest);
    }

    func testInsertParagraph() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestParagraph = ParagraphInsert();
        requestParagraph.setText(text: "This is a new paragraph for your document");
        let insertRequest = InsertParagraphRequest(name: "Sample.docx", paragraph: requestParagraph);
        _ = try api.insertParagraph(request: insertRequest);
    }

    func testInsertParagraphOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestParagraph = ParagraphInsert();
        requestParagraph.setText(text: "This is a new paragraph for your document");
        let insertRequest = InsertParagraphOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, paragraph: requestParagraph, nodePath: "sections/0");
        _ = try api.insertParagraphOnline(request: insertRequest);
    }

    func testInsertRun() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRun = RunInsert();
        requestRun.setText(text: "run with text");
        let insertRequest = InsertRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/1", run: requestRun);
        _ = try api.insertRun(request: insertRequest);
    }

    func testInsertRunOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRun = RunInsert();
        requestRun.setText(text: "run with text");
        let insertRequest = InsertRunOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Runs/Run.doc", isDirectory: false))!, paragraphPath: "paragraphs/1", run: requestRun);
        _ = try api.insertRunOnline(request: insertRequest);
    }

    func testInsertStyle() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleInsert = StyleInsert();
        requestStyleInsert.setStyleName(styleName: "My Style");
        requestStyleInsert.setStyleType(styleType: StyleInsert.StyleType.paragraph);
        let insertRequest = InsertStyleRequest(name: "Sample.docx", styleInsert: requestStyleInsert);
        _ = try api.insertStyle(request: insertRequest);
    }

    func testInsertStyleOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleInsert = StyleInsert();
        requestStyleInsert.setStyleName(styleName: "My Style");
        requestStyleInsert.setStyleType(styleType: StyleInsert.StyleType.paragraph);
        let insertRequest = InsertStyleOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styleInsert: requestStyleInsert);
        _ = try api.insertStyleOnline(request: insertRequest);
    }

    func testInsertTable() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestTable = TableInsert();
        requestTable.setColumnsCount(columnsCount: 5);
        requestTable.setRowsCount(rowsCount: 4);
        let insertRequest = InsertTableRequest(name: "Sample.docx", table: requestTable);
        _ = try api.insertTable(request: insertRequest);
    }

    func testInsertTableCell() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCell = TableCellInsert();

        let insertRequest = InsertTableCellRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", cell: requestCell);
        _ = try api.insertTableCell(request: insertRequest);
    }

    func testInsertTableCellOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCell = TableCellInsert();

        let insertRequest = InsertTableCellOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", cell: requestCell);
        _ = try api.insertTableCellOnline(request: insertRequest);
    }

    func testInsertTableOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestTable = TableInsert();
        requestTable.setColumnsCount(columnsCount: 5);
        requestTable.setRowsCount(rowsCount: 4);
        let insertRequest = InsertTableOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, table: requestTable);
        _ = try api.insertTableOnline(request: insertRequest);
    }

    func testInsertTableRow() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRow = TableRowInsert();
        requestRow.setColumnsCount(columnsCount: 5);
        let insertRequest = InsertTableRowRequest(name: "Sample.docx", tablePath: "sections/0/tables/2", row: requestRow);
        _ = try api.insertTableRow(request: insertRequest);
    }

    func testInsertTableRowOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRow = TableRowInsert();
        requestRow.setColumnsCount(columnsCount: 5);
        let insertRequest = InsertTableRowOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tablePath: "sections/0/tables/2", row: requestRow);
        _ = try api.insertTableRowOnline(request: insertRequest);
    }

    func testInsertWatermarkImage() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let insertRequest = InsertWatermarkImageRequest(name: remoteFileName, imageFile: nil, destFileName: remoteFileName, image: "Sample.png");
        _ = try api.insertWatermarkImage(request: insertRequest);
    }

    func testInsertWatermarkImageOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let insertRequest = InsertWatermarkImageOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, imageFile: InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!);
        _ = try api.insertWatermarkImageOnline(request: insertRequest);
    }

    func testInsertWatermarkText() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let requestWatermarkText = WatermarkText();
        requestWatermarkText.setText(text: "This is the text");
        requestWatermarkText.setRotationAngle(rotationAngle: 90.0);
        let insertRequest = InsertWatermarkTextRequest(name: remoteFileName, watermarkText: requestWatermarkText, destFileName: remoteFileName);
        _ = try api.insertWatermarkText(request: insertRequest);
    }

    func testInsertWatermarkTextOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestWatermarkText = WatermarkText();
        requestWatermarkText.setText(text: "This is the text");
        requestWatermarkText.setRotationAngle(rotationAngle: 90);
        let insertRequest = InsertWatermarkTextOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, watermarkText: requestWatermarkText);
        _ = try api.insertWatermarkTextOnline(request: insertRequest);
    }

    func testLoadWebDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDataSaveOptions = SaveOptionsData();
        requestDataSaveOptions.setFileName(fileName: "google.doc");
        requestDataSaveOptions.setSaveFormat(saveFormat: "doc");
        requestDataSaveOptions.setDmlEffectsRenderingMode(dmlEffectsRenderingMode: "1");
        requestDataSaveOptions.setDmlRenderingMode(dmlRenderingMode: "1");
        requestDataSaveOptions.setUpdateSdtContent(updateSdtContent: false);
        requestDataSaveOptions.setZipOutput(zipOutput: false);
        let requestData = LoadWebDocumentData();
        requestData.setLoadingDocumentUrl(loadingDocumentUrl: "http://google.com");
        requestData.setSaveOptions(saveOptions: requestDataSaveOptions);
        let loadRequest = LoadWebDocumentRequest(data: requestData);
        _ = try api.loadWebDocument(request: loadRequest);
    }

    func testMoveFile() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let moveRequest = MoveFileRequest(destPath: "/TestMoveFileDest_Sample.docx", srcPath: "Sample.docx");
        _ = try api.moveFile(request: moveRequest);
    }

    func testMoveFolder() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let moveRequest = MoveFolderRequest(destPath: "/TestMoveFolderDest_Sample", srcPath: "/TestMoveFolderSrc");
        _ = try api.moveFolder(request: moveRequest);
    }

    func testOptimizeDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestOptions = OptimizationOptions();
        requestOptions.setMsWordVersion(msWordVersion: OptimizationOptions.MsWordVersion.word2002);
        let optimizeRequest = OptimizeDocumentRequest(name: "Sample.docx", options: requestOptions);
        _ = try api.optimizeDocument(request: optimizeRequest);
    }

    func testOptimizeDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestOptions = OptimizationOptions();
        requestOptions.setMsWordVersion(msWordVersion: OptimizationOptions.MsWordVersion.word2002);
        let optimizeRequest = OptimizeDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, options: requestOptions);
        _ = try api.optimizeDocumentOnline(request: optimizeRequest);
    }

    func testProtectDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let requestProtectionRequest = ProtectionRequest();
        requestProtectionRequest.setPassword(password: "123");
        requestProtectionRequest.setProtectionType(protectionType: "ReadOnly");
        let protectRequest = ProtectDocumentRequest(name: remoteFileName, protectionRequest: requestProtectionRequest, destFileName: remoteFileName);
        _ = try api.protectDocument(request: protectRequest);
    }

    func testProtectDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestProtectionRequest = ProtectionRequest();
        requestProtectionRequest.setNewPassword(newPassword: "123");
        let protectRequest = ProtectDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, protectionRequest: requestProtectionRequest);
        _ = try api.protectDocumentOnline(request: protectRequest);
    }

    func testRejectAllRevisions() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let rejectRequest = RejectAllRevisionsRequest(name: remoteFileName, destFileName: remoteFileName);
        _ = try api.rejectAllRevisions(request: rejectRequest);
    }

    func testRejectAllRevisionsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let rejectRequest = RejectAllRevisionsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.rejectAllRevisionsOnline(request: rejectRequest);
    }

    func testRemoveRange() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let removeRequest = RemoveRangeRequest(name: "Sample.docx", rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1");
        _ = try api.removeRange(request: removeRequest);
    }

    func testRemoveRangeOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let removeRequest = RemoveRangeOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Range/RangeGet.doc", isDirectory: false))!, rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1");
        _ = try api.removeRangeOnline(request: removeRequest);
    }

    func testRenderDrawingObject() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let renderRequest = RenderDrawingObjectRequest(name: "Sample.docx", format: "png", index: 0);
        _ = try api.renderDrawingObject(request: renderRequest);
    }

    func testRenderDrawingObjectOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let renderRequest = RenderDrawingObjectOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, format: "png", index: 0, nodePath: "sections/0");
        _ = try api.renderDrawingObjectOnline(request: renderRequest);
    }

    func testRenderMathObject() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let renderRequest = RenderMathObjectRequest(name: "Sample.docx", format: "png", index: 0);
        _ = try api.renderMathObject(request: renderRequest);
    }

    func testRenderMathObjectOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let renderRequest = RenderMathObjectOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, format: "png", index: 0);
        _ = try api.renderMathObjectOnline(request: renderRequest);
    }

    func testRenderPage() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let renderRequest = RenderPageRequest(name: "Sample.docx", pageIndex: 1, format: "bmp");
        _ = try api.renderPage(request: renderRequest);
    }

    func testRenderPageOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let renderRequest = RenderPageOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Text/SampleWordDocument.docx", isDirectory: false))!, pageIndex: 1, format: "bmp");
        _ = try api.renderPageOnline(request: renderRequest);
    }

    func testRenderParagraph() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let renderRequest = RenderParagraphRequest(name: "Sample.docx", format: "png", index: 0);
        _ = try api.renderParagraph(request: renderRequest);
    }

    func testRenderParagraphOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let renderRequest = RenderParagraphOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, format: "png", index: 0);
        _ = try api.renderParagraphOnline(request: renderRequest);
    }

    func testRenderTable() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let renderRequest = RenderTableRequest(name: "Sample.docx", format: "png", index: 0);
        _ = try api.renderTable(request: renderRequest);
    }

    func testRenderTableOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let renderRequest = RenderTableOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, format: "png", index: 0);
        _ = try api.renderTableOnline(request: renderRequest);
    }

    func testReplaceText() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let requestReplaceText = ReplaceTextParameters();
        requestReplaceText.setOldValue(oldValue: "Testing");
        requestReplaceText.setNewValue(newValue: "Aspose testing");
        let replaceRequest = ReplaceTextRequest(name: remoteFileName, replaceText: requestReplaceText, destFileName: remoteFileName);
        _ = try api.replaceText(request: replaceRequest);
    }

    func testReplaceTextOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestReplaceText = ReplaceTextParameters();
        requestReplaceText.setOldValue(oldValue: "aspose");
        requestReplaceText.setNewValue(newValue: "aspose new");
        let replaceRequest = ReplaceTextOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, replaceText: requestReplaceText);
        _ = try api.replaceTextOnline(request: replaceRequest);
    }

    func testReplaceWithText() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRangeText = ReplaceRange();
        requestRangeText.setText(text: "Replaced header");
        let replaceRequest = ReplaceWithTextRequest(name: "Sample.docx", rangeStartIdentifier: "id0.0.0", rangeText: requestRangeText, rangeEndIdentifier: "id0.0.1");
        _ = try api.replaceWithText(request: replaceRequest);
    }

    func testReplaceWithTextOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRangeText = ReplaceRange();
        requestRangeText.setText(text: "Replaced header");
        let replaceRequest = ReplaceWithTextOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Range/RangeGet.doc", isDirectory: false))!, rangeStartIdentifier: "id0.0.0", rangeText: requestRangeText, rangeEndIdentifier: "id0.0.1");
        _ = try api.replaceWithTextOnline(request: replaceRequest);
    }

    func testResetCache() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let resetRequest = ResetCacheRequest();
        _ = try api.resetCache(request: resetRequest);
    }

    func testSaveAs() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestSaveOptionsData = SaveOptionsData();
        requestSaveOptionsData.setSaveFormat(saveFormat: "docx");
        requestSaveOptionsData.setFileName(fileName: "/TestSaveAsFromPdfToDoc.docx");
        let saveRequest = SaveAsRequest(name: "Sample.docx", saveOptionsData: requestSaveOptionsData);
        _ = try api.saveAs(request: saveRequest);
    }

    func testSaveAsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestSaveOptionsData = SaveOptionsData();
        requestSaveOptionsData.setSaveFormat(saveFormat: "pdf");
        requestSaveOptionsData.setFileName(fileName: "/TestSaveAs.pdf");
        let saveRequest = SaveAsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false))!, saveOptionsData: requestSaveOptionsData);
        _ = try api.saveAsOnline(request: saveRequest);
    }

    func testSaveAsRange() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocumentParameters = RangeDocument();
        requestDocumentParameters.setDocumentName(documentName: "/NewDoc.docx");
        let saveRequest = SaveAsRangeRequest(name: "Sample.docx", rangeStartIdentifier: "id0.0.0", documentParameters: requestDocumentParameters, rangeEndIdentifier: "id0.0.1");
        _ = try api.saveAsRange(request: saveRequest);
    }

    func testSaveAsRangeOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocumentParameters = RangeDocument();
        requestDocumentParameters.setDocumentName(documentName: "/NewDoc.docx");
        let saveRequest = SaveAsRangeOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Range/RangeGet.doc", isDirectory: false))!, rangeStartIdentifier: "id0.0.0", documentParameters: requestDocumentParameters, rangeEndIdentifier: "id0.0.1");
        _ = try api.saveAsRangeOnline(request: saveRequest);
    }

    func testSaveAsTiff() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestSaveOptions = TiffSaveOptionsData();
        requestSaveOptions.setSaveFormat(saveFormat: "tiff");
        requestSaveOptions.setFileName(fileName: "/abc.tiff");
        let saveRequest = SaveAsTiffRequest(name: "Sample.docx", saveOptions: requestSaveOptions);
        _ = try api.saveAsTiff(request: saveRequest);
    }

    func testSaveAsTiffOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestSaveOptions = TiffSaveOptionsData();
        requestSaveOptions.setSaveFormat(saveFormat: "tiff");
        requestSaveOptions.setFileName(fileName: "/abc.tiff");
        let saveRequest = SaveAsTiffOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false))!, saveOptions: requestSaveOptions);
        _ = try api.saveAsTiffOnline(request: saveRequest);
    }

    func testSearch() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let searchRequest = SearchRequest(name: "Sample.docx", pattern: "aspose");
        _ = try api.search(request: searchRequest);
    }

    func testSearchOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let searchRequest = SearchOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, pattern: "aspose");
        _ = try api.searchOnline(request: searchRequest);
    }

    func testSplitDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let splitRequest = SplitDocumentRequest(name: "Sample.docx", format: "text", destFileName: "/TestSplitDocument.text", from: 1, to: 2);
        _ = try api.splitDocument(request: splitRequest);
    }

    func testSplitDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let splitRequest = SplitDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, format: "text", destFileName: "/TestSplitDocument.text", from: 1, to: 2);
        _ = try api.splitDocumentOnline(request: splitRequest);
    }

    func testUnprotectDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestProtectionRequest = ProtectionRequest();
        requestProtectionRequest.setPassword(password: "aspose");
        let unprotectRequest = UnprotectDocumentRequest(name: "Sample.docx", protectionRequest: requestProtectionRequest);
        _ = try api.unprotectDocument(request: unprotectRequest);
    }

    func testUnprotectDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestProtectionRequest = ProtectionRequest();
        requestProtectionRequest.setPassword(password: "aspose");
        let unprotectRequest = UnprotectDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, protectionRequest: requestProtectionRequest);
        _ = try api.unprotectDocumentOnline(request: unprotectRequest);
    }

    func testUpdateBookmark() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let bookmarkName = "aspose";
        let remoteFileName = "Sample.docx";

        let requestBookmarkData = BookmarkData();
        requestBookmarkData.setName(name: bookmarkName);
        requestBookmarkData.setText(text: "This will be the text for Aspose");
        let updateRequest = UpdateBookmarkRequest(name: remoteFileName, bookmarkName: bookmarkName, bookmarkData: requestBookmarkData, destFileName: remoteFileName);
        _ = try api.updateBookmark(request: updateRequest);
    }

    func testUpdateBookmarkOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let bookmarkName = "aspose";

        let requestBookmarkData = BookmarkData();
        requestBookmarkData.setName(name: bookmarkName);
        requestBookmarkData.setText(text: "This will be the text for Aspose");
        let updateRequest = UpdateBookmarkOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, bookmarkName: bookmarkName, bookmarkData: requestBookmarkData, destFileName: "Sample.docx");
        _ = try api.updateBookmarkOnline(request: updateRequest);
    }

    func testUpdateBorder() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestBorderPropertiesColor = XmlColor();
        requestBorderPropertiesColor.setWeb(web: "#AABBCC");
        let requestBorderProperties = Border();
        requestBorderProperties.setBorderType(borderType: Border.BorderType._left);
        requestBorderProperties.setColor(color: requestBorderPropertiesColor);
        requestBorderProperties.setDistanceFromText(distanceFromText: 6.0);
        requestBorderProperties.setLineStyle(lineStyle: Border.LineStyle.dashDotStroker);
        requestBorderProperties.setLineWidth(lineWidth: 2.0);
        requestBorderProperties.setShadow(shadow: true);
        let updateRequest = UpdateBorderRequest(name: "Sample.docx", borderType: "left", borderProperties: requestBorderProperties, nodePath: "tables/1/rows/0/cells/0");
        _ = try api.updateBorder(request: updateRequest);
    }

    func testUpdateBorderOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestBorderPropertiesColor = XmlColor();
        requestBorderPropertiesColor.setWeb(web: "#AABBCC");
        let requestBorderProperties = Border();
        requestBorderProperties.setBorderType(borderType: Border.BorderType._left);
        requestBorderProperties.setColor(color: requestBorderPropertiesColor);
        requestBorderProperties.setDistanceFromText(distanceFromText: 6);
        requestBorderProperties.setLineStyle(lineStyle: Border.LineStyle.dashDotStroker);
        requestBorderProperties.setLineWidth(lineWidth: 2);
        requestBorderProperties.setShadow(shadow: true);
        let updateRequest = UpdateBorderOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, borderProperties: requestBorderProperties, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
        _ = try api.updateBorderOnline(request: updateRequest);
    }

    func testUpdateComment() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCommentRangeStartNode = NodeLink();
        requestCommentRangeStartNode.setNodeId(nodeId: "0.3.0");
        let requestCommentRangeStart = DocumentPosition();
        requestCommentRangeStart.setNode(node: requestCommentRangeStartNode);
        requestCommentRangeStart.setOffset(offset: 0);
        let requestCommentRangeEndNode = NodeLink();
        requestCommentRangeEndNode.setNodeId(nodeId: "0.3.0");
        let requestCommentRangeEnd = DocumentPosition();
        requestCommentRangeEnd.setNode(node: requestCommentRangeEndNode);
        requestCommentRangeEnd.setOffset(offset: 0);
        let requestComment = CommentUpdate();
        requestComment.setRangeStart(rangeStart: requestCommentRangeStart);
        requestComment.setRangeEnd(rangeEnd: requestCommentRangeEnd);
        requestComment.setInitial(initial: "IA");
        requestComment.setAuthor(author: "Imran Anwar");
        requestComment.setText(text: "A new Comment");
        let updateRequest = UpdateCommentRequest(name: "Sample.docx", commentIndex: 0, comment: requestComment);
        _ = try api.updateComment(request: updateRequest);
    }

    func testUpdateCommentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCommentRangeStartNode = NodeLink();
        requestCommentRangeStartNode.setNodeId(nodeId: "0.3.0");
        let requestCommentRangeStart = DocumentPosition();
        requestCommentRangeStart.setNode(node: requestCommentRangeStartNode);
        requestCommentRangeStart.setOffset(offset: 0);
        let requestCommentRangeEndNode = NodeLink();
        requestCommentRangeEndNode.setNodeId(nodeId: "0.3.0");
        let requestCommentRangeEnd = DocumentPosition();
        requestCommentRangeEnd.setNode(node: requestCommentRangeEndNode);
        requestCommentRangeEnd.setOffset(offset: 0);
        let requestComment = CommentUpdate();
        requestComment.setRangeStart(rangeStart: requestCommentRangeStart);
        requestComment.setRangeEnd(rangeEnd: requestCommentRangeEnd);
        requestComment.setInitial(initial: "IA");
        requestComment.setAuthor(author: "Imran Anwar");
        requestComment.setText(text: "A new Comment");
        let updateRequest = UpdateCommentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, commentIndex: 0, comment: requestComment);
        _ = try api.updateCommentOnline(request: updateRequest);
    }

    func testUpdateCustomXmlPart() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCustomXmlPart = CustomXmlPartUpdate();
        requestCustomXmlPart.setData(data: "<data>Hello world</data>");
        let updateRequest = UpdateCustomXmlPartRequest(name: "Sample.docx", customXmlPartIndex: 0, customXmlPart: requestCustomXmlPart);
        _ = try api.updateCustomXmlPart(request: updateRequest);
    }

    func testUpdateCustomXmlPartOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCustomXmlPart = CustomXmlPartUpdate();
        requestCustomXmlPart.setData(data: "<data>Hello world</data>");
        let updateRequest = UpdateCustomXmlPartOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, customXmlPartIndex: 0, customXmlPart: requestCustomXmlPart);
        _ = try api.updateCustomXmlPartOnline(request: updateRequest);
    }

    func testUpdateDrawingObject() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDrawingObject = DrawingObjectUpdate();
        requestDrawingObject.setLeft(_left: 0);
        let updateRequest = UpdateDrawingObjectRequest(name: "Sample.docx", drawingObject: requestDrawingObject, imageFile: InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!, index: 0);
        _ = try api.updateDrawingObject(request: updateRequest);
    }

    func testUpdateDrawingObjectOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDrawingObject = DrawingObjectUpdate();
        requestDrawingObject.setLeft(_left: 0);
        let updateRequest = UpdateDrawingObjectOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, drawingObject: requestDrawingObject, imageFile: InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!, index: 0);
        _ = try api.updateDrawingObjectOnline(request: updateRequest);
    }

    func testUpdateField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestField = FieldUpdate();
        requestField.setFieldCode(fieldCode: "{ NUMPAGES }");
        let updateRequest = UpdateFieldRequest(name: "Sample.docx", index: 0, field: requestField, nodePath: "sections/0/paragraphs/0");
        _ = try api.updateField(request: updateRequest);
    }

    func testUpdateFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestField = FieldUpdate();
        requestField.setFieldCode(fieldCode: "{ NUMPAGES }");
        let updateRequest = UpdateFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, field: requestField, index: 0, nodePath: "sections/0/paragraphs/0");
        _ = try api.updateFieldOnline(request: updateRequest);
    }

    func testUpdateFields() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let updateRequest = UpdateFieldsRequest(name: "Sample.docx");
        _ = try api.updateFields(request: updateRequest);
    }

    func testUpdateFieldsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let updateRequest = UpdateFieldsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!);
        _ = try api.updateFieldsOnline(request: updateRequest);
    }

    func testUpdateFootnote() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFootnoteDto = FootnoteUpdate();
        requestFootnoteDto.setText(text: "new text is here");
        let updateRequest = UpdateFootnoteRequest(name: "Sample.docx", index: 0, footnoteDto: requestFootnoteDto);
        _ = try api.updateFootnote(request: updateRequest);
    }

    func testUpdateFootnoteOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFootnoteDto = FootnoteUpdate();
        requestFootnoteDto.setText(text: "new text is here");
        let updateRequest = UpdateFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, footnoteDto: requestFootnoteDto, index: 0);
        _ = try api.updateFootnoteOnline(request: updateRequest);
    }

    func testUpdateFormField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let requestFormField = FormFieldTextInput();
        requestFormField.setName(name: "FullName");
        requestFormField.setEnabled(enabled: true);
        requestFormField.setCalculateOnExit(calculateOnExit: true);
        requestFormField.setStatusText(statusText: "");
        requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
        requestFormField.setTextInputDefault(textInputDefault: "No name");
        let updateRequest = UpdateFormFieldRequest(name: remoteFileName, index: 0, formField: requestFormField, destFileName: remoteFileName);
        _ = try api.updateFormField(request: updateRequest);
    }

    func testUpdateFormFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFormField = FormFieldTextInput();
        requestFormField.setName(name: "FullName");
        requestFormField.setEnabled(enabled: true);
        requestFormField.setCalculateOnExit(calculateOnExit: true);
        requestFormField.setStatusText(statusText: "");
        requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
        requestFormField.setTextInputDefault(textInputDefault: "No name");
        let updateRequest = UpdateFormFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, formField: requestFormField, index: 0, nodePath: "sections/0");
        _ = try api.updateFormFieldOnline(request: updateRequest);
    }

    func testUpdateList() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListUpdate = ListUpdate();
        requestListUpdate.setIsRestartAtEachSection(isRestartAtEachSection: true);
        let updateRequest = UpdateListRequest(name: "TestGetLists.doc", listId: 1, listUpdate: requestListUpdate);
        _ = try api.updateList(request: updateRequest);
    }

    func testUpdateListLevel() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListUpdate = ListLevelUpdate();
        requestListUpdate.setAlignment(alignment: ListLevelUpdate.Alignment._right);
        let updateRequest = UpdateListLevelRequest(name: "TestGetLists.doc", listId: 1, listLevel: 1, listUpdate: requestListUpdate);
        _ = try api.updateListLevel(request: updateRequest);
    }

    func testUpdateListLevelOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListUpdate = ListLevelUpdate();
        requestListUpdate.setAlignment(alignment: ListLevelUpdate.Alignment._right);
        let updateRequest = UpdateListLevelOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Lists/ListsGet.doc", isDirectory: false))!, listId: 1, listUpdate: requestListUpdate, listLevel: 1);
        _ = try api.updateListLevelOnline(request: updateRequest);
    }

    func testUpdateListOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListUpdate = ListUpdate();
        requestListUpdate.setIsRestartAtEachSection(isRestartAtEachSection: true);
        let updateRequest = UpdateListOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Lists/ListsGet.doc", isDirectory: false))!, listId: 1, listUpdate: requestListUpdate);
        _ = try api.updateListOnline(request: updateRequest);
    }

    func testUpdateParagraphFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestParagraphFormatDto = ParagraphFormatUpdate();
        requestParagraphFormatDto.setAlignment(alignment: ParagraphFormatUpdate.Alignment._right);
        let updateRequest = UpdateParagraphFormatRequest(name: "Sample.docx", index: 0, paragraphFormatDto: requestParagraphFormatDto);
        _ = try api.updateParagraphFormat(request: updateRequest);
    }

    func testUpdateParagraphFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestParagraphFormatDto = ParagraphFormatUpdate();
        requestParagraphFormatDto.setAlignment(alignment: ParagraphFormatUpdate.Alignment._right);
        let updateRequest = UpdateParagraphFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, paragraphFormatDto: requestParagraphFormatDto, index: 0);
        _ = try api.updateParagraphFormatOnline(request: updateRequest);
    }

    func testUpdateParagraphListFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListFormatDto = ListFormatUpdate();
        requestListFormatDto.setListId(listId: 2);
        let updateRequest = UpdateParagraphListFormatRequest(name: "Sample.docx", index: 0, listFormatDto: requestListFormatDto);
        _ = try api.updateParagraphListFormat(request: updateRequest);
    }

    func testUpdateParagraphListFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListFormatDto = ListFormatUpdate();
        requestListFormatDto.setListId(listId: 2);
        let updateRequest = UpdateParagraphListFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, listFormatDto: requestListFormatDto, index: 0);
        _ = try api.updateParagraphListFormatOnline(request: updateRequest);
    }

    func testUpdateRun() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRun = RunUpdate();
        requestRun.setText(text: "run with text");
        let updateRequest = UpdateRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/1", index: 0, run: requestRun);
        _ = try api.updateRun(request: updateRequest);
    }

    func testUpdateRunFont() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let requestFontDto = Font();
        requestFontDto.setBold(bold: true);
        let updateRequest = UpdateRunFontRequest(name: remoteFileName, paragraphPath: "paragraphs/0", index: 0, fontDto: requestFontDto, destFileName: remoteFileName);
        _ = try api.updateRunFont(request: updateRequest);
    }

    func testUpdateRunFontOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFontDto = Font();
        requestFontDto.setBold(bold: true);
        let updateRequest = UpdateRunFontOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, paragraphPath: "paragraphs/0", fontDto: requestFontDto, index: 0);
        _ = try api.updateRunFontOnline(request: updateRequest);
    }

    func testUpdateRunOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRun = RunUpdate();
        requestRun.setText(text: "run with text");
        let updateRequest = UpdateRunOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Runs/Run.doc", isDirectory: false))!, paragraphPath: "paragraphs/1", run: requestRun, index: 0);
        _ = try api.updateRunOnline(request: updateRequest);
    }

    func testUpdateSectionPageSetup() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestPageSetup = PageSetup();
        requestPageSetup.setRtlGutter(rtlGutter: true);
        requestPageSetup.setLeftMargin(leftMargin: 10.0);
        requestPageSetup.setOrientation(orientation: PageSetup.Orientation.landscape);
        requestPageSetup.setPaperSize(paperSize: PageSetup.PaperSize.a5);
        let updateRequest = UpdateSectionPageSetupRequest(name: "Sample.docx", sectionIndex: 0, pageSetup: requestPageSetup);
        _ = try api.updateSectionPageSetup(request: updateRequest);
    }

    func testUpdateSectionPageSetupOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestPageSetup = PageSetup();
        requestPageSetup.setRtlGutter(rtlGutter: true);
        requestPageSetup.setLeftMargin(leftMargin: 10);
        requestPageSetup.setOrientation(orientation: PageSetup.Orientation.landscape);
        requestPageSetup.setPaperSize(paperSize: PageSetup.PaperSize.a5);
        let updateRequest = UpdateSectionPageSetupOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, sectionIndex: 0, pageSetup: requestPageSetup);
        _ = try api.updateSectionPageSetupOnline(request: updateRequest);
    }

    func testUpdateStyle() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleUpdate = StyleUpdate();
        requestStyleUpdate.setName(name: "My Style");
        let updateRequest = UpdateStyleRequest(name: "Sample.docx", styleName: "Heading 1", styleUpdate: requestStyleUpdate);
        _ = try api.updateStyle(request: updateRequest);
    }

    func testUpdateStyleOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleUpdate = StyleUpdate();
        requestStyleUpdate.setName(name: "My Style");
        let updateRequest = UpdateStyleOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styleName: "Heading 1", styleUpdate: requestStyleUpdate);
        _ = try api.updateStyleOnline(request: updateRequest);
    }

    func testUpdateTableCellFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFormat = TableCellFormat();
        requestFormat.setBottomPadding(bottomPadding: 5.0);
        requestFormat.setFitText(fitText: true);
        requestFormat.setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first);
        requestFormat.setWrapText(wrapText: true);
        let updateRequest = UpdateTableCellFormatRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", index: 0, format: requestFormat);
        _ = try api.updateTableCellFormat(request: updateRequest);
    }

    func testUpdateTableCellFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFormat = TableCellFormat();
        requestFormat.setBottomPadding(bottomPadding: 5);
        requestFormat.setFitText(fitText: true);
        requestFormat.setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first);
        requestFormat.setWrapText(wrapText: true);
        let updateRequest = UpdateTableCellFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", format: requestFormat, index: 0);
        _ = try api.updateTableCellFormatOnline(request: updateRequest);
    }

    func testUpdateTableProperties() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestProperties = TableProperties();
        requestProperties.setAlignment(alignment: TableProperties.Alignment._right);
        requestProperties.setAllowAutoFit(allowAutoFit: false);
        requestProperties.setBidi(bidi: true);
        requestProperties.setBottomPadding(bottomPadding: 1.0);
        requestProperties.setCellSpacing(cellSpacing: 2.0);
        requestProperties.setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
        let updateRequest = UpdateTablePropertiesRequest(name: "Sample.docx", index: 1, properties: requestProperties);
        _ = try api.updateTableProperties(request: updateRequest);
    }

    func testUpdateTablePropertiesOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestProperties = TableProperties();
        requestProperties.setAlignment(alignment: TableProperties.Alignment._right);
        requestProperties.setAllowAutoFit(allowAutoFit: false);
        requestProperties.setBidi(bidi: true);
        requestProperties.setBottomPadding(bottomPadding: 1);
        requestProperties.setCellSpacing(cellSpacing: 2);
        requestProperties.setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
        let updateRequest = UpdateTablePropertiesOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, properties: requestProperties, index: 1);
        _ = try api.updateTablePropertiesOnline(request: updateRequest);
    }

    func testUpdateTableRowFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFormat = TableRowFormat();
        requestFormat.setAllowBreakAcrossPages(allowBreakAcrossPages: true);
        requestFormat.setHeadingFormat(headingFormat: true);
        requestFormat.setHeight(height: 10.0);
        requestFormat.setHeightRule(heightRule: TableRowFormat.HeightRule.exactly);
        let updateRequest = UpdateTableRowFormatRequest(name: "Sample.docx", tablePath: "sections/0/tables/2", index: 0, format: requestFormat);
        _ = try api.updateTableRowFormat(request: updateRequest);
    }

    func testUpdateTableRowFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFormat = TableRowFormat();
        requestFormat.setAllowBreakAcrossPages(allowBreakAcrossPages: true);
        requestFormat.setHeadingFormat(headingFormat: true);
        requestFormat.setHeight(height: 10);
        requestFormat.setHeightRule(heightRule: TableRowFormat.HeightRule.auto);
        let updateRequest = UpdateTableRowFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tablePath: "sections/0/tables/2", format: requestFormat, index: 0);
        _ = try api.updateTableRowFormatOnline(request: updateRequest);
    }

    func testUploadFile() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let uploadRequest = UploadFileRequest(fileContent: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, path: "Sample.docx");
        _ = try api.uploadFile(request: uploadRequest);
    }
}