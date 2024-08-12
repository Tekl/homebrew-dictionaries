cask "beolingus-deutsch-englisch" do
  version "2024.08.12"
  sha256 "b6aa07cc6233f25ec892871a55585a272b6424455e0cfdeff50add045a7592e7"

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
