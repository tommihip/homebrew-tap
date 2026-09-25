cask "termsie" do
  version "0.7.0"
  sha256 "8c13217e2d4b4c05c35b7c65087ea50da12473e056814ad718a74338960f7fc2"

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
