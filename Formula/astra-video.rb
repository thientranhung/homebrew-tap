class AstraVideo < Formula
  desc "CLI for producing storyboard-based social video variants"
  homepage "https://github.com/thientranhung/UAVideo-Variant-Factory"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/thientranhung/homebrew-tap/releases/download/v#{version}/astra-video_#{version}_Darwin_arm64.tar.gz"
      sha256 "d78e0c0b237fc8c17efc0feb6c5b43dfeaac2dca8109dc06bebf2361f434668d"
    end

    on_intel do
      url "https://github.com/thientranhung/homebrew-tap/releases/download/v#{version}/astra-video_#{version}_Darwin_x86_64.tar.gz"
      sha256 "297c570ab7afb7f7850a1dc5c117f4c77ae0fdfea046edffb27ac19db135dc04"
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
