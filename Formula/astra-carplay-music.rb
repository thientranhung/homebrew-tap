class AstraCarplayMusic < Formula
  desc "Ghép file TTS × BG music cho CarPlay, xuất ra _output/"
  homepage "https://github.com/thientranhung/astraler-carplay-music"
  url "https://github.com/thientranhung/astraler-carplay-music/releases/download/v1.0.0/astra-carplay-music-v1.0.0-macos.tar.gz"
  sha256 "b5bb0be048b377b077d6f6410954e859fea5fe631373139e3ab2e38c13fe1c1d"
  version "1.0.0"

  depends_on "ffmpeg"

  def install
    bin.install "astra-carplay-music"
  end

  test do
    assert_match "astra-carplay-music 1.0.0", shell_output("#{bin}/astra-carplay-music --version")
  end
end
