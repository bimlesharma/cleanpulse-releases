cask "cleanpulse" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0-alpha.5"
  sha256 arm:   "33698bb04660d37b2e96f6a147ffb40df52dc16480b581c8fa6957df4d1637c3",
         intel: "6b395ae00ae200a64361944c6d69886925329be94c70fe3a074fbcdb608e1c7a"

  url "https://github.com/bimlesharma/cleanpulse-releases/releases/download/v#{version}/CleanPulse_#{version}_#{arch}.tar.gz"
  name "CleanPulse"
  desc "Local-first macOS developer storage cleaner"
  homepage "https://cleanpulse.bimlesh.dev"

  depends_on macos: :sonoma

  app "CleanPulse.app"

  # postflight is Homebrew internal API; keep isolated for easy replacement.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/CleanPulse.app"]
  end

  caveats <<~EOS
    CleanPulse alpha builds are ad-hoc signed and are not Apple-notarized.
  EOS
end
