# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "wai-website-theme"
  spec.version       = "1.8"
  spec.authors       = ["Eric Eggert"]
  spec.email         = ["mail@yatil.net"]

  spec.summary       = "This is the theme for the new W3C WAI website"
  spec.homepage      = "https://github.com/w3c/wai-website-theme"
  spec.license       = "Nonstandard"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_data|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", ">= 3.6", "< 5.0"
  spec.add_runtime_dependency 'wai-website-plugin'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
