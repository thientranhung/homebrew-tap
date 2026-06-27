class AstraVideo < Formula
  desc "CLI for producing storyboard-based social video variants"
  homepage "https://github.com/thientranhung/UAVideo-Variant-Factory"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/thientranhung/homebrew-tap/releases/download/v#{version}/astra-video_#{version}_Darwin_arm64.tar.gz"
      sha256 "a8a998464dbcdfaaca6ab77e7466b1d380675310a126447073180feeaeb96c97"
    end

    on_intel do
      url "https://github.com/thientranhung/homebrew-tap/releases/download/v#{version}/astra-video_#{version}_Darwin_x86_64.tar.gz"
      sha256 "29b5a50b950b9d5cf43857ceb6b502cac9e04538174ddb49af74334525fed0e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thientranhung/homebrew-tap/releases/download/v#{version}/astra-video_#{version}_Linux_arm64.tar.gz"
      sha256 "5d6fb1243dc0ead42b1c62b73f274c813daa80ab2a350fc49887d91e4ea4f857"
    end

    on_intel do
      url "https://github.com/thientranhung/homebrew-tap/releases/download/v#{version}/astra-video_#{version}_Linux_x86_64.tar.gz"
      sha256 "6ddb66b2d17d69a75305d8f2af730121c20a5acdad0978a738a673aa40fecde6"
    end
  end

  def install
    bin.install "astra-video"
  end

  test do
    system "#{bin}/astra-video", "--version"
  end

  def caveats
    <<~EOS
      Run astra-video --help to inspect the production workflow.
      Rendering requires ffmpeg, ffprobe, Node.js, npm, npx, and HyperFrames.
    EOS
  end
end
