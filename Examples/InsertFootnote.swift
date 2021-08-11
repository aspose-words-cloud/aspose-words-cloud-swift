let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFootnoteDto = FootnoteInsert();
requestFootnoteDto.setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote);
requestFootnoteDto.setText(text: "test endnote");
let insertRequest = InsertFootnoteRequest(name: "Sample.docx", footnoteDto: requestFootnoteDto);
_ = try api.insertFootnote(request: insertRequest);