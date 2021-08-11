let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFootnoteDto = FootnoteInsert();
requestFootnoteDto.setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote);
requestFootnoteDto.setText(text: "test endnote");
let insertRequest = InsertFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/Footnote.doc", isDirectory: false))!, footnoteDto: requestFootnoteDto, nodePath: "");
_ = try api.insertFootnoteOnline(request: insertRequest);