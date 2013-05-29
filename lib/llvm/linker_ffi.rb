# Generated by ffi_gen. Please do not change this file by hand.

require 'ffi'

module LLVM::C
  extend FFI::Library
  ffi_lib 'LLVM-3.3'
  
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  # (Not documented)
  # 
  # <em>This entry is only for documentation and no real method. The FFI::Enum can be accessed via #enum_type(:linker_mode).</em>
  # 
  # === Options:
  # :linker_destroy_source ::
  #   
  # 
  # @method _enum_linker_mode_
  # @return [Symbol]
  # @scope class
  enum :linker_mode, [
    :linker_destroy_source, 0
  ]
  
  # Links the source module into the destination module, taking ownership
  # of the source module away from the caller. Optionally returns a
  # human-readable description of any errors that occurred in linking.
  # OutMessage must be disposed with LLVMDisposeMessage. The return value
  # is true if an error occurred, false otherwise.
  # 
  # @method link_modules(dest, src, mode, out_message)
  # @param [FFI::Pointer(ModuleRef)] dest 
  # @param [FFI::Pointer(ModuleRef)] src 
  # @param [Symbol from _enum_linker_mode_] mode 
  # @param [FFI::Pointer(**CharS)] out_message 
  # @return [Integer] 
  # @scope class
  attach_function :link_modules, :LLVMLinkModules, [:pointer, :pointer, :linker_mode, :pointer], :int
  
end
