class Clippybox < Formula
  include Language::Python::Virtualenv

  desc "Point at anything on your screen and instantly understand it"
  homepage "https://github.com/anonymort/ClippyBox"
  url "https://github.com/anonymort/ClippyBox/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "95f3ee4e9bf9d878f6682111eb4adcafba4a7a025e07c9ddf84b268659991ada"
  license "MIT"

  depends_on :macos
  depends_on "python@3.12"
  depends_on "python-tk@3.12"

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/1f/42/5c74462b4fd957fcd7b13b04fb3205ff8349236ea74c7c375766d6c82288/pillow-12.1.1.tar.gz"
    sha256 "9ad8fa5937ab05218e2b6a4cff30295ad35afd2f83ac592e68c0d871bb0fdbc4"
  end

  resource "pynput" do
    url "https://files.pythonhosted.org/packages/f0/c3/dccf44c68225046df5324db0cc7d563a560635355b3e5f1d249468268a6f/pynput-1.8.1.tar.gz"
    sha256 "70d7c8373ee98911004a7c938742242840a5628c004573d84ba849d4601df81e"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/b8/b6/d5612eb40be4fd5ef88c259339e6313f46ba67577a95d86c3470b951fce0/pyobjc_core-12.1.tar.gz"
    sha256 "2bb3903f5387f72422145e1466b3ac3f7f0ef2e9960afa9bcd8961c5cbf8bd21"
  end

  resource "pyobjc-framework-ApplicationServices" do
    url "https://files.pythonhosted.org/packages/be/6a/d4e613c8e926a5744fc47a9e9fea08384a510dc4f27d844f7ad7a2d793bd/pyobjc_framework_applicationservices-12.1.tar.gz"
    sha256 "c06abb74f119bc27aeb41bf1aef8102c0ae1288aec1ac8665ea186a067a8945b"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/02/a3/16ca9a15e77c061a9250afbae2eae26f2e1579eb8ca9462ae2d2c71e1169/pyobjc_framework_cocoa-12.1.tar.gz"
    sha256 "5556c87db95711b985d5efdaaf01c917ddd41d148b1e52a0c66b1a2e2c5c1640"
  end

  resource "pyobjc-framework-CoreText" do
    url "https://files.pythonhosted.org/packages/29/da/682c9c92a39f713bd3c56e7375fa8f1b10ad558ecb075258ab6f1cdd4a6d/pyobjc_framework_coretext-12.1.tar.gz"
    sha256 "e0adb717738fae395dc645c9e8a10bb5f6a4277e73cba8fa2a57f3b518e71da5"
  end

  resource "pyobjc-framework-Quartz" do
    url "https://files.pythonhosted.org/packages/94/18/cc59f3d4355c9456fc945eae7fe8797003c4da99212dd531ad1b0de8a0c6/pyobjc_framework_quartz-12.1.tar.gz"
    sha256 "27f782f3513ac88ec9b6c82d9767eef95a5cf4175ce88a1e5a65875fee799608"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ClippyBox", shell_output("#{bin}/clippybox --version")
  end
end
