cask "termsie" do
  version "0.8.0"
  sha256 "5a6ad8b4e667d308a2579a55a6034aaf6707ebe3f09a4188fbeb4a053b697e2a"

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
