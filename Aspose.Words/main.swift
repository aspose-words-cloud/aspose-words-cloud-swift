import Foundation

var config : Configuration;

do {
    let credsUrl = Bundle.main.url(forResource: "Settings/servercreds", withExtension: "json");
    let credsData = try Data(contentsOf: credsUrl!);
    config = try ObjectSerializer.deserialize(type: Configuration.self, from: credsData);
}
catch {
    print("Failed to load configuration from Settings/servercreds.json");
    exit(-1);
}

let api = WordsApi(configuration: config);
let req = CreateDocumentRequest(fileName: "TestCreateDocument.doc");

do {
    let res = try api.createDocument(request: req);
    print(res);
}
catch let error {
    print(error);
    exit(-1);
}


