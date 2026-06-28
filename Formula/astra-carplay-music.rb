class AstraCarplayMusic < Formula
  desc "Ghép file TTS × BG music cho CarPlay, xuất ra _output/"
  homepage "https://github.com/thientranhung/astraler-carplay-music"
  url "https://github.com/thientranhung/astraler-carplay-music/releases/download/v1.0.0/astra-carplay-music-v1.0.0-macos.tar.gz"
  sha256 "7acd80c0350eec0763897e9a063e4351bd2bb25eb79301833f63bb03d8e9db5b"
  version "1.0.0"

  depends_on "ffmpeg"

  def install
    bin.install "astra-carplay-music"
  end

  test do
    assert_match "astra-carplay-music 1.0.0", shell_output("#{bin}/astra-carplay-music --version")
  end
end
