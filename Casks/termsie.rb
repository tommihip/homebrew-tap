cask "termsie" do
  version "0.6.0"
  sha256 "f07ae967704d567c6d7b4e2217abb85e2d5ccd06bbef3fd04822023e9da2e2c8"

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
