let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFootnoteDto = FootnoteUpdate();
requestFootnoteDto.setText(text: "new text is here");
let updateRequest = UpdateFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/Footnote.doc", isDirectory: false))!, footnoteDto: requestFootnoteDto, index: 0, nodePath: "");
_ = try api.updateFootnoteOnline(request: updateRequest);