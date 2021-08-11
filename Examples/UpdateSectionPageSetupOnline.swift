let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestPageSetup = PageSetup();
requestPageSetup.setRtlGutter(rtlGutter: true);
requestPageSetup.setLeftMargin(leftMargin: 10);
requestPageSetup.setOrientation(orientation: PageSetup.Orientation.landscape);
requestPageSetup.setPaperSize(paperSize: PageSetup.PaperSize.a5);
let updateRequest = UpdateSectionPageSetupOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, sectionIndex: 0, pageSetup: requestPageSetup);
_ = try api.updateSectionPageSetupOnline(request: updateRequest);