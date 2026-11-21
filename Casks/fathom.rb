cask "fathom" do
  version "0.8.2"
  sha256 "785fdad4b3146d4dea313753968278d0bdad156890ed1b2a93afc09f2a651843"

  url "https://cleveral.pl/downloads/fathom/Fathom-#{version}.dmg"
  name "Fathom"
  desc "Native viewer for log files"
  homepage "https://cleveral.pl/en/portfolio/fathom/"

  livecheck do
    url "https://cleveral.pl/downloads/fathom/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Fathom.app"

  zap trash: [
    "~/Library/Application Scripts/pl.cleveral.fathom",
    "~/Library/Containers/pl.cleveral.fathom",
  ]

  caveats <<~EOS
    Fathom is not signed with an Apple Developer ID yet, so macOS blocks the
    first launch. To open it:

      1. Open Fathom. macOS says it cannot verify the app. Click Done.
      2. Open System Settings > Privacy & Security. Scroll to the message
         about Fathom and click Open Anyway.
      3. Confirm with your password or Touch ID.

    You do this once. Fathom installs its own updates after that.
  EOS
end
