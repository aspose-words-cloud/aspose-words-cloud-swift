let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocumentParameters = RangeDocument()
  .setDocumentName(documentName: "/NewDoc.docx");
let saveRequest = SaveAsRangeRequest(name: "Sample.docx", rangeStartIdentifier: "id0.0.0", documentParameters: requestDocumentParameters, rangeEndIdentifier: "id0.0.1");
_ = try api.saveAsRange(request: saveRequest);