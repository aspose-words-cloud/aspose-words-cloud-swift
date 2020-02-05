import XCTest
@testable import AsposeWordsCloudSdk

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
        ("testGetDocumentFormatUsingStorage", testGetDocumentFormatUsingStorage),
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
    
    func testAppendDocument()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestAppendDocument.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var destFileName = Path.Combine(BaseTestOutPath, remoteName);

        var body = new DocumentEntryList();
        System.Collections.Generic.List<DocumentEntry> docEntries = new System.Collections.Generic.List<DocumentEntry>();

        DocumentEntry docEntry = new DocumentEntry { Href = fullName, ImportFormatMode = "KeepSourceFormatting" };
        docEntries.Add(docEntry);
        body.DocumentEntries = docEntries;

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new AppendDocumentRequest(remoteName, body, this.dataFolder, destFileName: destFileName);
        var actual = this.WordsApi.AppendDocument(request);
    }
    
    func testClassify()
    {
        var request = new ClassifyRequest("Try text classification", "3");
        var actual = this.WordsApi.Classify(request);
    }
    
    func testClassifyDocument()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "Source.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new ClassifyDocumentRequest(remoteName,
            this.dataFolder,
            bestClassesCount: "3");

        var actual = this.WordsApi.ClassifyDocument(request);
    }
    
    func testClassifyTaxonomyDocuments()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "Source.docx";
        var taxonomy = "documents";
        var fullName = Path.Combine(this.dataFolder, remoteName);

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new ClassifyDocumentRequest(remoteName,
            this.dataFolder,
            bestClassesCount: "3",
            taxonomy: taxonomy);

        var actual = this.WordsApi.ClassifyDocument(request);
    }
    
    func testGetComment()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestGetComment.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        int commentIndex = 0;

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new GetCommentRequest(remoteName, commentIndex, this.dataFolder);
        var actual = this.WordsApi.GetComment(request);
    }
    
    func testGetComments()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestGetComments.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new GetCommentsRequest(remoteName, this.dataFolder);
        var actual = this.WordsApi.GetComments(request);
    }
    
    func testInsertComment()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestInsertComment.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var nodeLink = new NodeLink { NodeId = "0.3.0.3" };
        var documentPosition = new DocumentPosition { Node = nodeLink, Offset = 0 };
        var body = new Comment
                       {
                           RangeStart = documentPosition,
                           RangeEnd = documentPosition,
                           Initial = "IA",
                           Author = "Imran Anwar",
                           Text = "A new Comment"
                       };

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new InsertCommentRequest(remoteName, body, this.dataFolder);
        var actual = this.WordsApi.InsertComment(request);
    }
    
    func testUpdateComment()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestUpdateComment.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var commentIndex = 0;
        var nodeLink = new NodeLink { NodeId = "0.3.0" };
        var documentPosition = new DocumentPosition { Node = nodeLink, Offset = 0 };
        var body = new Comment
                       {
                           RangeStart = documentPosition,
                           RangeEnd = documentPosition,
                           Initial = "IA",
                           Author = "Imran Anwar",
                           Text = "A new Comment"
                       };

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new UpdateCommentRequest(remoteName, commentIndex, body, this.dataFolder);
        var actual = this.WordsApi.UpdateComment(request);
    }
    
    func testDeleteComment()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestDeleteComment.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var commentIndex = 0;
        var destFileName = Path.Combine(BaseTestOutPath, remoteName);

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new DeleteCommentRequest(remoteName, commentIndex, this.dataFolder, destFileName: destFileName);
        this.WordsApi.DeleteComment(request);            
    }
    
    func testCompareDocument()
    {
        var localName1 = "compareTestDoc1.doc";
        var localName2 = "compareTestDoc2.doc";
        var remoteName1 = "TestCompareDocument1.doc";
        var remoteName2 = "TestCompareDocument2.doc";
        var fullName1 = Path.Combine(this.dataFolder, remoteName1);
        var fullName2 = Path.Combine(this.dataFolder, remoteName2);
        var destFileName = Path.Combine(BaseTestOutPath, "TestCompareDocumentOut.doc");
        var compareData = new CompareData { Author = "author", ComparingWithDocument = fullName2, DateTime = new DateTime(2015, 10, 26) };

        this.UploadFileToStorage(fullName1, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(this.compareFolder) + localName1));
        this.UploadFileToStorage(fullName2, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(this.compareFolder) + localName2));

        var request = new CompareDocumentRequest(remoteName1, compareData, this.dataFolder, destFileName: destFileName);
        var actual = this.WordsApi.CompareDocument(request);
    }
    
    func testSaveAs()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestSaveAs.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var destFileName = Path.Combine(BaseTestOutPath, Path.GetFileNameWithoutExtension(remoteName) + ".pdf");
        var saveOptionsData = new SaveOptionsData { SaveFormat = "pdf", FileName = destFileName };

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new SaveAsRequest(remoteName, saveOptionsData, this.dataFolder);
        var actual = this.WordsApi.SaveAs(request);
    }
    
    func testSaveAsFromPdfToDoc()
    {
        var localName = "45.pdf";
        var remoteName = "TestSaveAsFromPdfToDoc.pdf";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var destFileName = Path.Combine(BaseTestOutPath, Path.GetFileNameWithoutExtension(remoteName) + ".docx");
        var saveOptionsData = new SaveOptionsData { SaveFormat = "docx", FileName = destFileName };

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(this.convertFolder) + localName));

        var request = new SaveAsRequest(remoteName, saveOptionsData, this.dataFolder);
        var actual = this.WordsApi.SaveAs(request);
    }
    
    func testConvertDocument()
    {
        var format = "pdf";
        using (var fileStream = File.OpenRead(BaseTestContext.GetDataDir(this.convertFolder) + "test_uploadfile.docx"))
        {
            var request = new ConvertDocumentRequest(fileStream, format);
            var result = this.WordsApi.ConvertDocument(request);
            Assert.IsTrue(result.Length > 0, "Error occurred while converting document");
        }
    }
    
    func testSaveAsTiffonline()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestSaveAsTiffonline.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var destFileName = Path.Combine(BaseTestOutPath, Path.GetFileNameWithoutExtension(remoteName) + ".tiff");
        var body = new TiffSaveOptionsData { FileName = "abc.tiff", SaveFormat = "tiff" };

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new SaveAsTiffRequest(remoteName,
            body,
            this.dataFolder);
        var actual = this.WordsApi.SaveAsTiff(request);
    }
    
    func testGetDocumentStatistics()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestGetDocumentStatistics.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new GetDocumentStatisticsRequest(remoteName, this.dataFolder);
        var actual = this.WordsApi.GetDocumentStatistics(request);
    }
    
    func testGetDocument()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestGetDocument.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new GetDocumentRequest(remoteName, this.dataFolder);
        var actual = this.WordsApi.GetDocument(request);
    }
    
    func testGetDocumentWithFormat()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestGetDocumentWithFormat.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var format = "text";

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new GetDocumentWithFormatRequest(remoteName, format, this.dataFolder);
        var result = this.WordsApi.GetDocumentWithFormat(request);
        Assert.IsTrue(result.Length > 0, "Conversion has failed");
    }
    
    func testGetDocumentWithFormatAndOutPath()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestGetDocumentWithFormatAndOutPath.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var format = "text";
        var destFileName = Path.Combine(BaseTestOutPath, Path.GetFileNameWithoutExtension(remoteName) + ".text");

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new GetDocumentWithFormatRequest(remoteName, format, this.dataFolder, outPath: destFileName);
        this.WordsApi.GetDocumentWithFormat(request);
        var result = this.WordsApi.DownloadFile(new DownloadFileRequest(destFileName));
        Assert.IsNotNull(result, "Cannot download document from storage");
    }
    
    func testGetDocumentFormatUsingStorage()
    {
        var remoteName = "TestGetDocumentFormatUsingStorage.docx";            
        var format = "text"; 
        var storage = "AWSStorageS3";

        // TODO to run this test please put your AppKey and AppSid for another storage
        // var anotherStorageApi = new StorageApi(StorageAppKey, StorageAppSID, BaseProductUri);
        // anotherStorageApi.PutCreate(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));
        var anotherWordApi = new WordsApi(new Configuration { ApiBaseUrl = BaseProductUri, AppKey = this.AppKey, AppSid = this.AppSid });
        var request = new GetDocumentWithFormatRequest(remoteName, format, this.dataFolder, storage);
        var result = anotherWordApi.GetDocumentWithFormat(request);
        Assert.IsTrue(result.Length > 0, "Conversion has failed");
    }
    
    func testLoadWebDocument()
    {
        var body = new LoadWebDocumentData();
        var saveOptions = new SaveOptionsData
                           {
                               FileName = "google.doc",
                               SaveFormat = "doc",
                               DmlEffectsRenderingMode = "1",
                               DmlRenderingMode = "1",
                               UpdateSdtContent = false,
                               ZipOutput = false
                           };

        body.LoadingDocumentUrl = "http://google.com";
        body.SaveOptions = saveOptions;

        var request = new LoadWebDocumentRequest(body);
        this.WordsApi.LoadWebDocument(request);
    }
    
    func testAcceptAllRevisions()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestAcceptAllRevisions.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var destFileName = Path.Combine(BaseTestOutPath, remoteName);

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new AcceptAllRevisionsRequest(remoteName, this.dataFolder, destFileName: destFileName);
        var actual = this.WordsApi.AcceptAllRevisions(request);
    }
    
    func testRejectAllRevisions()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestRejectAllRevisions.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var destFileName = Path.Combine(BaseTestOutPath, remoteName);

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new RejectAllRevisionsRequest(remoteName, this.dataFolder, destFileName: destFileName);
        var actual = this.WordsApi.RejectAllRevisions(request);
    }
    
    func testSplitDocument()
    {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestSplitDocument.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        string format = "text";
        var destFileName = Path.Combine(BaseTestOutPath, Path.GetFileNameWithoutExtension(remoteName) + ".text");
        int from = 1;
        int to = 2;

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new SplitDocumentRequest(remoteName, this.dataFolder, format: format, @from: from, to: to, destFileName: destFileName);
        var actual = this.WordsApi.SplitDocument(request);
    }
}
