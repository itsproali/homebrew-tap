cask "makitro" do
  version "0.9.3"
  sha256 "b8d405a0116b581f6c9b502cd2651bf52197024ba857de2e1cd275ec37585e35"

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
