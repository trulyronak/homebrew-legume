require "language/node"

class Legume < Formula
  desc "Professor Copperfield's Miracle Legumes will help you do anything"
  homepage "https://github.com/trulyronak/legume"
  url "https://registry.npmjs.org/legume/-/legume-1.4.0.tgz"
  version "1.4.0"
  sha256 "0db9aced7cd0eb73c642440fc2e079321747e7a6cf87cb7ef7838dc66eff588e"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end