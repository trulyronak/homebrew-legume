require "language/node"

class Legume < Formula
  desc "Professor Copperfield's Miracle Legumes will help you do anything"
  homepage "https://github.com/trulyronak/legume"
  url "https://registry.npmjs.org/legume/-/legume-2.0.0.tgz"
  version "2.0.0"
  sha256 "1729918ce7e0158e5382e3e2decfa56e2413d6e9adbe09d34d99d181eb5b30f0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end