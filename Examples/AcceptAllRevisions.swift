import AsposeWordsCloud

let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let fileName  = "test_doc.docx";

// Upload original document to cloud storage.
let uploadFileRequest = UploadFileRequest(fileContent: InputStream(url: currentDir!.appendingPathComponent(fileName, isDirectory: false))!, path: fileName);
_ = try api.uploadFile(request: uploadFileRequest);

// Calls AcceptAllRevisions method for document in cloud.
let request = AcceptAllRevisionsRequest(name: fileName);
_ = try api.acceptAllRevisions(request: request);