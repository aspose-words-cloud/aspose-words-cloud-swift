let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestTabStopInsertDto = TabStopInsert()
  .setAlignment(alignment: TabStopInsert.Alignment._left)
  .setLeader(leader: TabStopInsert.Leader._none)
  .setPosition(position: 100.0);
let insertRequest = InsertOrUpdateParagraphTabStopRequest(name: "Sample.docx", index: 0, tabStopInsertDto: requestTabStopInsertDto as! TabStopInsert);
_ = try api.insertOrUpdateParagraphTabStop(request: insertRequest);