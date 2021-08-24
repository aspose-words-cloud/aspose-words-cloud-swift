let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestDrawingObject = DrawingObjectUpdate()
  .setLeft(_left: 0);
let requestImageFile = InputStream(url: URL(string: "Common/aspose-cloud.png"))!;
let updateRequest = UpdateDrawingObjectOnlineRequest(document: requestDocument, drawingObject: requestDrawingObject, imageFile: requestImageFile, index: 0);
_ = try api.updateDrawingObjectOnline(request: updateRequest);