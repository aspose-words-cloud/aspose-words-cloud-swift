let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestPageSetup = PageSetup()
  .setLeftMargin(leftMargin: 10)
  .setOrientation(orientation: PageSetup.Orientation.landscape)
  .setPaperSize(paperSize: PageSetup.PaperSize.a5)
  .setRtlGutter(rtlGutter: true);
let updateRequest = UpdateSectionPageSetupOnlineRequest(document: requestDocument, sectionIndex: 0, pageSetup: requestPageSetup);
_ = try api.updateSectionPageSetupOnline(request: updateRequest);