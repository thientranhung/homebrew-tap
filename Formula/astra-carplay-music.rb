class AstraCarplayMusic < Formula
  desc "Ghép file TTS × BG music cho CarPlay, xuất ra _output/"
  homepage "https://github.com/thientranhung/astraler-carplay-music"
  url "https://github.com/thientranhung/astraler-carplay-music/releases/download/v1.0.0/astra-carplay-music-v1.0.0-macos.tar.gz"
  sha256 "f3786f25940e098d7de9ab54847591836941d15f03d7e9e27b81b91278002d28"
  version "1.0.0"

  depends_on "ffmpeg"

  def install
    bin.install "astra-carplay-music"
  end

  test do
    assert_match "astra-carplay-music 1.0.0", shell_output("#{bin}/astra-carplay-music --version")
  end
end
