let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestReportEngineSettingsReportBuildOptions = [
  ReportBuildOptions.allowMissingMembers,
ReportBuildOptions.removeEmptyParagraphs];
let requestReportEngineSettings = ReportEngineSettings();
requestReportEngineSettings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
requestReportEngineSettings.setReportBuildOptions(reportBuildOptions: requestReportEngineSettingsReportBuildOptions);
let buildReportRequest = BuildReportRequest(name: "Sample.docx", data: "Data.json", reportEngineSettings: requestReportEngineSettings);
_ = try api.buildReport(request: buildReportRequest);