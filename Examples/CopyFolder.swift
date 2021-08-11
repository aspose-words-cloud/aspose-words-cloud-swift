let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let folderToCopy = "/TestCopyFolder";

let copyRequest = CopyFolderRequest(destPath: folderToCopy + "Dest", srcPath: folderToCopy + "Src");
_ = try api.copyFolder(request: copyRequest);