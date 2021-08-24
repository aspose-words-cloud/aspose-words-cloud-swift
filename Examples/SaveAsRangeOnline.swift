let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let requestDocumentParameters = RangeDocument()
  .setDocumentName(documentName: "/NewDoc.docx");
let saveRequest = SaveAsRangeOnlineRequest(document: requestDocument, rangeStartIdentifier: "id0.0.0", documentParameters: requestDocumentParameters, rangeEndIdentifier: "id0.0.1");
_ = try api.saveAsRangeOnline(request: saveRequest);