let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestTabStopInsertDto = TabStopInsert()
  .setAlignment(alignment: TabStopInsert.Alignment._left)
  .setLeader(leader: TabStopInsert.Leader._none)
  .setPosition(position: 72);
let insertRequest = InsertOrUpdateParagraphTabStopOnlineRequest(document: requestDocument, tabStopInsertDto: requestTabStopInsertDto as! TabStopInsert, index: 0);
_ = try api.insertOrUpdateParagraphTabStopOnline(request: insertRequest);