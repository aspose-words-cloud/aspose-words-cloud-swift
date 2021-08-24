let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDrawingObject = DrawingObjectUpdate()
  .setLeft(_left: 0);
let requestImageFile = InputStream(url: URL(string: "Common/aspose-cloud.png"))!;
let updateRequest = UpdateDrawingObjectRequest(name: "Sample.docx", drawingObject: requestDrawingObject, imageFile: requestImageFile, index: 0);
_ = try api.updateDrawingObject(request: updateRequest);