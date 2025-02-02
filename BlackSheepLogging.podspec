Pod::Spec.new do |s|
  s.name         = "BlackSheepLogging"
  s.version      = "1.9.6"
  s.summary      = "Convenient logging during development & release in Swift 4 & 5."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
Easy-to-use, extensible & powerful logging & analytics for Swift 4 and Swift 5.
Great for development & release due to its support for many logging destinations & platforms.
                   DESC

  s.homepage     = "https://github.com/ModeSevenIndustrialSolutions/BlackSheepLogging"
  s.screenshots  = "https://cloud.githubusercontent.com/assets/564725/11452558/17fd5f04-95ec-11e5-96d2-427f62ed4f05.jpg", "https://cloud.githubusercontent.com/assets/564725/11452560/33225d16-95ec-11e5-8461-78f50b9e8da7.jpg"
  s.license      = "MIT"
  s.author       = { "Matthew Watkins" => "matt@modeseven.org" }
  s.ios.deployment_target = "13.4"
  s.watchos.deployment_target = "6.2"
  s.tvos.deployment_target = "13.4"
  s.osx.deployment_target = "10.15.4"
  s.source       = { :git => "https://github.com/ModeSevenIndustrialSolutions/BlackSheepLogging.git", :tag => "1.9.6" }
  s.source_files  = "Sources"
  s.swift_versions = ['4.0', '4.2', '5.0', '5.1']
end
