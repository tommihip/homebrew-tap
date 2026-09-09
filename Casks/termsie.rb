cask "termsie" do
  version "0.5.0"
  sha256 "f808b97136ef92a49c46b074d5b0cd28c5d708bdd25c947a2488f4df4b9e4417"

  url "https://github.com/tommihip/termsie/releases/download/v#{version}/Termsie-#{version}.dmg"
  name "Termsie"
  desc "Native macOS terminal with floating, colour-coded panes in one window"
  homepage "https://termsie.com"

  depends_on macos: ">= :sonoma"

  app "Termsie.app"

  zap trash: [
    "~/.config/termsie",
    "~/Library/Preferences/com.termsie.app.plist",
    "~/Library/Saved Application State/com.termsie.app.savedState",
  ]
end
