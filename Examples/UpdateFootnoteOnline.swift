let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFootnoteDto = FootnoteUpdate();
requestFootnoteDto.setText(text: "new text is here");
let updateRequest = UpdateFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, footnoteDto: requestFootnoteDto, index: 0);
_ = try api.updateFootnoteOnline(request: updateRequest);