# frozen_string_literal: true

# TWeather Brew formula
class TWeather < Formula
  desc '🤷‍♂️ ☔️'
  homepage 'https://github.com/Flexicon/tweather'
  url 'https://github.com/Flexicon/tweather/releases/download/v0.0.1/tweather-0.0.1.tar'
  sha256 '83cca03aafd215562a8c18da4dcec8daa02a2d78aad44270d222d0ac08862662'
  license 'MIT'

  pour_bottle? do
    reason 'Always compile from source.'
    satisfy { false }
  end

  def install
    system 'ln', '-s', './tweather-0.0.1/bin/tweather', './tweather'
    prefix.install 'tweather'
    prefix.install Dir['tweather-0.0.1/*']
    prefix.install_metafiles
  end

  # test do
  #   assert_match 'gitopen v0.0.4', shell_output('gitopen version 2>&1')
  # end
end

