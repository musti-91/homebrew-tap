cask "rae-proxy" do
  version "1.3.1"
  sha256 "c520fb007c53abefc1f31d5d4abbd6b012a018d6251afe21b4684d40abe0bf35"

  url "https://github.com/musti-91/reaProxy/releases/download/#{version}/RaeProxy-#{version}-arm64.dmg"
  name "Rae Proxy"
  desc "HTTP/HTTPS debugging proxy"
  homepage "https://github.com/musti-91/reaProxy"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Rae Proxy.app"

  zap trash: [
    "~/Library/Application Support/Rae Proxy",
    "~/Library/Preferences/app.rae.proxy.plist",
  ]
end
