let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
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