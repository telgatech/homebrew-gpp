class Gpp < Formula
  desc "Go++ compiler and language tools"
  homepage "https://github.com/telgatech/gpp"
  license "BSD-3-Clause"
  head "https://github.com/telgatech/gpp.git", branch: "main"

  depends_on "go" => :build

  def install
    go_version = Utils.safe_popen_read("go", "env", "GOVERSION").strip.delete_prefix("go")
    odie "Go 1.26 or newer is required (found #{go_version})" if Version.new(go_version) < Version.new("1.26")

    system "go", "build", *std_go_args, "."
  end

  test do
    assert_match(/^gpp /, shell_output("#{bin}/gpp version"))
  end
end
