#!/bin/bash
swift build && swift test --enable-code-coverage
report_line=$(llvm-cov report .build/x86_64-unknown-linux/debug/AsposeWordsCloudPackageTests.xctest -instr-profile=.build/x86_64-unknown-linux/debug/codecov/default.profdata | grep "Sources/AsposeWordsCloud/Api/WordsAPI.swift *")
IFS=' ' read -ra report_splited <<< "$report_line"
code_coverage=${report_splited[6]}
echo "Words API code coverage: $code_coverage"