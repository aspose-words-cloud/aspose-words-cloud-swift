let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocumentParameters = RangeDocument();
requestDocumentParameters.setDocumentName(documentName: "/NewDoc.docx");
let saveRequest = SaveAsRangeOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, rangeStartIdentifier: "id0.0.0", documentParameters: requestDocumentParameters, rangeEndIdentifier: "id0.0.1");
_ = try api.saveAsRangeOnline(request: saveRequest);