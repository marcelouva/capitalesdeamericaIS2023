baseruby="/usr/bin/ruby --disable=gems"
_\
=begin
_=
ruby="${RUBY-$baseruby}"
case "$ruby" in "echo "*) $ruby; exit $?;; esac
case "$0" in /*) r=-r"$0";; *) r=-r"./$0";; esac
exec $ruby "$r" "$@"
=end
=baseruby
class Object
  remove_const :CROSS_COMPILING if defined?(CROSS_COMPILING)
  CROSS_COMPILING = RUBY_PLATFORM
  constants.grep(/^RUBY_/) {|n| remove_const n}
  RUBY_VERSION = "2.7.5"
  RUBY_RELEASE_DATE = "2021-11-24"
  RUBY_PLATFORM = "x86_64-linux"
  RUBY_PATCHLEVEL = 203
  RUBY_REVISION = "f69aeb83146be640995753667fdd6c6f157527f5"
  RUBY_COPYRIGHT = "ruby - Copyright (C) 1993-2021 Yukihiro Matsumoto"
  RUBY_ENGINE = "ruby"
  RUBY_ENGINE_VERSION = "2.7.5"
  RUBY_DESCRIPTION = RubyVM.const_defined?(:MJIT) && RubyVM::MJIT.enabled? ?
    "ruby 2.7.5p203 (2021-11-24 revision f69aeb8314) +JIT [x86_64-linux]" :
    "ruby 2.7.5p203 (2021-11-24 revision f69aeb8314) [x86_64-linux]"
end
builddir = File.dirname(File.expand_path(__FILE__))
srcdir = "."
top_srcdir = File.realpath(srcdir, builddir)
fake = File.join(top_srcdir, "tool/fake.rb")
eval(File.binread(fake), nil, fake)
ropt = "-r#{__FILE__}"
["RUBYOPT"].each do |flag|
  opt = ENV[flag]
  opt = opt ? ([ropt] | opt.b.split(/\s+/)).join(" ") : ropt
  ENV[flag] = opt
end
