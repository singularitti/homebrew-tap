cask "paperlib" do
  arch arm: "_arm"

  version "2.2.3"
  sha256 arm:   "18975f0e579d97683ecb21151d1b101fe3fd9b99fdffe93bf4a11fee32dea85f",
         intel: "7ae1e989d7cefda4885764d35e1d30be85a954b375ec685a8db259dc420c5050"

  url "https://github.com/Future-Scholars/paperlib/releases/download/release-electron-#{version}/Paperlib_#{version}#{arch}.dmg",
      verified: "github.com/Future-Scholars/paperlib/"
  name "Paperlib"
  desc "Open-source academic paper management tool"
  homepage "https://paperlib.app/"

  auto_updates true

  app "Paperlib.app"

  zap trash: [
    "~/Library/Application Support/paperlib",
    "~/Library/Preferences/dev.paperlib.app.plist",
    "~/Library/Saved Application State/dev.paperlib.app.savedState",
  ]
end
