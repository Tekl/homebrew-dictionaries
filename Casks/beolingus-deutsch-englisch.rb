cask "beolingus-deutsch-englisch" do
  version "2024.05.14"
  sha256 "bfc57978dad1dcbe73dcb68b17becd597b7d712bbc29cc22905caaf712ee8ebc"

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
