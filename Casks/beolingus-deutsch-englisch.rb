cask "beolingus-deutsch-englisch" do
  version "2024.01.19"
  sha256 "6bf6d9d86014a04421d5b44fe5a34f54338c87e10afb9a5cf50fc9940b420644"

  url "https://github.com/Tekl/beolingus-deutsch-englisch/releases/download/v#{version}/BeoLingus_Deutsch-Englisch_dictionaryfile.zip",
      verified: "github.com/Tekl/beolingus-deutsch-englisch/"
  name "BeoLingus Deutsch-Englisch Dictionary plugin"
  desc "Extends Apples Dictionary App with a German-English dictionary"
  homepage "https://tekl.de/lexikon-plug-ins/beolingus-deutsch-englisch-lexikon-plugin"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"

  dictionary "BeoLingus Deutsch-Englisch.dictionary"

  # No zap stanza required
end
