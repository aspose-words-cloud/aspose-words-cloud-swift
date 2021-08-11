let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestPageSetup = PageSetup();
requestPageSetup.setRtlGutter(rtlGutter: true);
requestPageSetup.setLeftMargin(leftMargin: 10.0);
requestPageSetup.setOrientation(orientation: PageSetup.Orientation.landscape);
requestPageSetup.setPaperSize(paperSize: PageSetup.PaperSize.a5);
let updateRequest = UpdateSectionPageSetupRequest(name: "Sample.docx", sectionIndex: 0, pageSetup: requestPageSetup);
_ = try api.updateSectionPageSetup(request: updateRequest);