# frozen_string_literal: true

# TWeather Brew formula
class Tweather < Formula
  desc '🤷‍♂️ ☔️'
  homepage 'https://github.com/Flexicon/tweather'
  url 'https://github.com/Flexicon/tweather/releases/download/v0.0.1/tweather-0.0.1.tar'
  sha256 '83cca03aafd215562a8c18da4dcec8daa02a2d78aad44270d222d0ac08862662'
  license 'MIT'

  def install
    prefix.install 'bin/', 'lib/'
    prefix.install_metafiles
  end
end
