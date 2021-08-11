let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFontDto = Font();
requestFontDto.setBold(bold: true);
let updateRequest = UpdateRunFontOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, paragraphPath: "paragraphs/0", fontDto: requestFontDto, index: 0);
_ = try api.updateRunFontOnline(request: updateRequest);