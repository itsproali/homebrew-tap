cask "makitro" do
  version "1.0.1"
  sha256 "2506f8cb1e8fb9f751c6fe51c64a95addb81767629008d2e76b349924d3cdc2e"

  url "https://github.com/itsproali/makitro/releases/download/v#{version}/Makitro-#{version}.dmg"
  name "Makitro"
  desc "Menu-bar toolkit: clipboard history, scroll reverser, color picker"
  homepage "https://makitro.mdali.dev/"

  livecheck do
    url "https://makitro.mdali.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Makitro.app"

  zap trash: [
    "~/Library/Application Support/dev.mdali.Makitro",
    "~/Library/Preferences/dev.mdali.Makitro.plist",
  ]

  caveats <<~EOS
    Makitro is a developer preview and not yet notarized by Apple. The first time you open it,
    click Open Anyway in System Settings > Privacy & Security.
  EOS
end
