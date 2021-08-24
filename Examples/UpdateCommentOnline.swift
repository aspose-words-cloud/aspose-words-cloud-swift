let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestCommentRangeStartNode = NodeLink()
  .setNodeId(nodeId: "0.3.0");
let requestCommentRangeStart = DocumentPosition()
  .setNode(node: requestCommentRangeStartNode)
  .setOffset(offset: 0);
let requestCommentRangeEndNode = NodeLink()
  .setNodeId(nodeId: "0.3.0");
let requestCommentRangeEnd = DocumentPosition()
  .setNode(node: requestCommentRangeEndNode)
  .setOffset(offset: 0);
let requestComment = CommentUpdate()
  .setAuthor(author: "Imran Anwar")
  .setInitial(initial: "IA")
  .setRangeEnd(rangeEnd: requestCommentRangeEnd)
  .setRangeStart(rangeStart: requestCommentRangeStart)
  .setText(text: "A new Comment");
let updateRequest = UpdateCommentOnlineRequest(document: requestDocument, commentIndex: 0, comment: requestComment as! CommentUpdate);
_ = try api.updateCommentOnline(request: updateRequest);