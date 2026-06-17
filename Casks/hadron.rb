# Bumped manually from hadron-cli v0.2.0 checksums.txt; once the
# HOMEBREW_TAP_TOKEN secret is configured in hadron-cli, goreleaser
# rewrites this file on every release (see hadron-cli/.goreleaser.yaml).
cask "hadron" do
  version "0.2.0"

  on_intel do
    sha256 "599e95ea1caa75e6842734469fda74d7d3dcf1bb810752226f2dbe2cd501f0de"
    url "https://github.com/hadron-memory/hadron-cli/releases/download/v#{version}/hadron_#{version}_darwin_amd64.tar.gz"
  end
  on_arm do
    sha256 "8da5eb769b0815d3597803aa2660f812c00406a3d22089b4fecf57aa0f404182"
    url "https://github.com/hadron-memory/hadron-cli/releases/download/v#{version}/hadron_#{version}_darwin_arm64.tar.gz"
  end

  name "hadron"
  desc "CLI for the Hadron AI-memory platform"
  homepage "https://hadronmemory.com"

  binary "hadron"

  # The release archives contain unsigned binaries; strip the
  # quarantine attribute so Gatekeeper does not block first run.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/hadron"],
                   must_succeed: false
  end
end
