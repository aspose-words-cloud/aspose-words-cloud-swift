let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestTabStopInsertDto = TabStopInsert();
requestTabStopInsertDto.setAlignment(alignment: TabStopInsert.Alignment._left);
requestTabStopInsertDto.setLeader(leader: TabStopInsert.Leader._none);
requestTabStopInsertDto.setPosition(position: 100.0);
let insertRequest = InsertOrUpdateParagraphTabStopRequest(name: "Sample.docx", index: 0, tabStopInsertDto: requestTabStopInsertDto);
_ = try api.insertOrUpdateParagraphTabStop(request: insertRequest);