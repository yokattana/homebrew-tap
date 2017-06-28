class JsonYaml < Formula
  desc "Convert JSON to YAML with UNIX pipes"
  homepage "https://github.com/yokatana/json-yaml"

  url "https://github.com/yokatana/json-yaml/archive/1.0.1.tar.gz"
  sha256 "45c28717be15fe81a4275364e9d39283b8c761397fbdf23c9e9122017b438961"

  head "https://github.com/yokatana/json-yaml.git"

  depends_on "yajl"
  depends_on "libyaml"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "make", "check"
  end
end
