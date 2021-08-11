let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestStyleApply = StyleApply();
requestStyleApply.setStyleName(styleName: "Heading 1");
let applyStyleRequest = ApplyStyleToDocumentElementOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styledNodePath: "paragraphs/1/paragraphFormat", styleApply: requestStyleApply);
_ = try api.applyStyleToDocumentElementOnline(request: applyStyleRequest);