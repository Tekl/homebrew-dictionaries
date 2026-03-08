cask "beolingus-deutsch-englisch" do
  version "2026.03.07"
  sha256 "b1881a8827ff400672426871df83f5951eb0a8791378bb71efcca2c6658b14ad"

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
