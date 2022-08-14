# frozen_string_literal: true

# Gitopen Brew formula
class Gitopen < Formula
  desc 'Quickly open any Git repository remote as a link in your browser.'
  homepage 'https://github.com/Flexicon/gitopen'
  url 'https://github.com/Flexicon/gitopen/archive/v0.0.4.tar.gz'
  sha256 '2214a5b6e5cfcbd609a89387464017ee7f7b692fb0965700beeb18d1f941f5e3'
  license 'MIT'

  depends_on 'go@1.18' => :build

  pour_bottle? do
    reason 'Always compile from source.'
    satisfy { false }
  end

  def install
    system 'go', 'build', '-v', *std_go_args(ldflags: '-s -w'), '.'
    prefix.install_metafiles
  end

  test do
    assert_match 'gitopen v0.0.4', shell_output('gitopen version 2>&1')
  end
end
