let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFootnoteDto = FootnoteUpdate();
requestFootnoteDto.setText(text: "new text is here");
let updateRequest = UpdateFootnoteRequest(name: "Sample.docx", index: 0, footnoteDto: requestFootnoteDto);
_ = try api.updateFootnote(request: updateRequest);