cask "termsie" do
  version "0.9.0"
  sha256 "aa3284ca1dc87fe20c30a958df7eacea764209c2801be5c4a5269a361e5ad8d9"

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
