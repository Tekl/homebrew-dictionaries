cask "openthesaurus-deutsch" do
  version "2024.07.14"
  sha256 "4ddb3b63f7f8d60fe67668017e6f04f8a8c525b12d5bdbbff37743519ef97dea"

  url "https://github.com/Tekl/openthesaurus-deutsch/releases/download/v#{version}/OpenThesaurus_Deutsch_dictionaryfile.zip",
      verified: "github.com/Tekl/openthesaurus-deutsch/"
  name "OpenThesaurus Deutsch Dictionary plugin"
  desc "Extends Apples Dictionary App with a German thesaurus"
  homepage "https://tekl.de/lexikon-plug-ins/openthesaurus-deutsch-lexikon-plugin"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"

  dictionary "OpenThesaurus Deutsch.dictionary"

  # No zap stanza required
end
