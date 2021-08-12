let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let bookmarkName = "aspose";

let requestBookmarkData = BookmarkData();
requestBookmarkData.setName(name: bookmarkName);
requestBookmarkData.setText(text: "This will be the text for Aspose");
let updateRequest = UpdateBookmarkOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, bookmarkName: bookmarkName, bookmarkData: requestBookmarkData, destFileName: "Sample.docx");
_ = try api.updateBookmarkOnline(request: updateRequest);