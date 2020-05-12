require "language/node"

class Legume < Formula
  desc "Professor Copperfield's Miracle Legumes will help you do anything"
  homepage "https://github.com/trulyronak/legume"
  url "https://registry.npmjs.org/legume/-/legume-1.0.0.tgz"
  version "1.0.0"
  sha256 "14e7f02ce12bdbbb78834ef22e6597356973333e3770093beed64c598cde4706"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end