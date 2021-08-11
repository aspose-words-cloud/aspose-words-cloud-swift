let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDrawingObject = DrawingObjectUpdate();
requestDrawingObject.setLeft(_left: 0);
let updateRequest = UpdateDrawingObjectRequest(name: "Sample.docx", drawingObject: requestDrawingObject, imageFile: InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!, index: 0);
_ = try api.updateDrawingObject(request: updateRequest);