let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let bookmarkName = "aspose";

let requestBookmarkData = BookmarkData()
  .setName(name: bookmarkName)
  .setText(text: "This will be the text for Aspose");
let updateRequest = UpdateBookmarkRequest(name: "Sample.docx", bookmarkName: bookmarkName, bookmarkData: requestBookmarkData);
_ = try api.updateBookmark(request: updateRequest);