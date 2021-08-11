let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocumentListDocumentEntries0 = DocumentEntry();
requestDocumentListDocumentEntries0.setHref(href: "Sample.docx");
requestDocumentListDocumentEntries0.setImportFormatMode(importFormatMode: "KeepSourceFormatting");
let requestDocumentListDocumentEntries = [
  requestDocumentListDocumentEntries0];
let requestDocumentList = DocumentEntryList();
requestDocumentList.setDocumentEntries(documentEntries: requestDocumentListDocumentEntries);
let appendRequest = AppendDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, documentList: requestDocumentList);
_ = try api.appendDocumentOnline(request: appendRequest);