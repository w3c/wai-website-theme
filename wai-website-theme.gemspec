# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "wai-website-theme"
  spec.version       = "1.10"
  spec.authors       = ["Eric Eggert, Rémi Bétin"]
  spec.email         = ["wai@w3.org"]

  spec.summary       = "This is the theme for the new W3C WAI website"
  spec.homepage      = "https://github.com/w3c/wai-website-theme"
  spec.license       = "Nonstandard"
  spec.required_ruby_version = '>= 3.3.3'

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_data|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~>4.4.1"
  spec.add_runtime_dependency "jekyll-include-cache", "~>0.2.1"
  spec.add_runtime_dependency "jekyll-paginate", "~>1.1.0"
  spec.add_runtime_dependency "jekyll-redirect-from", "~>0.16.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~>2.8.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~>1.4.0"
  spec.add_runtime_dependency "wai-website-plugin", "~>0.2"
  spec.add_runtime_dependency "logger", "~>1.7.0"
#   spec.add_runtime_dependency "csv", "~>3.3.5"
end
