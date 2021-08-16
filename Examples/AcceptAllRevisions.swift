import AsposeWordsCloud

let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let fileName  = "test_doc.docx";

// Upload original document to cloud storage.
let myVar1 = InputStream(url: currentDir!.appendingPathComponent(fileName, isDirectory: false))!;
let myVar2 = fileName;
let uploadFileRequest = UploadFileRequest(fileContent: myVar1, path: myVar2);
_ = try api.uploadFile(request: uploadFileRequest);

// Calls AcceptAllRevisions method for document in cloud.
let myVar3 = fileName;
let request = AcceptAllRevisionsRequest(name: myVar3);
_ = try api.acceptAllRevisions(request: request);