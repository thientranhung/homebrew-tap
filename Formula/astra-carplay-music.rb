class AstraCarplayMusic < Formula
  desc "Mix TTS audio x background music for CarPlay via ElevenLabs API"
  homepage "https://github.com/thientranhung/astraler-carplay-music"
  url "https://github.com/thientranhung/astraler-carplay-music/releases/download/v2.0.0/astra-carplay-music-vv2.0.0-macos.tar.gz"
  sha256 "2e295ae521825f756750cfba0023d2644d1935edc8534e69fad0ac00697ec010"
  version "2.0.0"

  depends_on "ffmpeg"

  def install
    bin.install "astra-carplay-music"
  end

  test do
    assert_match "astra-carplay-music v2.0.0", shell_output("#{bin}/astra-carplay-music --version")
  end
end
