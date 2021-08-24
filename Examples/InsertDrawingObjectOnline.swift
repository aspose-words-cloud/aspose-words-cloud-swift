let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestDrawingObject = DrawingObjectInsert()
  .setHeight(height: 0)
  .setLeft(_left: 0)
  .setRelativeHorizontalPosition(relativeHorizontalPosition: DrawingObjectInsert.RelativeHorizontalPosition.margin)
  .setRelativeVerticalPosition(relativeVerticalPosition: DrawingObjectInsert.RelativeVerticalPosition.margin)
  .setTop(top: 0)
  .setWidth(width: 0)
  .setWrapType(wrapType: DrawingObjectInsert.WrapType.inline);
let requestImageFile = InputStream(url: URL(string: "Common/aspose-cloud.png"))!;
let insertRequest = InsertDrawingObjectOnlineRequest(document: requestDocument, drawingObject: requestDrawingObject, imageFile: requestImageFile);
_ = try api.insertDrawingObjectOnline(request: insertRequest);