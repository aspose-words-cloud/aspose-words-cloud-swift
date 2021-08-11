let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let requestFontDto = Font();
requestFontDto.setBold(bold: true);
let updateRequest = UpdateRunFontRequest(name: remoteFileName, paragraphPath: "paragraphs/0", index: 0, fontDto: requestFontDto, destFileName: remoteFileName);
_ = try api.updateRunFont(request: updateRequest);