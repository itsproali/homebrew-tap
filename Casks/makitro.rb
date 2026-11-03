cask "makitro" do
  version "0.9.0"
  sha256 "54ad559b0b4cfd381f00a0781765b91bcdee5e4ea497718527f6d7e1dfe53232"

  url "https://github.com/itsproali/makitro/releases/download/v#{version}/Makitro-#{version}.dmg",
      verified: "github.com/itsproali/makitro/"
  name "Makitro"
  desc "Menu-bar toolkit: clipboard history, scroll reverser, color picker"
  homepage "https://makitro.mdali.dev/"

  livecheck do
    url "https://makitro.mdali.dev/appcast.xml"
    strategy :sparkle
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
