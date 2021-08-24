let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "compareTestDoc1.doc"))!;
let requestCompareData = CompareData()
  .setAuthor(author: "author")
  .setComparingWithDocument(comparingWithDocument: "TestCompareDocument2.doc")
  .setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!);
let requestComparingDocument = InputStream(url: URL(string: "compareTestDoc2.doc"))!;
let compareRequest = CompareDocumentOnlineRequest(document: requestDocument, compareData: requestCompareData, comparingDocument: requestComparingDocument, destFileName: "/TestCompareDocumentOut.doc");
_ = try api.compareDocumentOnline(request: compareRequest);