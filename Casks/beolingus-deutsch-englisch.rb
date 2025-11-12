cask "beolingus-deutsch-englisch" do
  version "2025.03.24"
  sha256 "dba62bffe4737d9d0b2ec2dfc5f9db25ad4e8da654f934e555abc6c2173d43fa"

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
