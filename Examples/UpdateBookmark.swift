let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let bookmarkName = "aspose";
let remoteFileName = "Sample.docx";

let requestBookmarkData = BookmarkData();
requestBookmarkData.setName(name: bookmarkName);
requestBookmarkData.setText(text: "This will be the text for Aspose");
let updateRequest = UpdateBookmarkRequest(name: remoteFileName, bookmarkName: bookmarkName, bookmarkData: requestBookmarkData, destFileName: remoteFileName);
_ = try api.updateBookmark(request: updateRequest);