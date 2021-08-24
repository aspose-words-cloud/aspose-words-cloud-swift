let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
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