# frozen_string_literal: true

# TWeather Brew formula
class Tweather < Formula
  desc '🤷‍♂️ ☔️'
  homepage 'https://github.com/Flexicon/tweather'
  url 'https://github.com/Flexicon/tweather/releases/download/v0.0.2/tweather-0.0.2.tar'
  sha256 'dc5593f00137d5f6f24105e0d088cfdc0bee123926b46fd597354093e62f79ee'
  license 'MIT'

  def install
    bin.install 'bin/tweather'
    prefix.install 'lib/'
    prefix.install_metafiles
  end
end
