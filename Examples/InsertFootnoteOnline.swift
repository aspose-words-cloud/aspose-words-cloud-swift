let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFootnoteDto = FootnoteInsert();
requestFootnoteDto.setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote);
requestFootnoteDto.setText(text: "test endnote");
let insertRequest = InsertFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, footnoteDto: requestFootnoteDto);
_ = try api.insertFootnoteOnline(request: insertRequest);