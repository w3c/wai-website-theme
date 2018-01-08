# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "wai-website-theme"
  spec.version       = "0.1.1"
  spec.authors       = ["Eric Eggert"]
  spec.email         = ["mail@yatil.net"]

  spec.summary       = "This is the theme for the new W3C WAI website"
  spec.homepage      = "https://github.com/w3c/wai-website-theme"
  spec.license       = "All Rights Reserved"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_data|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.6"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
