let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDrawingObject = DrawingObjectInsert()
  .setHeight(height: 0)
  .setLeft(_left: 0)
  .setRelativeHorizontalPosition(relativeHorizontalPosition: DrawingObjectInsert.RelativeHorizontalPosition.margin)
  .setRelativeVerticalPosition(relativeVerticalPosition: DrawingObjectInsert.RelativeVerticalPosition.margin)
  .setTop(top: 0)
  .setWidth(width: 0)
  .setWrapType(wrapType: DrawingObjectInsert.WrapType.inline);
let requestImageFile = InputStream(url: URL(string: "Common/aspose-cloud.png"))!;
let insertRequest = InsertDrawingObjectRequest(name: "Sample.docx", drawingObject: requestDrawingObject, imageFile: requestImageFile);
_ = try api.insertDrawingObject(request: insertRequest);