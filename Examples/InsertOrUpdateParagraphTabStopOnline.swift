let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestTabStopInsertDto = TabStopInsert();
requestTabStopInsertDto.setAlignment(alignment: TabStopInsert.Alignment._left);
requestTabStopInsertDto.setLeader(leader: TabStopInsert.Leader._none);
requestTabStopInsertDto.setPosition(position: 72);
let insertRequest = InsertOrUpdateParagraphTabStopOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/ParagraphTabStops.docx", isDirectory: false))!, tabStopInsertDto: requestTabStopInsertDto, index: 0, nodePath: "");
_ = try api.insertOrUpdateParagraphTabStopOnline(request: insertRequest);