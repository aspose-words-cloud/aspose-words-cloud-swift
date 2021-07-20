let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";
let bookmarkName = "aspose";

let testBookmarkData = BookmarkData();
testBookmarkData.setName(name: bookmarkName);
testBookmarkData.setText(text: "New Bookmark Text");
let updateBookmark = UpdateBookmarkRequest(name: remoteFileName, bookmarkName: bookmarkName, bookmarkData: testBookmarkData);
_ = try api.updateBookmark(request: updateBookmark);