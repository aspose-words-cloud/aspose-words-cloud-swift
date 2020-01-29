import Foundation

let credsUrl = Bundle.main.url(forResource: "Settings/servercreds", withExtension: "json");
let credsData = try Data(contentsOf: credsUrl!);
let config = ObjectSerializer.decode(Configuration.self, from: credsData);
if (config == nil) {
    print("Failed to load configuration from Settings/servercreds.json");
    exit(-1);
}

let api = WordsApi(configuration: config!);
let req = CreateDocumentRequest(fileName: "TestCreateDocument.doc");
let res = api.createDocument(request: req);

print(res);
