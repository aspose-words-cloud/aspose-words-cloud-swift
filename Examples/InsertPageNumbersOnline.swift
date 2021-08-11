let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestPageNumber = PageNumber();
requestPageNumber.setAlignment(alignment: "center");
requestPageNumber.setFormat(format: "{PAGE} of {NUMPAGES}");
let insertRequest = InsertPageNumbersOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Common/Sample.docx", isDirectory: false))!, pageNumber: requestPageNumber);
_ = try api.insertPageNumbersOnline(request: insertRequest);