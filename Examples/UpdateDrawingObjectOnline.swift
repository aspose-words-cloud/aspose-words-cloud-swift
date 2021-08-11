let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDrawingObject = DrawingObjectUpdate();
requestDrawingObject.setLeft(_left: 0);
let updateRequest = UpdateDrawingObjectOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, drawingObject: requestDrawingObject, imageFile: InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!, index: 0, nodePath: "");
_ = try api.updateDrawingObjectOnline(request: updateRequest);