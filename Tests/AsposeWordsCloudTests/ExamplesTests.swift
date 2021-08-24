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
        let fileName  = "test_doc.docx";

        // Upload original document to cloud storage.
        let myVar1 = InputStream(url: currentDir!.appendingPathComponent(fileName, isDirectory: false))!;
        let myVar2 = fileName;
        let uploadFileRequest = UploadFileRequest(fileContent: myVar1, path: myVar2);
        _ = try api.uploadFile(request: uploadFileRequest);

        // Calls AcceptAllRevisions method for document in cloud.
        let myVar3 = fileName;
        let request = AcceptAllRevisionsRequest(name: myVar3);
        _ = try api.acceptAllRevisions(request: request);
    }

    func testAcceptAllRevisionsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let acceptRequest = AcceptAllRevisionsOnlineRequest(document: requestDocument);
        _ = try api.acceptAllRevisionsOnline(request: acceptRequest);
    }

    func testAppendDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let remoteFileName = "Sample.docx";

        let requestDocumentListDocumentEntries0 = DocumentEntry()
          .setHref(href: remoteFileName)
          .setImportFormatMode(importFormatMode: "KeepSourceFormatting");
        let requestDocumentListDocumentEntries = [
          requestDocumentListDocumentEntries0
        ];
        let requestDocumentList = DocumentEntryList()
          .setDocumentEntries(documentEntries: requestDocumentListDocumentEntries);
        let appendRequest = AppendDocumentRequest(name: remoteFileName, documentList: requestDocumentList);
        _ = try api.appendDocument(request: appendRequest);
    }

    func testAppendDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestDocumentListDocumentEntries0 = DocumentEntry()
          .setHref(href: "Sample.docx")
          .setImportFormatMode(importFormatMode: "KeepSourceFormatting");
        let requestDocumentListDocumentEntries = [
          requestDocumentListDocumentEntries0
        ];
        let requestDocumentList = DocumentEntryList()
          .setDocumentEntries(documentEntries: requestDocumentListDocumentEntries);
        let appendRequest = AppendDocumentOnlineRequest(document: requestDocument, documentList: requestDocumentList);
        _ = try api.appendDocumentOnline(request: appendRequest);
    }

    func testApplyStyleToDocumentElement() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleApply = StyleApply()
          .setStyleName(styleName: "Heading 1");
        let applyStyleRequest = ApplyStyleToDocumentElementRequest(name: "Sample.docx", styledNodePath: "paragraphs/1/paragraphFormat", styleApply: requestStyleApply);
        _ = try api.applyStyleToDocumentElement(request: applyStyleRequest);
    }

    func testApplyStyleToDocumentElementOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestStyleApply = StyleApply()
          .setStyleName(styleName: "Heading 1");
        let applyStyleRequest = ApplyStyleToDocumentElementOnlineRequest(document: requestDocument, styledNodePath: "paragraphs/1/paragraphFormat", styleApply: requestStyleApply);
        _ = try api.applyStyleToDocumentElementOnline(request: applyStyleRequest);
    }

    func testBuildReport() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestReportEngineSettingsReportBuildOptions = [
          ReportBuildOptions.allowMissingMembers,
        ReportBuildOptions.removeEmptyParagraphs
        ];
        let requestReportEngineSettings = ReportEngineSettings()
          .setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json)
          .setReportBuildOptions(reportBuildOptions: requestReportEngineSettingsReportBuildOptions);
        let buildReportRequest = BuildReportRequest(name: "Sample.docx", data: "Data.json", reportEngineSettings: requestReportEngineSettings);
        _ = try api.buildReport(request: buildReportRequest);
    }

    func testBuildReportOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestTemplate = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestReportEngineSettings = ReportEngineSettings()
          .setDataSourceName(dataSourceName: "persons")
          .setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
        let buildReportRequest = BuildReportOnlineRequest(template: requestTemplate, data: "Data.json", reportEngineSettings: requestReportEngineSettings);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let classifyRequest = ClassifyDocumentOnlineRequest(document: requestDocument, bestClassesCount: "3");
        _ = try api.classifyDocumentOnline(request: classifyRequest);
    }

    func testCompareDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCompareData = CompareData()
          .setAuthor(author: "author")
          .setComparingWithDocument(comparingWithDocument: "TestCompareDocument2.doc")
          .setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!);
        let compareRequest = CompareDocumentRequest(name: "TestCompareDocument1.doc", compareData: requestCompareData, destFileName: "/TestCompareDocumentOut.doc");
        _ = try api.compareDocument(request: compareRequest);
    }

    func testCompareDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("compareTestDoc1.doc", isDirectory: false))!;
        let requestCompareData = CompareData()
          .setAuthor(author: "author")
          .setComparingWithDocument(comparingWithDocument: "TestCompareDocument2.doc")
          .setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!);
        let requestComparingDocument = InputStream(url: currentDir!.appendingPathComponent("compareTestDoc2.doc", isDirectory: false))!;
        let compareRequest = CompareDocumentOnlineRequest(document: requestDocument, compareData: requestCompareData, comparingDocument: requestComparingDocument, destFileName: "/TestCompareDocumentOut.doc");
        _ = try api.compareDocumentOnline(request: compareRequest);
    }

    func testConvertDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let convertRequest = ConvertDocumentRequest(document: requestDocument, format: "pdf");
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
        let requestStyleCopy = StyleCopy()
          .setStyleName(styleName: "Heading 1");
        let copyRequest = CopyStyleRequest(name: "Sample.docx", styleCopy: requestStyleCopy);
        _ = try api.copyStyle(request: copyRequest);
    }

    func testCopyStyleOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestStyleCopy = StyleCopy()
          .setStyleName(styleName: "Heading 1");
        let copyRequest = CopyStyleOnlineRequest(document: requestDocument, styleCopy: requestStyleCopy);
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
        let requestProperty = DocumentPropertyCreateOrUpdate()
          .setValue(value: "Imran Anwar");
        let createRequest = CreateOrUpdateDocumentPropertyRequest(name: "Sample.docx", propertyName: "AsposeAuthor", property: requestProperty as! DocumentPropertyCreateOrUpdate);
        _ = try api.createOrUpdateDocumentProperty(request: createRequest);
    }

    func testCreateOrUpdateDocumentPropertyOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestProperty = DocumentPropertyCreateOrUpdate()
          .setValue(value: "Imran Anwar");
        let createRequest = CreateOrUpdateDocumentPropertyOnlineRequest(document: requestDocument, propertyName: "AsposeAuthor", property: requestProperty as! DocumentPropertyCreateOrUpdate);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteAllParagraphTabStopsOnlineRequest(document: requestDocument, index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteBorderOnlineRequest(document: requestDocument, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteBordersOnlineRequest(document: requestDocument, nodePath: "tables/1/rows/0/cells/0");
        _ = try api.deleteBordersOnline(request: deleteRequest);
    }

    func testDeleteComment() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteCommentRequest(name: "Sample.docx", commentIndex: 0);
        _ = try api.deleteComment(request: deleteRequest);
    }

    func testDeleteCommentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteCommentOnlineRequest(document: requestDocument, commentIndex: 0);
        _ = try api.deleteCommentOnline(request: deleteRequest);
    }

    func testDeleteComments() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteCommentsRequest(name: "Sample.docx");
        _ = try api.deleteComments(request: deleteRequest);
    }

    func testDeleteCommentsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteCommentsOnlineRequest(document: requestDocument);
        _ = try api.deleteCommentsOnline(request: deleteRequest);
    }

    func testDeleteCustomXmlPart() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteCustomXmlPartRequest(name: "Sample.docx", customXmlPartIndex: 0);
        _ = try api.deleteCustomXmlPart(request: deleteRequest);
    }

    func testDeleteCustomXmlPartOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteCustomXmlPartOnlineRequest(document: requestDocument, customXmlPartIndex: 0);
        _ = try api.deleteCustomXmlPartOnline(request: deleteRequest);
    }

    func testDeleteCustomXmlParts() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteCustomXmlPartsRequest(name: "Sample.docx");
        _ = try api.deleteCustomXmlParts(request: deleteRequest);
    }

    func testDeleteCustomXmlPartsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteCustomXmlPartsOnlineRequest(document: requestDocument);
        _ = try api.deleteCustomXmlPartsOnline(request: deleteRequest);
    }

    func testDeleteDocumentProperty() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteDocumentPropertyRequest(name: "Sample.docx", propertyName: "testProp");
        _ = try api.deleteDocumentProperty(request: deleteRequest);
    }

    func testDeleteDocumentPropertyOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteDocumentPropertyOnlineRequest(document: requestDocument, propertyName: "testProp");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteDrawingObjectOnlineRequest(document: requestDocument, index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteFieldOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0/paragraphs/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteFieldsOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let deleteRequest = DeleteFootnoteOnlineRequest(document: requestDocument, index: 0);
        _ = try api.deleteFootnoteOnline(request: deleteRequest);
    }

    func testDeleteFormField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteFormFieldRequest(name: "Sample.docx", index: 0);
        _ = try api.deleteFormField(request: deleteRequest);
    }

    func testDeleteFormFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteFormFieldOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let deleteRequest = DeleteHeaderFooterOnlineRequest(document: requestDocument, sectionPath: "", index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let deleteRequest = DeleteHeadersFootersOnlineRequest(document: requestDocument, sectionPath: "");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteMacrosOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteOfficeMathObjectOnlineRequest(document: requestDocument, index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let deleteRequest = DeleteParagraphListFormatOnlineRequest(document: requestDocument, index: 0);
        _ = try api.deleteParagraphListFormatOnline(request: deleteRequest);
    }

    func testDeleteParagraphOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteParagraphOnlineRequest(document: requestDocument, index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteParagraphTabStopOnlineRequest(document: requestDocument, position: 72.0, index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let deleteRequest = DeleteRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/1", index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteSectionOnlineRequest(document: requestDocument, sectionIndex: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteTableCellOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
        _ = try api.deleteTableCellOnline(request: deleteRequest);
    }

    func testDeleteTableOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteTableOnlineRequest(document: requestDocument, index: 1);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteTableRowOnlineRequest(document: requestDocument, tablePath: "tables/1", index: 0);
        _ = try api.deleteTableRowOnline(request: deleteRequest);
    }

    func testDeleteWatermark() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let deleteRequest = DeleteWatermarkRequest(name: "Sample.docx");
        _ = try api.deleteWatermark(request: deleteRequest);
    }

    func testDeleteWatermarkOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let deleteRequest = DeleteWatermarkOnlineRequest(document: requestDocument);
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
        let mailMergeRequest = ExecuteMailMergeRequest(name: "Sample.docx", data: "TestExecuteTemplateData.txt");
        _ = try api.executeMailMerge(request: mailMergeRequest);
    }

    func testExecuteMailMergeOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestTemplate = InputStream(url: currentDir!.appendingPathComponent("TestExecuteTemplate.doc", isDirectory: false))!;
        let requestData = InputStream(url: currentDir!.appendingPathComponent("TestExecuteTemplateData.txt", isDirectory: false))!;
        let mailMergeRequest = ExecuteMailMergeOnlineRequest(template: requestTemplate, data: requestData);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetBookmarkByNameOnlineRequest(document: requestDocument, bookmarkName: "aspose");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetBookmarksOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetBorderOnlineRequest(document: requestDocument, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetBordersOnlineRequest(document: requestDocument, nodePath: "tables/1/rows/0/cells/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetCommentOnlineRequest(document: requestDocument, commentIndex: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetCommentsOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetCustomXmlPartOnlineRequest(document: requestDocument, customXmlPartIndex: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetCustomXmlPartsOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentDrawingObjectByIndexOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentDrawingObjectImageDataOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentDrawingObjectOleDataOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentDrawingObjectsOnlineRequest(document: requestDocument, nodePath: "sections/0");
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
        let requestTemplate = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentFieldNamesOnlineRequest(template: requestTemplate, useNonMergeFields: true);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentHyperlinkByIndexOnlineRequest(document: requestDocument, hyperlinkIndex: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentHyperlinksOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentPropertiesOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentPropertyOnlineRequest(document: requestDocument, propertyName: "Author");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentProtectionOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetDocumentStatisticsOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetFieldOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0/paragraphs/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetFieldsOnlineRequest(document: requestDocument, nodePath: "sections/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let request = GetFootnoteOnlineRequest(document: requestDocument, index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let request = GetFootnotesOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetFormFieldOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetFormFieldsOnlineRequest(document: requestDocument, nodePath: "sections/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let request = GetHeaderFooterOfSectionOnlineRequest(document: requestDocument, headerFooterIndex: 0, sectionIndex: 0);
        _ = try api.getHeaderFooterOfSectionOnline(request: request);
    }

    func testGetHeaderFooterOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let request = GetHeaderFooterOnlineRequest(document: requestDocument, headerFooterIndex: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let request = GetHeaderFootersOnlineRequest(document: requestDocument, sectionPath: "");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let request = GetListOnlineRequest(document: requestDocument, listId: 1);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let request = GetListsOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetOfficeMathObjectOnlineRequest(document: requestDocument, index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetOfficeMathObjectsOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetParagraphFormatOnlineRequest(document: requestDocument, index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let request = GetParagraphListFormatOnlineRequest(document: requestDocument, index: 0);
        _ = try api.getParagraphListFormatOnline(request: request);
    }

    func testGetParagraphOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetParagraphOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetParagraphsOnlineRequest(document: requestDocument, nodePath: "sections/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetParagraphTabStopsOnlineRequest(document: requestDocument, index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let request = GetRangeTextOnlineRequest(document: requestDocument, rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetRunFontOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/0", index: 0);
        _ = try api.getRunFontOnline(request: request);
    }

    func testGetRunOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/0", index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetRunsOnlineRequest(document: requestDocument, paragraphPath: "sections/0/paragraphs/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetSectionOnlineRequest(document: requestDocument, sectionIndex: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetSectionPageSetupOnlineRequest(document: requestDocument, sectionIndex: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetSectionsOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetStyleFromDocumentElementOnlineRequest(document: requestDocument, styledNodePath: "paragraphs/1/paragraphFormat");
        _ = try api.getStyleFromDocumentElementOnline(request: request);
    }

    func testGetStyleOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetStyleOnlineRequest(document: requestDocument, styleName: "Heading 1");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetStylesOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetTableCellFormatOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
        _ = try api.getTableCellFormatOnline(request: request);
    }

    func testGetTableCellOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetTableCellOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
        _ = try api.getTableCellOnline(request: request);
    }

    func testGetTableOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetTableOnlineRequest(document: requestDocument, index: 1);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetTablePropertiesOnlineRequest(document: requestDocument, index: 1);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetTableRowFormatOnlineRequest(document: requestDocument, tablePath: "sections/0/tables/2", index: 0);
        _ = try api.getTableRowFormatOnline(request: request);
    }

    func testGetTableRowOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetTableRowOnlineRequest(document: requestDocument, tablePath: "tables/1", index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let request = GetTablesOnlineRequest(document: requestDocument);
        _ = try api.getTablesOnline(request: request);
    }

    func testInsertComment() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCommentRangeStartNode = NodeLink()
          .setNodeId(nodeId: "0.3.0.3");
        let requestCommentRangeStart = DocumentPosition()
          .setNode(node: requestCommentRangeStartNode)
          .setOffset(offset: 0);
        let requestCommentRangeEndNode = NodeLink()
          .setNodeId(nodeId: "0.3.0.3");
        let requestCommentRangeEnd = DocumentPosition()
          .setNode(node: requestCommentRangeEndNode)
          .setOffset(offset: 0);
        let requestComment = CommentInsert()
          .setAuthor(author: "Imran Anwar")
          .setInitial(initial: "IA")
          .setRangeEnd(rangeEnd: requestCommentRangeEnd)
          .setRangeStart(rangeStart: requestCommentRangeStart)
          .setText(text: "A new Comment");
        let insertRequest = InsertCommentRequest(name: "Sample.docx", comment: requestComment as! CommentInsert);
        _ = try api.insertComment(request: insertRequest);
    }

    func testInsertCommentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestCommentRangeStartNode = NodeLink()
          .setNodeId(nodeId: "0.3.0.3");
        let requestCommentRangeStart = DocumentPosition()
          .setNode(node: requestCommentRangeStartNode)
          .setOffset(offset: 0);
        let requestCommentRangeEndNode = NodeLink()
          .setNodeId(nodeId: "0.3.0.3");
        let requestCommentRangeEnd = DocumentPosition()
          .setNode(node: requestCommentRangeEndNode)
          .setOffset(offset: 0);
        let requestComment = CommentInsert()
          .setAuthor(author: "Imran Anwar")
          .setInitial(initial: "IA")
          .setRangeEnd(rangeEnd: requestCommentRangeEnd)
          .setRangeStart(rangeStart: requestCommentRangeStart)
          .setText(text: "A new Comment");
        let insertRequest = InsertCommentOnlineRequest(document: requestDocument, comment: requestComment as! CommentInsert);
        _ = try api.insertCommentOnline(request: insertRequest);
    }

    func testInsertCustomXmlPart() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCustomXmlPart = CustomXmlPartInsert()
          .setData(data: "<data>Hello world</data>")
          .setId(id: "hello");
        let insertRequest = InsertCustomXmlPartRequest(name: "Sample.docx", customXmlPart: requestCustomXmlPart as! CustomXmlPartInsert);
        _ = try api.insertCustomXmlPart(request: insertRequest);
    }

    func testInsertCustomXmlPartOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestCustomXmlPart = CustomXmlPartInsert()
          .setData(data: "<data>Hello world</data>")
          .setId(id: "hello");
        let insertRequest = InsertCustomXmlPartOnlineRequest(document: requestDocument, customXmlPart: requestCustomXmlPart as! CustomXmlPartInsert);
        _ = try api.insertCustomXmlPartOnline(request: insertRequest);
    }

    func testInsertDrawingObject() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDrawingObject = DrawingObjectInsert()
          .setHeight(height: 0)
          .setLeft(_left: 0)
          .setRelativeHorizontalPosition(relativeHorizontalPosition: DrawingObjectInsert.RelativeHorizontalPosition.margin)
          .setRelativeVerticalPosition(relativeVerticalPosition: DrawingObjectInsert.RelativeVerticalPosition.margin)
          .setTop(top: 0)
          .setWidth(width: 0)
          .setWrapType(wrapType: DrawingObjectInsert.WrapType.inline);
        let requestImageFile = InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!;
        let insertRequest = InsertDrawingObjectRequest(name: "Sample.docx", drawingObject: requestDrawingObject, imageFile: requestImageFile);
        _ = try api.insertDrawingObject(request: insertRequest);
    }

    func testInsertDrawingObjectOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestDrawingObject = DrawingObjectInsert()
          .setHeight(height: 0)
          .setLeft(_left: 0)
          .setRelativeHorizontalPosition(relativeHorizontalPosition: DrawingObjectInsert.RelativeHorizontalPosition.margin)
          .setRelativeVerticalPosition(relativeVerticalPosition: DrawingObjectInsert.RelativeVerticalPosition.margin)
          .setTop(top: 0)
          .setWidth(width: 0)
          .setWrapType(wrapType: DrawingObjectInsert.WrapType.inline);
        let requestImageFile = InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!;
        let insertRequest = InsertDrawingObjectOnlineRequest(document: requestDocument, drawingObject: requestDrawingObject, imageFile: requestImageFile);
        _ = try api.insertDrawingObjectOnline(request: insertRequest);
    }

    func testInsertField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestField = FieldInsert()
          .setFieldCode(fieldCode: "{ NUMPAGES }");
        let insertRequest = InsertFieldRequest(name: "Sample.docx", field: requestField as! FieldInsert);
        _ = try api.insertField(request: insertRequest);
    }

    func testInsertFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestField = FieldInsert()
          .setFieldCode(fieldCode: "{ NUMPAGES }");
        let insertRequest = InsertFieldOnlineRequest(document: requestDocument, field: requestField as! FieldInsert, nodePath: "sections/0/paragraphs/0");
        _ = try api.insertFieldOnline(request: insertRequest);
    }

    func testInsertFootnote() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFootnoteDto = FootnoteInsert()
          .setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote)
          .setText(text: "test endnote");
        let insertRequest = InsertFootnoteRequest(name: "Sample.docx", footnoteDto: requestFootnoteDto as! FootnoteInsert);
        _ = try api.insertFootnote(request: insertRequest);
    }

    func testInsertFootnoteOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let requestFootnoteDto = FootnoteInsert()
          .setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote)
          .setText(text: "test endnote");
        let insertRequest = InsertFootnoteOnlineRequest(document: requestDocument, footnoteDto: requestFootnoteDto as! FootnoteInsert);
        _ = try api.insertFootnoteOnline(request: insertRequest);
    }

    func testInsertFormField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFormField = FormFieldTextInput()
          .setTextInputDefault(textInputDefault: "123")
          .setTextInputFormat(textInputFormat: "UPPERCASE")
          .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
          .setCalculateOnExit(calculateOnExit: true)
          .setEnabled(enabled: true)
          .setName(name: "FullName")
          .setStatusText(statusText: "");
        let insertRequest = InsertFormFieldRequest(name: "Sample.docx", formField: requestFormField as! FormFieldTextInput);
        _ = try api.insertFormField(request: insertRequest);
    }

    func testInsertFormFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestFormField = FormFieldTextInput()
          .setTextInputDefault(textInputDefault: "123")
          .setTextInputFormat(textInputFormat: "UPPERCASE")
          .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
          .setCalculateOnExit(calculateOnExit: true)
          .setEnabled(enabled: true)
          .setName(name: "FullName")
          .setStatusText(statusText: "");
        let insertRequest = InsertFormFieldOnlineRequest(document: requestDocument, formField: requestFormField as! FormFieldTextInput, nodePath: "sections/0/paragraphs/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let insertRequest = InsertHeaderFooterOnlineRequest(document: requestDocument, sectionPath: "", headerFooterType: "FooterEven");
        _ = try api.insertHeaderFooterOnline(request: insertRequest);
    }

    func testInsertList() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListInsert = ListInsert()
          .setTemplate(template: ListInsert.Template.outlineLegal);
        let insertRequest = InsertListRequest(name: "TestGetLists.doc", listInsert: requestListInsert);
        _ = try api.insertList(request: insertRequest);
    }

    func testInsertListOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let requestListInsert = ListInsert()
          .setTemplate(template: ListInsert.Template.outlineLegal);
        let insertRequest = InsertListOnlineRequest(document: requestDocument, listInsert: requestListInsert);
        _ = try api.insertListOnline(request: insertRequest);
    }

    func testInsertOrUpdateParagraphTabStop() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestTabStopInsertDto = TabStopInsert()
          .setAlignment(alignment: TabStopInsert.Alignment._left)
          .setLeader(leader: TabStopInsert.Leader._none)
          .setPosition(position: 100.0);
        let insertRequest = InsertOrUpdateParagraphTabStopRequest(name: "Sample.docx", index: 0, tabStopInsertDto: requestTabStopInsertDto as! TabStopInsert);
        _ = try api.insertOrUpdateParagraphTabStop(request: insertRequest);
    }

    func testInsertOrUpdateParagraphTabStopOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestTabStopInsertDto = TabStopInsert()
          .setAlignment(alignment: TabStopInsert.Alignment._left)
          .setLeader(leader: TabStopInsert.Leader._none)
          .setPosition(position: 72);
        let insertRequest = InsertOrUpdateParagraphTabStopOnlineRequest(document: requestDocument, tabStopInsertDto: requestTabStopInsertDto as! TabStopInsert, index: 0);
        _ = try api.insertOrUpdateParagraphTabStopOnline(request: insertRequest);
    }

    func testInsertPageNumbers() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestPageNumber = PageNumber()
          .setAlignment(alignment: "center")
          .setFormat(format: "{PAGE} of {NUMPAGES}");
        let insertRequest = InsertPageNumbersRequest(name: "Sample.docx", pageNumber: requestPageNumber);
        _ = try api.insertPageNumbers(request: insertRequest);
    }

    func testInsertPageNumbersOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Common/Sample.docx", isDirectory: false))!;
        let requestPageNumber = PageNumber()
          .setAlignment(alignment: "center")
          .setFormat(format: "{PAGE} of {NUMPAGES}");
        let insertRequest = InsertPageNumbersOnlineRequest(document: requestDocument, pageNumber: requestPageNumber);
        _ = try api.insertPageNumbersOnline(request: insertRequest);
    }

    func testInsertParagraph() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestParagraph = ParagraphInsert()
          .setText(text: "This is a new paragraph for your document");
        let insertRequest = InsertParagraphRequest(name: "Sample.docx", paragraph: requestParagraph);
        _ = try api.insertParagraph(request: insertRequest);
    }

    func testInsertParagraphOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestParagraph = ParagraphInsert()
          .setText(text: "This is a new paragraph for your document");
        let insertRequest = InsertParagraphOnlineRequest(document: requestDocument, paragraph: requestParagraph, nodePath: "sections/0");
        _ = try api.insertParagraphOnline(request: insertRequest);
    }

    func testInsertRun() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRun = RunInsert()
          .setText(text: "run with text");
        let insertRequest = InsertRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/1", run: requestRun as! RunInsert);
        _ = try api.insertRun(request: insertRequest);
    }

    func testInsertRunOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let requestRun = RunInsert()
          .setText(text: "run with text");
        let insertRequest = InsertRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/1", run: requestRun as! RunInsert);
        _ = try api.insertRunOnline(request: insertRequest);
    }

    func testInsertStyle() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleInsert = StyleInsert()
          .setStyleName(styleName: "My Style")
          .setStyleType(styleType: StyleInsert.StyleType.paragraph);
        let insertRequest = InsertStyleRequest(name: "Sample.docx", styleInsert: requestStyleInsert);
        _ = try api.insertStyle(request: insertRequest);
    }

    func testInsertStyleOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestStyleInsert = StyleInsert()
          .setStyleName(styleName: "My Style")
          .setStyleType(styleType: StyleInsert.StyleType.paragraph);
        let insertRequest = InsertStyleOnlineRequest(document: requestDocument, styleInsert: requestStyleInsert);
        _ = try api.insertStyleOnline(request: insertRequest);
    }

    func testInsertTable() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestTable = TableInsert()
          .setColumnsCount(columnsCount: 5)
          .setRowsCount(rowsCount: 4);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestCell = TableCellInsert();
        let insertRequest = InsertTableCellOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", cell: requestCell);
        _ = try api.insertTableCellOnline(request: insertRequest);
    }

    func testInsertTableOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestTable = TableInsert()
          .setColumnsCount(columnsCount: 5)
          .setRowsCount(rowsCount: 4);
        let insertRequest = InsertTableOnlineRequest(document: requestDocument, table: requestTable);
        _ = try api.insertTableOnline(request: insertRequest);
    }

    func testInsertTableRow() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRow = TableRowInsert()
          .setColumnsCount(columnsCount: 5);
        let insertRequest = InsertTableRowRequest(name: "Sample.docx", tablePath: "sections/0/tables/2", row: requestRow);
        _ = try api.insertTableRow(request: insertRequest);
    }

    func testInsertTableRowOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestRow = TableRowInsert()
          .setColumnsCount(columnsCount: 5);
        let insertRequest = InsertTableRowOnlineRequest(document: requestDocument, tablePath: "sections/0/tables/2", row: requestRow);
        _ = try api.insertTableRowOnline(request: insertRequest);
    }

    func testInsertWatermarkImage() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let insertRequest = InsertWatermarkImageRequest(name: "Sample.docx", imageFile: nil, image: "Sample.png");
        _ = try api.insertWatermarkImage(request: insertRequest);
    }

    func testInsertWatermarkImageOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestImageFile = InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!;
        let insertRequest = InsertWatermarkImageOnlineRequest(document: requestDocument, imageFile: requestImageFile);
        _ = try api.insertWatermarkImageOnline(request: insertRequest);
    }

    func testInsertWatermarkText() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestWatermarkText = WatermarkText()
          .setRotationAngle(rotationAngle: 90.0)
          .setText(text: "This is the text");
        let insertRequest = InsertWatermarkTextRequest(name: "Sample.docx", watermarkText: requestWatermarkText);
        _ = try api.insertWatermarkText(request: insertRequest);
    }

    func testInsertWatermarkTextOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestWatermarkText = WatermarkText()
          .setRotationAngle(rotationAngle: 90)
          .setText(text: "This is the text");
        let insertRequest = InsertWatermarkTextOnlineRequest(document: requestDocument, watermarkText: requestWatermarkText);
        _ = try api.insertWatermarkTextOnline(request: insertRequest);
    }

    func testLoadWebDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDataSaveOptions = SaveOptionsData()
          .setDmlEffectsRenderingMode(dmlEffectsRenderingMode: "1")
          .setDmlRenderingMode(dmlRenderingMode: "1")
          .setFileName(fileName: "google.doc")
          .setSaveFormat(saveFormat: "doc")
          .setUpdateSdtContent(updateSdtContent: false)
          .setZipOutput(zipOutput: false);
        let requestData = LoadWebDocumentData()
          .setLoadingDocumentUrl(loadingDocumentUrl: "http://google.com")
          .setSaveOptions(saveOptions: requestDataSaveOptions);
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
        let requestOptions = OptimizationOptions()
          .setMsWordVersion(msWordVersion: OptimizationOptions.MsWordVersion.word2002);
        let optimizeRequest = OptimizeDocumentRequest(name: "Sample.docx", options: requestOptions);
        _ = try api.optimizeDocument(request: optimizeRequest);
    }

    func testOptimizeDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestOptions = OptimizationOptions()
          .setMsWordVersion(msWordVersion: OptimizationOptions.MsWordVersion.word2002);
        let optimizeRequest = OptimizeDocumentOnlineRequest(document: requestDocument, options: requestOptions);
        _ = try api.optimizeDocumentOnline(request: optimizeRequest);
    }

    func testProtectDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestProtectionRequest = ProtectionRequest()
          .setPassword(password: "123")
          .setProtectionType(protectionType: "ReadOnly");
        let protectRequest = ProtectDocumentRequest(name: "Sample.docx", protectionRequest: requestProtectionRequest);
        _ = try api.protectDocument(request: protectRequest);
    }

    func testProtectDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestProtectionRequest = ProtectionRequest()
          .setNewPassword(newPassword: "123");
        let protectRequest = ProtectDocumentOnlineRequest(document: requestDocument, protectionRequest: requestProtectionRequest);
        _ = try api.protectDocumentOnline(request: protectRequest);
    }

    func testRejectAllRevisions() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let rejectRequest = RejectAllRevisionsRequest(name: "Sample.docx");
        _ = try api.rejectAllRevisions(request: rejectRequest);
    }

    func testRejectAllRevisionsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let rejectRequest = RejectAllRevisionsOnlineRequest(document: requestDocument);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let removeRequest = RemoveRangeOnlineRequest(document: requestDocument, rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let renderRequest = RenderDrawingObjectOnlineRequest(document: requestDocument, format: "png", index: 0, nodePath: "sections/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let renderRequest = RenderMathObjectOnlineRequest(document: requestDocument, format: "png", index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let renderRequest = RenderPageOnlineRequest(document: requestDocument, pageIndex: 1, format: "bmp");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let renderRequest = RenderParagraphOnlineRequest(document: requestDocument, format: "png", index: 0);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let renderRequest = RenderTableOnlineRequest(document: requestDocument, format: "png", index: 0);
        _ = try api.renderTableOnline(request: renderRequest);
    }

    func testReplaceText() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestReplaceText = ReplaceTextParameters()
          .setNewValue(newValue: "Aspose testing")
          .setOldValue(oldValue: "Testing");
        let replaceRequest = ReplaceTextRequest(name: "Sample.docx", replaceText: requestReplaceText);
        _ = try api.replaceText(request: replaceRequest);
    }

    func testReplaceTextOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestReplaceText = ReplaceTextParameters()
          .setNewValue(newValue: "aspose new")
          .setOldValue(oldValue: "aspose");
        let replaceRequest = ReplaceTextOnlineRequest(document: requestDocument, replaceText: requestReplaceText);
        _ = try api.replaceTextOnline(request: replaceRequest);
    }

    func testReplaceWithText() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRangeText = ReplaceRange()
          .setText(text: "Replaced header");
        let replaceRequest = ReplaceWithTextRequest(name: "Sample.docx", rangeStartIdentifier: "id0.0.0", rangeText: requestRangeText, rangeEndIdentifier: "id0.0.1");
        _ = try api.replaceWithText(request: replaceRequest);
    }

    func testReplaceWithTextOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let requestRangeText = ReplaceRange()
          .setText(text: "Replaced header");
        let replaceRequest = ReplaceWithTextOnlineRequest(document: requestDocument, rangeStartIdentifier: "id0.0.0", rangeText: requestRangeText, rangeEndIdentifier: "id0.0.1");
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
        let requestSaveOptionsData = SaveOptionsData()
          .setFileName(fileName: "/TestSaveAsFromPdfToDoc.docx")
          .setSaveFormat(saveFormat: "docx");
        let saveRequest = SaveAsRequest(name: "Sample.docx", saveOptionsData: requestSaveOptionsData);
        _ = try api.saveAs(request: saveRequest);
    }

    func testSaveAsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false))!;
        let requestSaveOptionsData = SaveOptionsData()
          .setFileName(fileName: "/TestSaveAs.pdf")
          .setSaveFormat(saveFormat: "pdf");
        let saveRequest = SaveAsOnlineRequest(document: requestDocument, saveOptionsData: requestSaveOptionsData);
        _ = try api.saveAsOnline(request: saveRequest);
    }

    func testSaveAsRange() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocumentParameters = RangeDocument()
          .setDocumentName(documentName: "/NewDoc.docx");
        let saveRequest = SaveAsRangeRequest(name: "Sample.docx", rangeStartIdentifier: "id0.0.0", documentParameters: requestDocumentParameters, rangeEndIdentifier: "id0.0.1");
        _ = try api.saveAsRange(request: saveRequest);
    }

    func testSaveAsRangeOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let requestDocumentParameters = RangeDocument()
          .setDocumentName(documentName: "/NewDoc.docx");
        let saveRequest = SaveAsRangeOnlineRequest(document: requestDocument, rangeStartIdentifier: "id0.0.0", documentParameters: requestDocumentParameters, rangeEndIdentifier: "id0.0.1");
        _ = try api.saveAsRangeOnline(request: saveRequest);
    }

    func testSaveAsTiff() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestSaveOptions = TiffSaveOptionsData()
          .setFileName(fileName: "/abc.tiff")
          .setSaveFormat(saveFormat: "tiff");
        let saveRequest = SaveAsTiffRequest(name: "Sample.docx", saveOptions: requestSaveOptions as! TiffSaveOptionsData);
        _ = try api.saveAsTiff(request: saveRequest);
    }

    func testSaveAsTiffOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false))!;
        let requestSaveOptions = TiffSaveOptionsData()
          .setFileName(fileName: "/abc.tiff")
          .setSaveFormat(saveFormat: "tiff");
        let saveRequest = SaveAsTiffOnlineRequest(document: requestDocument, saveOptions: requestSaveOptions as! TiffSaveOptionsData);
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let searchRequest = SearchOnlineRequest(document: requestDocument, pattern: "aspose");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let splitRequest = SplitDocumentOnlineRequest(document: requestDocument, format: "text", destFileName: "/TestSplitDocument.text", from: 1, to: 2);
        _ = try api.splitDocumentOnline(request: splitRequest);
    }

    func testUnprotectDocument() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestProtectionRequest = ProtectionRequest()
          .setPassword(password: "aspose");
        let unprotectRequest = UnprotectDocumentRequest(name: "Sample.docx", protectionRequest: requestProtectionRequest);
        _ = try api.unprotectDocument(request: unprotectRequest);
    }

    func testUnprotectDocumentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestProtectionRequest = ProtectionRequest()
          .setPassword(password: "aspose");
        let unprotectRequest = UnprotectDocumentOnlineRequest(document: requestDocument, protectionRequest: requestProtectionRequest);
        _ = try api.unprotectDocumentOnline(request: unprotectRequest);
    }

    func testUpdateBookmark() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let bookmarkName = "aspose";

        let requestBookmarkData = BookmarkData()
          .setName(name: bookmarkName)
          .setText(text: "This will be the text for Aspose");
        let updateRequest = UpdateBookmarkRequest(name: "Sample.docx", bookmarkName: bookmarkName, bookmarkData: requestBookmarkData);
        _ = try api.updateBookmark(request: updateRequest);
    }

    func testUpdateBookmarkOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let bookmarkName = "aspose";

        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestBookmarkData = BookmarkData()
          .setName(name: bookmarkName)
          .setText(text: "This will be the text for Aspose");
        let updateRequest = UpdateBookmarkOnlineRequest(document: requestDocument, bookmarkName: bookmarkName, bookmarkData: requestBookmarkData, destFileName: "Sample.docx");
        _ = try api.updateBookmarkOnline(request: updateRequest);
    }

    func testUpdateBorder() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestBorderPropertiesColor = XmlColor()
          .setWeb(web: "#AABBCC");
        let requestBorderProperties = Border()
          .setBorderType(borderType: Border.BorderType._left)
          .setColor(color: requestBorderPropertiesColor)
          .setDistanceFromText(distanceFromText: 6.0)
          .setLineStyle(lineStyle: Border.LineStyle.dashDotStroker)
          .setLineWidth(lineWidth: 2.0)
          .setShadow(shadow: true);
        let updateRequest = UpdateBorderRequest(name: "Sample.docx", borderType: "left", borderProperties: requestBorderProperties, nodePath: "tables/1/rows/0/cells/0");
        _ = try api.updateBorder(request: updateRequest);
    }

    func testUpdateBorderOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestBorderPropertiesColor = XmlColor()
          .setWeb(web: "#AABBCC");
        let requestBorderProperties = Border()
          .setBorderType(borderType: Border.BorderType._left)
          .setColor(color: requestBorderPropertiesColor)
          .setDistanceFromText(distanceFromText: 6)
          .setLineStyle(lineStyle: Border.LineStyle.dashDotStroker)
          .setLineWidth(lineWidth: 2)
          .setShadow(shadow: true);
        let updateRequest = UpdateBorderOnlineRequest(document: requestDocument, borderProperties: requestBorderProperties, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
        _ = try api.updateBorderOnline(request: updateRequest);
    }

    func testUpdateComment() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCommentRangeStartNode = NodeLink()
          .setNodeId(nodeId: "0.3.0");
        let requestCommentRangeStart = DocumentPosition()
          .setNode(node: requestCommentRangeStartNode)
          .setOffset(offset: 0);
        let requestCommentRangeEndNode = NodeLink()
          .setNodeId(nodeId: "0.3.0");
        let requestCommentRangeEnd = DocumentPosition()
          .setNode(node: requestCommentRangeEndNode)
          .setOffset(offset: 0);
        let requestComment = CommentUpdate()
          .setAuthor(author: "Imran Anwar")
          .setInitial(initial: "IA")
          .setRangeEnd(rangeEnd: requestCommentRangeEnd)
          .setRangeStart(rangeStart: requestCommentRangeStart)
          .setText(text: "A new Comment");
        let updateRequest = UpdateCommentRequest(name: "Sample.docx", commentIndex: 0, comment: requestComment as! CommentUpdate);
        _ = try api.updateComment(request: updateRequest);
    }

    func testUpdateCommentOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestCommentRangeStartNode = NodeLink()
          .setNodeId(nodeId: "0.3.0");
        let requestCommentRangeStart = DocumentPosition()
          .setNode(node: requestCommentRangeStartNode)
          .setOffset(offset: 0);
        let requestCommentRangeEndNode = NodeLink()
          .setNodeId(nodeId: "0.3.0");
        let requestCommentRangeEnd = DocumentPosition()
          .setNode(node: requestCommentRangeEndNode)
          .setOffset(offset: 0);
        let requestComment = CommentUpdate()
          .setAuthor(author: "Imran Anwar")
          .setInitial(initial: "IA")
          .setRangeEnd(rangeEnd: requestCommentRangeEnd)
          .setRangeStart(rangeStart: requestCommentRangeStart)
          .setText(text: "A new Comment");
        let updateRequest = UpdateCommentOnlineRequest(document: requestDocument, commentIndex: 0, comment: requestComment as! CommentUpdate);
        _ = try api.updateCommentOnline(request: updateRequest);
    }

    func testUpdateCustomXmlPart() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestCustomXmlPart = CustomXmlPartUpdate()
          .setData(data: "<data>Hello world</data>");
        let updateRequest = UpdateCustomXmlPartRequest(name: "Sample.docx", customXmlPartIndex: 0, customXmlPart: requestCustomXmlPart as! CustomXmlPartUpdate);
        _ = try api.updateCustomXmlPart(request: updateRequest);
    }

    func testUpdateCustomXmlPartOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestCustomXmlPart = CustomXmlPartUpdate()
          .setData(data: "<data>Hello world</data>");
        let updateRequest = UpdateCustomXmlPartOnlineRequest(document: requestDocument, customXmlPartIndex: 0, customXmlPart: requestCustomXmlPart as! CustomXmlPartUpdate);
        _ = try api.updateCustomXmlPartOnline(request: updateRequest);
    }

    func testUpdateDrawingObject() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDrawingObject = DrawingObjectUpdate()
          .setLeft(_left: 0);
        let requestImageFile = InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!;
        let updateRequest = UpdateDrawingObjectRequest(name: "Sample.docx", drawingObject: requestDrawingObject, imageFile: requestImageFile, index: 0);
        _ = try api.updateDrawingObject(request: updateRequest);
    }

    func testUpdateDrawingObjectOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestDrawingObject = DrawingObjectUpdate()
          .setLeft(_left: 0);
        let requestImageFile = InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!;
        let updateRequest = UpdateDrawingObjectOnlineRequest(document: requestDocument, drawingObject: requestDrawingObject, imageFile: requestImageFile, index: 0);
        _ = try api.updateDrawingObjectOnline(request: updateRequest);
    }

    func testUpdateField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestField = FieldUpdate()
          .setFieldCode(fieldCode: "{ NUMPAGES }");
        let updateRequest = UpdateFieldRequest(name: "Sample.docx", index: 0, field: requestField as! FieldUpdate, nodePath: "sections/0/paragraphs/0");
        _ = try api.updateField(request: updateRequest);
    }

    func testUpdateFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestField = FieldUpdate()
          .setFieldCode(fieldCode: "{ NUMPAGES }");
        let updateRequest = UpdateFieldOnlineRequest(document: requestDocument, field: requestField as! FieldUpdate, index: 0, nodePath: "sections/0/paragraphs/0");
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
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let updateRequest = UpdateFieldsOnlineRequest(document: requestDocument);
        _ = try api.updateFieldsOnline(request: updateRequest);
    }

    func testUpdateFootnote() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFootnoteDto = FootnoteUpdate()
          .setText(text: "new text is here");
        let updateRequest = UpdateFootnoteRequest(name: "Sample.docx", index: 0, footnoteDto: requestFootnoteDto as! FootnoteUpdate);
        _ = try api.updateFootnote(request: updateRequest);
    }

    func testUpdateFootnoteOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let requestFootnoteDto = FootnoteUpdate()
          .setText(text: "new text is here");
        let updateRequest = UpdateFootnoteOnlineRequest(document: requestDocument, footnoteDto: requestFootnoteDto as! FootnoteUpdate, index: 0);
        _ = try api.updateFootnoteOnline(request: updateRequest);
    }

    func testUpdateFormField() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFormField = FormFieldTextInput()
          .setTextInputDefault(textInputDefault: "No name")
          .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
          .setCalculateOnExit(calculateOnExit: true)
          .setEnabled(enabled: true)
          .setName(name: "FullName")
          .setStatusText(statusText: "");
        let updateRequest = UpdateFormFieldRequest(name: "Sample.docx", index: 0, formField: requestFormField as! FormFieldTextInput);
        _ = try api.updateFormField(request: updateRequest);
    }

    func testUpdateFormFieldOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestFormField = FormFieldTextInput()
          .setTextInputDefault(textInputDefault: "No name")
          .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
          .setCalculateOnExit(calculateOnExit: true)
          .setEnabled(enabled: true)
          .setName(name: "FullName")
          .setStatusText(statusText: "");
        let updateRequest = UpdateFormFieldOnlineRequest(document: requestDocument, formField: requestFormField as! FormFieldTextInput, index: 0, nodePath: "sections/0");
        _ = try api.updateFormFieldOnline(request: updateRequest);
    }

    func testUpdateList() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListUpdate = ListUpdate()
          .setIsRestartAtEachSection(isRestartAtEachSection: true);
        let updateRequest = UpdateListRequest(name: "TestGetLists.doc", listId: 1, listUpdate: requestListUpdate);
        _ = try api.updateList(request: updateRequest);
    }

    func testUpdateListLevel() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListUpdate = ListLevelUpdate()
          .setAlignment(alignment: ListLevelUpdate.Alignment._right);
        let updateRequest = UpdateListLevelRequest(name: "TestGetLists.doc", listId: 1, listLevel: 1, listUpdate: requestListUpdate);
        _ = try api.updateListLevel(request: updateRequest);
    }

    func testUpdateListLevelOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let requestListUpdate = ListLevelUpdate()
          .setAlignment(alignment: ListLevelUpdate.Alignment._right);
        let updateRequest = UpdateListLevelOnlineRequest(document: requestDocument, listId: 1, listUpdate: requestListUpdate, listLevel: 1);
        _ = try api.updateListLevelOnline(request: updateRequest);
    }

    func testUpdateListOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let requestListUpdate = ListUpdate()
          .setIsRestartAtEachSection(isRestartAtEachSection: true);
        let updateRequest = UpdateListOnlineRequest(document: requestDocument, listId: 1, listUpdate: requestListUpdate);
        _ = try api.updateListOnline(request: updateRequest);
    }

    func testUpdateParagraphFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestParagraphFormatDto = ParagraphFormatUpdate()
          .setAlignment(alignment: ParagraphFormatUpdate.Alignment._right);
        let updateRequest = UpdateParagraphFormatRequest(name: "Sample.docx", index: 0, paragraphFormatDto: requestParagraphFormatDto as! ParagraphFormatUpdate);
        _ = try api.updateParagraphFormat(request: updateRequest);
    }

    func testUpdateParagraphFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestParagraphFormatDto = ParagraphFormatUpdate()
          .setAlignment(alignment: ParagraphFormatUpdate.Alignment._right);
        let updateRequest = UpdateParagraphFormatOnlineRequest(document: requestDocument, paragraphFormatDto: requestParagraphFormatDto as! ParagraphFormatUpdate, index: 0);
        _ = try api.updateParagraphFormatOnline(request: updateRequest);
    }

    func testUpdateParagraphListFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestListFormatDto = ListFormatUpdate()
          .setListId(listId: 2);
        let updateRequest = UpdateParagraphListFormatRequest(name: "Sample.docx", index: 0, listFormatDto: requestListFormatDto);
        _ = try api.updateParagraphListFormat(request: updateRequest);
    }

    func testUpdateParagraphListFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let requestListFormatDto = ListFormatUpdate()
          .setListId(listId: 2);
        let updateRequest = UpdateParagraphListFormatOnlineRequest(document: requestDocument, listFormatDto: requestListFormatDto, index: 0);
        _ = try api.updateParagraphListFormatOnline(request: updateRequest);
    }

    func testUpdateRun() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestRun = RunUpdate()
          .setText(text: "run with text");
        let updateRequest = UpdateRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/1", index: 0, run: requestRun as! RunUpdate);
        _ = try api.updateRun(request: updateRequest);
    }

    func testUpdateRunFont() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFontDto = Font()
          .setBold(bold: true);
        let updateRequest = UpdateRunFontRequest(name: "Sample.docx", paragraphPath: "paragraphs/0", index: 0, fontDto: requestFontDto);
        _ = try api.updateRunFont(request: updateRequest);
    }

    func testUpdateRunFontOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestFontDto = Font()
          .setBold(bold: true);
        let updateRequest = UpdateRunFontOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/0", fontDto: requestFontDto, index: 0);
        _ = try api.updateRunFontOnline(request: updateRequest);
    }

    func testUpdateRunOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!;
        let requestRun = RunUpdate()
          .setText(text: "run with text");
        let updateRequest = UpdateRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/1", run: requestRun as! RunUpdate, index: 0);
        _ = try api.updateRunOnline(request: updateRequest);
    }

    func testUpdateSectionPageSetup() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestPageSetup = PageSetup()
          .setLeftMargin(leftMargin: 10.0)
          .setOrientation(orientation: PageSetup.Orientation.landscape)
          .setPaperSize(paperSize: PageSetup.PaperSize.a5)
          .setRtlGutter(rtlGutter: true);
        let updateRequest = UpdateSectionPageSetupRequest(name: "Sample.docx", sectionIndex: 0, pageSetup: requestPageSetup);
        _ = try api.updateSectionPageSetup(request: updateRequest);
    }

    func testUpdateSectionPageSetupOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestPageSetup = PageSetup()
          .setLeftMargin(leftMargin: 10)
          .setOrientation(orientation: PageSetup.Orientation.landscape)
          .setPaperSize(paperSize: PageSetup.PaperSize.a5)
          .setRtlGutter(rtlGutter: true);
        let updateRequest = UpdateSectionPageSetupOnlineRequest(document: requestDocument, sectionIndex: 0, pageSetup: requestPageSetup);
        _ = try api.updateSectionPageSetupOnline(request: updateRequest);
    }

    func testUpdateStyle() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestStyleUpdate = StyleUpdate()
          .setName(name: "My Style");
        let updateRequest = UpdateStyleRequest(name: "Sample.docx", styleName: "Heading 1", styleUpdate: requestStyleUpdate);
        _ = try api.updateStyle(request: updateRequest);
    }

    func testUpdateStyleOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestStyleUpdate = StyleUpdate()
          .setName(name: "My Style");
        let updateRequest = UpdateStyleOnlineRequest(document: requestDocument, styleName: "Heading 1", styleUpdate: requestStyleUpdate);
        _ = try api.updateStyleOnline(request: updateRequest);
    }

    func testUpdateTableCellFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFormat = TableCellFormat()
          .setBottomPadding(bottomPadding: 5.0)
          .setFitText(fitText: true)
          .setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first)
          .setWrapText(wrapText: true);
        let updateRequest = UpdateTableCellFormatRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", index: 0, format: requestFormat);
        _ = try api.updateTableCellFormat(request: updateRequest);
    }

    func testUpdateTableCellFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestFormat = TableCellFormat()
          .setBottomPadding(bottomPadding: 5)
          .setFitText(fitText: true)
          .setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first)
          .setWrapText(wrapText: true);
        let updateRequest = UpdateTableCellFormatOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", format: requestFormat, index: 0);
        _ = try api.updateTableCellFormatOnline(request: updateRequest);
    }

    func testUpdateTableProperties() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestProperties = TableProperties()
          .setAlignment(alignment: TableProperties.Alignment._right)
          .setAllowAutoFit(allowAutoFit: false)
          .setBidi(bidi: true)
          .setBottomPadding(bottomPadding: 1.0)
          .setCellSpacing(cellSpacing: 2.0)
          .setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
        let updateRequest = UpdateTablePropertiesRequest(name: "Sample.docx", index: 1, properties: requestProperties);
        _ = try api.updateTableProperties(request: updateRequest);
    }

    func testUpdateTablePropertiesOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestProperties = TableProperties()
          .setAlignment(alignment: TableProperties.Alignment._right)
          .setAllowAutoFit(allowAutoFit: false)
          .setBidi(bidi: true)
          .setBottomPadding(bottomPadding: 1)
          .setCellSpacing(cellSpacing: 2)
          .setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
        let updateRequest = UpdateTablePropertiesOnlineRequest(document: requestDocument, properties: requestProperties, index: 1);
        _ = try api.updateTablePropertiesOnline(request: updateRequest);
    }

    func testUpdateTableRowFormat() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFormat = TableRowFormat()
          .setAllowBreakAcrossPages(allowBreakAcrossPages: true)
          .setHeadingFormat(headingFormat: true)
          .setHeight(height: 10.0)
          .setHeightRule(heightRule: TableRowFormat.HeightRule.exactly);
        let updateRequest = UpdateTableRowFormatRequest(name: "Sample.docx", tablePath: "sections/0/tables/2", index: 0, format: requestFormat);
        _ = try api.updateTableRowFormat(request: updateRequest);
    }

    func testUpdateTableRowFormatOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let requestFormat = TableRowFormat()
          .setAllowBreakAcrossPages(allowBreakAcrossPages: true)
          .setHeadingFormat(headingFormat: true)
          .setHeight(height: 10)
          .setHeightRule(heightRule: TableRowFormat.HeightRule.auto);
        let updateRequest = UpdateTableRowFormatOnlineRequest(document: requestDocument, tablePath: "sections/0/tables/2", format: requestFormat, index: 0);
        _ = try api.updateTableRowFormatOnline(request: updateRequest);
    }

    func testUploadFile() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let requestFileContent = InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!;
        let uploadRequest = UploadFileRequest(fileContent: requestFileContent, path: "Sample.docx");
        _ = try api.uploadFile(request: uploadRequest);
    }
}