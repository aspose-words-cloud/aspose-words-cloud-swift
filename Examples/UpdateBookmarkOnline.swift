let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let bookmarkName = "aspose";

let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestBookmarkData = BookmarkData()
  .setName(name: bookmarkName)
  .setText(text: "This will be the text for Aspose");
let updateRequest = UpdateBookmarkOnlineRequest(document: requestDocument, bookmarkName: bookmarkName, bookmarkData: requestBookmarkData, destFileName: "Sample.docx");
_ = try api.updateBookmarkOnline(request: updateRequest);