let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestCompareData = CompareData();
requestCompareData.setAuthor(author: "author");
requestCompareData.setComparingWithDocument(comparingWithDocument: "TestCompareDocument2.doc");
requestCompareData.setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!);
let compareRequest = CompareDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("compareTestDoc1.doc", isDirectory: false))!, compareData: requestCompareData, comparingDocument: InputStream(url: currentDir!.appendingPathComponent("compareTestDoc2.doc", isDirectory: false))!, destFileName: "/TestCompareDocumentOut.doc");
_ = try api.compareDocumentOnline(request: compareRequest);