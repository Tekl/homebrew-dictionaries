cask "beolingus-deutsch-englisch" do
  version "2024.07.14"
  sha256 "cb5a8357e3bfac66ad10aebc1fa2404debed32c08322c10ccd7616edf731295d"

  url "https://github.com/Tekl/beolingus-deutsch-englisch/releases/download/v#{version}/Beolingus_Deutsch-Englisch_dictionaryfile.zip",
      verified: "github.com/Tekl/beolingus-deutsch-englisch/"
  name "Beolingus Deutsch-Englisch Dictionary plugin"
  desc "Extends Apples Dictionary App with a German-English dictionary"
  homepage "https://tekl.de/lexikon-plug-ins/beolingus-deutsch-englisch-lexikon-plugin"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"

  dictionary "Beolingus Deutsch-Englisch.dictionary"

  # No zap stanza required
end
