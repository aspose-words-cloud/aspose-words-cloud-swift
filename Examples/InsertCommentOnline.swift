let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestCommentRangeStartNode = NodeLink()
  .setNodeId(nodeId: "0.3.0.3");
let requestCommentRangeStart = DocumentPosition()
  .setNode(node: requestCommentRangeStartNode)
  .setOffset(offset: 0);
let requestCommentRangeEndNode = NodeLink()
  .setNodeId(nodeId: "0.3.0.3");
let requestCommentRangeEnd = DocumentPosition()
  .setNode(node: requestCommentRangeEndNode)
  .setOffset(offset: 0);
let requestComment = CommentInsert()
  .setAuthor(author: "Imran Anwar")
  .setInitial(initial: "IA")
  .setRangeEnd(rangeEnd: requestCommentRangeEnd)
  .setRangeStart(rangeStart: requestCommentRangeStart)
  .setText(text: "A new Comment");
let insertRequest = InsertCommentOnlineRequest(document: requestDocument, comment: requestComment as! CommentInsert);
_ = try api.insertCommentOnline(request: insertRequest);