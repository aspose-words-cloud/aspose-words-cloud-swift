let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestPageNumber = PageNumber();
requestPageNumber.setAlignment(alignment: "center");
requestPageNumber.setFormat(format: "{PAGE} of {NUMPAGES}");
let insertRequest = InsertPageNumbersRequest(name: "Sample.docx", pageNumber: requestPageNumber);
_ = try api.insertPageNumbers(request: insertRequest);