let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDrawingObject = DrawingObjectInsert();
requestDrawingObject.setHeight(height: 0);
requestDrawingObject.setLeft(_left: 0);
requestDrawingObject.setTop(top: 0);
requestDrawingObject.setWidth(width: 0);
requestDrawingObject.setRelativeHorizontalPosition(relativeHorizontalPosition: DrawingObjectInsert.RelativeHorizontalPosition.margin);
requestDrawingObject.setRelativeVerticalPosition(relativeVerticalPosition: DrawingObjectInsert.RelativeVerticalPosition.margin);
requestDrawingObject.setWrapType(wrapType: DrawingObjectInsert.WrapType.inline);
let insertRequest = InsertDrawingObjectRequest(name: "Sample.docx", drawingObject: requestDrawingObject, imageFile: InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!);
_ = try api.insertDrawingObject(request: insertRequest);