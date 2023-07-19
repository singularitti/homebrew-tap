cask "better-chatgpt" do
  version "1.0.4"
  sha256 "f8bbeeb1e0f5f8027ebeed71c9037dde678105237b2e44a6a49e1671f69bde0c"

  url "https://github.com/ztjhz/BetterChatGPT/releases/download/v#{version}/mac-better-chatgpt-#{version}-x64.dmg"
  name "Better ChatGPT"
  desc "Unofficial desktop client for ChatGPT with customizations"
  homepage "https://github.com/ztjhz/BetterChatGPT"

  app "Better ChatGPT.app"

  zap trash: [
    "~/Library/Application Support/better-chatgpt",
    "~/Library/Preferences/better-chatgpt.plist",
    "~/Library/Saved Application State/better-chatgpt.savedState",
  ]
end
