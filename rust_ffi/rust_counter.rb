require 'ffi'

module Hello
  extend FFI::Library
  ffi_lib 'embed/target/release/libembed.dylib'
  attach_function :process, [], :void
end

Hello.process

puts 'done!'
