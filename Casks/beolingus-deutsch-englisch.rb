cask "beolingus-deutsch-englisch" do
  version "2026.01.06"
  sha256 "a85b47a13c49ffe8e57100e6666abdbd110fa0f129b505821e604a8daf9daf3b"

  url "https://github.com/Tekl/beolingus-deutsch-englisch/releases/download/v#{version}/Beolingus_Deutsch-Englisch_dictionaryfile.zip",
      verified: "github.com/Tekl/beolingus-deutsch-englisch/"
  name "Beolingus Deutsch-Englisch Dictionary plugin"
  desc "Extends Apples Dictionary App with a German-English dictionary"
  homepage "https://tekl.de/lexikon-plug-ins/beolingus-deutsch-englisch-lexikon-plugin"

  livecheck do
    url :url
    strategy :github_latest
  end

  dictionary "Beolingus Deutsch-Englisch.dictionary"

  # No zap stanza required
end
