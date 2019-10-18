Pod::Spec.new do |s|
  s.name             = "FTTestingKit"
  s.version          = "0.3.0"
  s.summary          = "Mockup and asynchronous testing protocols and extensions."
  s.description      = <<-DESC
    Testing helpers for easier testing mockups and asynchronous testing.
  DESC
  s.homepage         = "https://github.com/thefuntasty/FTTestingKit"
  s.license          = { type: "MIT", file: "LICENSE" }
  s.author           = { "Matěj Kašpar Jirásek" => "matej.jirasek@thefuntasty.com" }
  s.social_media_url = "https://twitter.com/thefuntasty"
  s.default_subspec  = 'Core'
  s.swift_version    = "5.0"
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.source           = { git: "https://github.com/thefuntasty/FTTestingKit.git", tag: s.version.to_s }

  s.subspec 'Core' do |ss|
    ss.source_files = "Sources/FTTestingKit/*"
    ss.frameworks = ["Foundation", "XCTest"]
  end

  s.subspec 'PromiseKit' do |ss|
    ss.source_files = 'Sources/FTTestingKitPromiseKit/*'
    ss.dependency 'PromiseKit', '~> 6.11'
    ss.dependency 'FTTestingKit/Core'
  end
end
