cask "beolingus-deutsch-englisch" do
  version "2024.11.09"
  sha256 "27ebef40a7d8ca9c354839a1452d90e40ec6f7e279341a7580ccbb1d1ff171f3"

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
