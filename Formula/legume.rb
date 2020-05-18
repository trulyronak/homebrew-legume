require "language/node"

class Legume < Formula
  desc "Professor Copperfield's Miracle Legumes will help you do anything"
  homepage "https://github.com/trulyronak/legume"
  url "https://registry.npmjs.org/legume/-/legume-1.6.0.tgz"
  version "1.6.0"
  sha256 "f3e0c923ab6145a6bbc70802c0865b745e4af9dd32bea66637dae339b38b6179"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end