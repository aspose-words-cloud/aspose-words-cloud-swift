import XCTest
@testable import AsposeWordsCloud

class DocumentTests: BaseTestContext {
    static var allTests = [
        ("testCreateDocument", testCreateDocument),
        ("testAppendDocument", testAppendDocument),
        ("testClassify", testClassify),
        ("testClassifyDocument", testClassifyDocument),
        ("testClassifyTaxonomyDocuments", testClassifyTaxonomyDocuments),
        ("testGetComment", testGetComment),
        ("testGetComments", testGetComments),
        ("testInsertComment", testInsertComment),
        ("testUpdateComment", testUpdateComment),
        ("testDeleteComment", testDeleteComment),
        ("testCompareDocument", testCompareDocument),
        ("testSaveAs", testSaveAs),
        ("testSaveAsFromPdfToDoc", testSaveAsFromPdfToDoc),
        ("testConvertDocument", testConvertDocument),
        ("testSaveAsTiffonline", testSaveAsTiffonline),
        ("testGetDocumentStatistics", testGetDocumentStatistics),
        ("testGetDocument", testGetDocument),
        ("testGetDocumentWithFormat", testGetDocumentWithFormat),
        ("testGetDocumentWithFormatAndOutPath", testGetDocumentWithFormatAndOutPath),
        ("testLoadWebDocument", testLoadWebDocument),
        ("testAcceptAllRevisions", testAcceptAllRevisions),
        ("testRejectAllRevisions", testRejectAllRevisions),
        ("testSplitDocument", testSplitDocument),
    ];
    
    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "DocumentActions/" + action;
    }
    
    func testCreateDocument() throws {
        let fileName = "TestCreateDocument.doc";
        let req = CreateDocumentRequest(fileName: fileName);
        let res = try super.getApi().createDocument(request: req);
        XCTAssert(res.getDocument()?.getFileName() == fileName);
    }
    
    func testAppendDocument() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestAppendDocument.docx";
        let remoteDir = getRemoteDataFolder(action: "AppendDocument");
        let fullName = remoteDir + "/" + remoteName;
        let destFileName = super.getRemoteTestOut() + "/" + remoteName;

        let body = DocumentEntryList();
        var docEntries : [DocumentEntry] = [];

        let docEntry = DocumentEntry();
        docEntry.setHref(href: fullName);
        docEntry.setImportFormatMode(importFormatMode: "KeepSourceFormatting");
        docEntries += [docEntry];
        body.setDocumentEntries(documentEntries: docEntries);

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = AppendDocumentRequest(name: remoteName, documentList: body, folder: remoteDir, destFileName: destFileName);
        let response = try super.getApi().appendDocument(request: request);
        XCTAssert(response.getDocument()?.getFileName() == remoteName);
    }
    
    func testClassify() throws {
        let request = ClassifyRequest(text: "Try text classification", bestClassesCount: "3");
        let response = try super.getApi().classify(request: request);
        XCTAssert(response.getBestClassName()?.isEmpty == false);
    }
    
    func testClassifyDocument() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "Source.docx";
        let remoteDir = getRemoteDataFolder(action: "ClassifyDocument");
        let fullName = remoteDir + "/" + remoteName;

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = ClassifyDocumentRequest(documentName: remoteName, folder: remoteDir, bestClassesCount: "3");
        let response = try super.getApi().classifyDocument(request : request);
        XCTAssert(response.getBestClassName()?.isEmpty == false);
    }
    
    func testClassifyTaxonomyDocuments() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "Source.docx";
        let taxonomy = "documents";
        let remoteDir = getRemoteDataFolder(action: "ClassifyTaxonomy");
        let fullName = remoteDir + "/" + remoteName;

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = ClassifyDocumentRequest(documentName: remoteName,
                                              folder: remoteDir,
                                              bestClassesCount: "3",
                                              taxonomy: taxonomy);

        let response = try super.getApi().classifyDocument(request : request);
        XCTAssert(response.getBestClassName()?.isEmpty == false);
    }
    
    func testGetComment() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetComment.docx";
        let remoteDir = getRemoteDataFolder(action: "GetComment");
        let fullName = remoteDir + "/" + remoteName;
        let commentIndex = 0;

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = GetCommentRequest(name: remoteName, commentIndex: commentIndex, folder: remoteDir);
        let response = try super.getApi().getComment(request : request);
        XCTAssert(response.getComment()?.getText()?.isEmpty == false);
    }
    
    func testGetComments() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetComments.docx";
        let remoteDir = getRemoteDataFolder(action: "GetComments");
        let fullName = remoteDir + "/" + remoteName;

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = GetCommentsRequest(name: remoteName, folder: remoteDir);
        let response = try super.getApi().getComments(request : request);
        XCTAssert(response.getComments()?.getCommentList()?.count ?? 0 > 0);
    }
    
    func testInsertComment() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertComment.docx";
        let remoteDir = getRemoteDataFolder(action: "InsertComment");
        let fullName = remoteDir + "/" + remoteName;
        let nodeLink = NodeLink();
        nodeLink.setNodeId(nodeId: "0.3.0.3");
        let documentPosition = DocumentPosition();
        documentPosition.setNode(node: nodeLink);
        documentPosition.setOffset(offset: 0);
        let body = CommentInsert();
        body.setRangeStart(rangeStart: documentPosition);
        body.setRangeEnd(rangeEnd: documentPosition);
        body.setInitial(initial: "IA");
        body.setAuthor(author: "Imran Anwar");
        body.setText(text: "A new Comment");

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = InsertCommentRequest(name: remoteName, comment: body, folder: remoteDir);
        let response = try super.getApi().insertComment(request : request);
        XCTAssert(response.getComment()?.getAuthor() == body.getAuthor());
    }
    
    func testUpdateComment() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateComment.docx";
        let remoteDir = getRemoteDataFolder(action: "UpdateComment");
        let fullName = remoteDir + "/" + remoteName;
        let commentIndex = 0;
        let nodeLink = NodeLink();
        nodeLink.setNodeId(nodeId: "0.3.0");
        let documentPosition = DocumentPosition();
        documentPosition.setNode(node: nodeLink);
        documentPosition.setOffset(offset: 0);
        let body = CommentUpdate();
        body.setRangeStart(rangeStart: documentPosition);
        body.setRangeEnd(rangeEnd: documentPosition);
        body.setInitial(initial: "IA");
        body.setAuthor(author: "Imran Anwar");
        body.setText(text: "A new Comment");

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = UpdateCommentRequest(name: remoteName, commentIndex: commentIndex, comment: body, folder: remoteDir);
        let response = try super.getApi().updateComment(request : request);
        XCTAssert(response.getComment()?.getAuthor() == body.getAuthor());
    }
    
    func testDeleteComment() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteComment.docx";
        let remoteDir = getRemoteDataFolder(action: "DeleteComment");
        let fullName = remoteDir + "/" + remoteName;
        let commentIndex = 0;
        let destFileName = super.getRemoteTestOut() + "/" + remoteName;

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = DeleteCommentRequest(name: remoteName, commentIndex: commentIndex, folder: remoteDir, destFileName: destFileName);
        try super.getApi().deleteComment(request : request);
    }
    
    func testCompareDocument() throws {
        let localName1 = "compareTestDoc1.doc";
        let localName2 = "compareTestDoc2.doc";
        let remoteName1 = "TestCompareDocument1.doc";
        let remoteName2 = "TestCompareDocument2.doc";
        let remoteDir = getRemoteDataFolder(action: "CompareDocument");
        let fullName1 = remoteDir + "/" + remoteName1;
        let fullName2 = remoteDir + "/" + remoteName2;
        let destFileName = super.getRemoteTestOut() + "/" + "TestCompareDocumentOut.doc";
        let compareData = CompareData();
        compareData.setAuthor(author: "author");
        compareData.setComparingWithDocument(comparingWithDocument: fullName2);
        
        var dateComp = DateComponents();
        dateComp.year = 2015;
        dateComp.month = 10;
        dateComp.day = 26;
        compareData.setDateTime(dateTime: Calendar.current.date(from: dateComp));

        let localPath1 = self.getLocalTestDataFolder()
            .appendingPathComponent("DocumentActions", isDirectory: true)
            .appendingPathComponent("CompareDocument", isDirectory: true)
            .appendingPathComponent(localName1, isDirectory: false);
        
        let localPath2 = self.getLocalTestDataFolder()
            .appendingPathComponent("DocumentActions", isDirectory: true)
            .appendingPathComponent("CompareDocument", isDirectory: true)
            .appendingPathComponent(localName2, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath1, path: fullName1);
        try super.uploadFile(fileContent: localPath2, path: fullName2);
        
        let request = CompareDocumentRequest(name: remoteName1, compareData: compareData, folder: remoteDir, destFileName: destFileName);
        let response = try super.getApi().compareDocument(request : request);
        XCTAssert(response.getDocument() != nil);
    }
    
    func testSaveAs() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestSaveAs.docx";
        let remoteNewName = "TestSaveAs.pdf";
        let remoteDir = getRemoteDataFolder(action: "SaveAs");
        let fullName = remoteDir + "/" + remoteName;
        let destFileName = super.getRemoteTestOut() + "\\" + remoteNewName;
        let saveOptionsData = SaveOptionsData();
        saveOptionsData.setSaveFormat(saveFormat: "pdf");
        saveOptionsData.setFileName(fileName: destFileName);

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = SaveAsRequest(name: remoteName, saveOptionsData: saveOptionsData, folder: remoteDir);
        let response = try super.getApi().saveAs(request : request);
        XCTAssert(response.getSaveResult() != nil);
    }
    
    func testSaveAsFromPdfToDoc() throws {
        let localName = "45.pdf";
        let remoteName = "TestSaveAsFromPdfToDoc.pdf";
        let remoteNewName = "TestSaveAsFromPdfToDoc.docx";
        let remoteDir = getRemoteDataFolder(action: "SaveAsPdfToDoc");
        let fullName = remoteDir + "/" + remoteName;
        let destFileName = super.getRemoteTestOut() + "/" + remoteNewName;
        let saveOptionsData = SaveOptionsData();
        saveOptionsData.setSaveFormat(saveFormat: "docx");
        saveOptionsData.setFileName(fileName: destFileName);

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("DocumentActions", isDirectory: true)
            .appendingPathComponent("ConvertDocument", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = SaveAsRequest(name: remoteName, saveOptionsData: saveOptionsData, folder: remoteDir);
        let response = try super.getApi().saveAs(request : request);
        XCTAssert(response.getSaveResult() != nil);
    }
    
    func testConvertDocument() throws {
        let format = "pdf";
        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("DocumentActions", isDirectory: true)
            .appendingPathComponent("ConvertDocument", isDirectory: true)
            .appendingPathComponent("test_uploadfile.docx", isDirectory: false);

        let docStream = InputStream(url: localPath)!;
        let request = ConvertDocumentRequest(document: docStream, format: format);
        let result = try super.getApi().convertDocument(request : request);
        XCTAssert(result.count > 0);
    }
    
    func testSaveAsTiffonline() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestSaveAsTiffonline.docx";
        let remoteDir = getRemoteDataFolder(action: "SaveAsTiffon");
        let fullName = remoteDir + "/" + remoteName;
        let body = TiffSaveOptionsData();
        body.setFileName(fileName: "abc.tiff");
        body.setSaveFormat(saveFormat: "tiff");

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = SaveAsTiffRequest(name: remoteName, saveOptions: body, folder: remoteDir);
        let response = try super.getApi().saveAsTiff(request : request);
        XCTAssert(response.getSaveResult() != nil);
    }
    
    func testGetDocumentStatistics() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentStatistics.docx";
        let remoteDir = getRemoteDataFolder(action: "GetDocumentStatistic");
        let fullName = remoteDir + "/" + remoteName;

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = GetDocumentStatisticsRequest(name: remoteName, folder: remoteDir);
        let response = try super.getApi().getDocumentStatistics(request : request);
        XCTAssert(response.getStatData()?.getPageCount() ?? 0 > 0)
    }
    
    func testGetDocument() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocument.docx";
        let remoteDir = getRemoteDataFolder(action: "GetDocument");
        let fullName = remoteDir + "/" + remoteName;

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = GetDocumentRequest(documentName: remoteName, folder: remoteDir);
        let response = try super.getApi().getDocument(request : request);
        XCTAssert(response.getDocument()?.getFileName() == remoteName);
    }
    
    func testGetDocumentWithFormat() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentWithFormat.docx";
        let remoteDir = getRemoteDataFolder(action: "GetDocumentWIthFormat");
        let fullName = remoteDir + "/" + remoteName;
        let format = "text";

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = GetDocumentWithFormatRequest(name: remoteName, format: format, folder: remoteDir);
        let result = try super.getApi().getDocumentWithFormat(request : request);
        XCTAssert(result.count > 0);
    }
    
    func testGetDocumentWithFormatAndOutPath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentWithFormatAndOutPath.docx";
        let remoteDir = getRemoteDataFolder(action: "GetDocumentWithFormatAndOut");
        let fullName = remoteDir + "/" + remoteName;
        let format = "text";
        let destFileName = super.getRemoteTestOut() + "/" + "TestGetDocumentWithFormatAndOutPath.text";

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = GetDocumentWithFormatRequest(name: remoteName, format: format, folder: remoteDir, outPath: destFileName);
        _ = try super.getApi().getDocumentWithFormat(request : request);
        let result = try super.getApi().downloadFile(request: DownloadFileRequest(path: destFileName));
        XCTAssert(result.count > 0);
    }
    
    func testLoadWebDocument() throws {
        let body = LoadWebDocumentData();
        let saveOptions = SaveOptionsData();
        saveOptions.setFileName(fileName: "google.doc");
        saveOptions.setSaveFormat(saveFormat: "doc");
        saveOptions.setDmlEffectsRenderingMode(dmlEffectsRenderingMode: "1");
        saveOptions.setDmlRenderingMode(dmlRenderingMode: "1");
        saveOptions.setUpdateSdtContent(updateSdtContent: false);
        saveOptions.setZipOutput(zipOutput: false);

        body.setLoadingDocumentUrl(loadingDocumentUrl: "http://google.com");
        body.setSaveOptions(saveOptions: saveOptions);

        let request = LoadWebDocumentRequest(data: body);
        let response = try super.getApi().loadWebDocument(request : request);
        XCTAssert(response.getSaveResult() != nil);
    }
    
    func testAcceptAllRevisions() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestAcceptAllRevisions.docx";
        let remoteDir = getRemoteDataFolder(action: "AcceptAllRevisions");
        let fullName = remoteDir + "/" + remoteName;
        let destFileName = super.getRemoteTestOut() + "/" + remoteName;

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = AcceptAllRevisionsRequest(name: remoteName, folder: remoteDir, destFileName: destFileName);
        let response = try super.getApi().acceptAllRevisions(request : request);
        XCTAssert(response.getResult() != nil);
    }
    
    func testRejectAllRevisions() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestRejectAllRevisions.docx";
        let remoteDir = getRemoteDataFolder(action: "RejectAllRevisions");
        let fullName = remoteDir + "/" + remoteName;
        let destFileName = super.getRemoteTestOut() + "/" + remoteName;

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = RejectAllRevisionsRequest(name: remoteName, folder: remoteDir, destFileName: destFileName);
        let response = try super.getApi().rejectAllRevisions(request : request);
        XCTAssert(response.getResult() != nil);
    }
    
    func testSplitDocument() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestSplitDocument.docx";
        let remoteDir = getRemoteDataFolder(action: "SplitDocument");
        let fullName = remoteDir + "/" + remoteName;
        let format = "text";
        let destFileName = super.getRemoteTestOut() + "/TestSplitDocument.text";
        let from = 1;
        let to = 2;

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = SplitDocumentRequest(name: remoteName, folder: remoteDir, destFileName: destFileName, format: format, from: from, to: to);
        let response = try super.getApi().splitDocument(request : request);
        XCTAssert(response.getSplitResult() != nil);
    }
}
