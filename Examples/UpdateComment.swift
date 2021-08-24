let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
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
let updateRequest = UpdateCommentRequest(name: "Sample.docx", commentIndex: 0, comment: requestComment as! CommentUpdate);
_ = try api.updateComment(request: updateRequest);