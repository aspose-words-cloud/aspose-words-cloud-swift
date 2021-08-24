let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestCompareData = CompareData()
  .setAuthor(author: "author")
  .setComparingWithDocument(comparingWithDocument: "TestCompareDocument2.doc")
  .setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!);
let compareRequest = CompareDocumentRequest(name: "TestCompareDocument1.doc", compareData: requestCompareData, destFileName: "/TestCompareDocumentOut.doc");
_ = try api.compareDocument(request: compareRequest);