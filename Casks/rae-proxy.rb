cask "rae-proxy" do
  version "1.3.2"
  sha256 "5c89db8817e925da4bbdcff8b01dd1093248a24d6fc1942842c72ed42c4f4f25"

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
