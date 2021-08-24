let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestPageSetup = PageSetup()
  .setLeftMargin(leftMargin: 10.0)
  .setOrientation(orientation: PageSetup.Orientation.landscape)
  .setPaperSize(paperSize: PageSetup.PaperSize.a5)
  .setRtlGutter(rtlGutter: true);
let updateRequest = UpdateSectionPageSetupRequest(name: "Sample.docx", sectionIndex: 0, pageSetup: requestPageSetup);
_ = try api.updateSectionPageSetup(request: updateRequest);