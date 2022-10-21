class Flyctl < Formula
  desc "Command-line tools for fly.io services"
  homepage "https://fly.io"
  url "https://github.com/superfly/flyctl.git",
      tag:      "v0.0.416",
      revision: "5f7fd0f3cdd6814eb4c5ee661c8b8e573fa77ebf"
  license "Apache-2.0"
  head "https://github.com/superfly/flyctl.git", branch: "master"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_monterey: "d0f658032a4a9e53cdc7591a91f72aa46f1284eeaf5986b6402a0a9815d903e7"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "d0f658032a4a9e53cdc7591a91f72aa46f1284eeaf5986b6402a0a9815d903e7"
    sha256 cellar: :any_skip_relocation, monterey:       "1392e17ec334018001f0b0e0ec544611661419fc8fa3c972679e78a321abe315"
    sha256 cellar: :any_skip_relocation, big_sur:        "1392e17ec334018001f0b0e0ec544611661419fc8fa3c972679e78a321abe315"
    sha256 cellar: :any_skip_relocation, catalina:       "1392e17ec334018001f0b0e0ec544611661419fc8fa3c972679e78a321abe315"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "ff2b3e61fda91cff71bb9c822e751d82c8530836e4a3bd1855fdc187e11a97a5"
  end

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = %W[
      -s -w
      -X github.com/superfly/flyctl/internal/buildinfo.environment=production
      -X github.com/superfly/flyctl/internal/buildinfo.buildDate=#{time.iso8601}
      -X github.com/superfly/flyctl/internal/buildinfo.version=#{version}
      -X github.com/superfly/flyctl/internal/buildinfo.commit=#{Utils.git_short_head}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags)

    bin.install_symlink "flyctl" => "fly"

    generate_completions_from_executable(bin/"flyctl", "completion")
  end

  test do
    assert_match "flyctl v#{version}", shell_output("#{bin}/flyctl version")

    flyctl_status = shell_output("flyctl status 2>&1", 1)
    assert_match "Error No access token available. Please login with 'flyctl auth login'", flyctl_status
  end
end
