require "language/node"

class Legume < Formula
  desc "Professor Copperfield's Miracle Legumes will help you do anything"
  homepage "https://github.com/trulyronak/legume"
  url "https://registry.npmjs.org/legume/-/legume-1.7.0.tgz"
  version "1.7.0"
  sha256 "dd70eb36e1e19682663f3b8e781b1dfd27040ec303a2162c93328376cb0b9a9c"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end