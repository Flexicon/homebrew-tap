# frozen_string_literal: true

# Gitopen Brew formula
class Gitopen < Formula
  desc 'Quickly open any Git repository remote as a link in your browser.'
  homepage 'https://github.com/Flexicon/gitopen'
  url 'https://github.com/Flexicon/gitopen/archive/v0.0.3.tar.gz'
  sha256 '6b57262130ef0c50ea811d532f1d68e84380b4795df87ca78ed2a82675553cdb'
  license 'MIT'

  depends_on 'go@1.18' => :build

  def install
    system 'go', 'build', '-v', *std_go_args(ldflags: '-s -w'), '.'
    prefix.install_metafiles
  end

  test do
    assert_match 'gitopen v0.0.3', shell_output('gitopen version 2>&1')
  end
end
