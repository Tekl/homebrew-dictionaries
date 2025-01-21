cask "beolingus-deutsch-englisch" do
  version "2025.01.21"
  sha256 "40fceb27e677255076172f43b55bde5775f348ce178771c43cba4e4becb37707"

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
