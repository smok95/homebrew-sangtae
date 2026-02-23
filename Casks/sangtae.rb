cask "sangtae" do
  version "1.0.1"
  sha256 "76a11d8cadee53616c2d4b6ca15bc5a5a8692a7a0b1260bd6b3478a7b0357d37"

  url "https://github.com/smok95/Sangtae/releases/download/v#{version}/Sangtae.dmg"
  name "Sangtae"
  desc "System monitor for macOS"
  homepage "https://github.com/smok95/Sangtae"

  app "Sangtae.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Sangtae.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Caches/com.gemini.Sangtae",
    "~/Library/Preferences/com.gemini.Sangtae.plist",
  ]
end
