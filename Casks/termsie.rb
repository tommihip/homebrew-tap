cask "termsie" do
  version "0.9.1"
  sha256 "dbd44f973ff8cce6aab50d42903109dc3414d37fad2ed4fc9157d891a7b74f29"

  url "https://github.com/tommihip/termsie/releases/download/v#{version}/Termsie-#{version}.dmg"
  name "Termsie"
  desc "Native macOS terminal with floating, colour-coded panes in one window"
  homepage "https://termsie.com"

  depends_on macos: ">= :sonoma"
  # Termsie replaces itself from inside the app; brew should not fight it over the version.
  auto_updates true

  app "Termsie.app"

  zap trash: [
    "~/.config/termsie",
    "~/Library/Preferences/com.termsie.app.plist",
    "~/Library/Saved Application State/com.termsie.app.savedState",
  ]
end
