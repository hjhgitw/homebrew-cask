cask "popsql" do
  version "1.0.118"
  sha256 :no_check

  url "https://get.popsql.com/download/mac"
  name "PopSQL"
  desc "Collaborative SQL editor"
  homepage "https://popsql.com/"

  livecheck do
    url "https://popsql-releases.s3.amazonaws.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "PopSQL.app"

  zap trash: [
    "~/.popsql.json",
    "~/Library/Application Support/PopSQL",
    "~/Library/Preferences/org.electron.popsql.plist",
    "~/Library/Saved Application State/org.electron.popsql.savedState",
  ]
end
