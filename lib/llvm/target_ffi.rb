# Generated by ffi_gen. Please do not change this file by hand.

require 'ffi'

module LLVM::C
  extend FFI::Library
  ffi_lib 'LLVM-3.0'

  # === Options:
  # :big::
  #   
  # :little::
  #   
  #
  # @return [Array of Symbols]
  def self.byte_ordering_enum
    [:big, :little]
  end
  enum :byte_ordering, [
    :big,
    :little
  ]

  # Creates target data from a target layout string.
  #     See the constructor llvm::TargetData::TargetData.
  # 
  # @method create_target_data(string_rep)
  # @param [String] string_rep 
  # @return [FFI::Pointer of TargetDataRef] 
  # @scope class
  attach_function :create_target_data, :LLVMCreateTargetData, [:string], :pointer

  # Adds target data information to a pass manager. This does not take ownership
  #     of the target data.
  #     See the method llvm::PassManagerBase::add.
  # 
  # @method add_target_data(target_data_ref, pass_manager_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @param [FFI::Pointer of PassManagerRef] pass_manager_ref 
  # @return [nil] 
  # @scope class
  attach_function :add_target_data, :LLVMAddTargetData, [:pointer, :pointer], :void

  # Adds target library information to a pass manager. This does not take
  #     ownership of the target library info.
  #     See the method llvm::PassManagerBase::add.
  # 
  # @method add_target_library_info(target_library_info_ref, pass_manager_ref)
  # @param [FFI::Pointer of TargetLibraryInfoRef] target_library_info_ref 
  # @param [FFI::Pointer of PassManagerRef] pass_manager_ref 
  # @return [nil] 
  # @scope class
  attach_function :add_target_library_info, :LLVMAddTargetLibraryInfo, [:pointer, :pointer], :void

  # Converts target data to a target layout string. The string must be disposed
  #     with LLVMDisposeMessage.
  #     See the constructor llvm::TargetData::TargetData.
  # 
  # @method copy_string_rep_of_target_data(target_data_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @return [String] 
  # @scope class
  attach_function :copy_string_rep_of_target_data, :LLVMCopyStringRepOfTargetData, [:pointer], :string

  # Returns the byte order of a target, either LLVMBigEndian or
  #     LLVMLittleEndian.
  #     See the method llvm::TargetData::isLittleEndian.
  # 
  # @method byte_order(target_data_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @return [Symbol from byte_ordering_enum] 
  # @scope class
  attach_function :byte_order, :LLVMByteOrder, [:pointer], :byte_ordering

  # Returns the pointer size in bytes for a target.
  #     See the method llvm::TargetData::getPointerSize.
  # 
  # @method pointer_size(target_data_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @return [Integer] 
  # @scope class
  attach_function :pointer_size, :LLVMPointerSize, [:pointer], :uint

  # Returns the integer type that is the same size as a pointer on a target.
  #     See the method llvm::TargetData::getIntPtrType.
  # 
  # @method int_ptr_type(target_data_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @return [FFI::Pointer of TypeRef] 
  # @scope class
  attach_function :int_ptr_type, :LLVMIntPtrType, [:pointer], :pointer

  # Computes the size of a type in bytes for a target.
  #     See the method llvm::TargetData::getTypeSizeInBits.
  # 
  # @method size_of_type_in_bits(target_data_ref, type_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @param [FFI::Pointer of TypeRef] type_ref 
  # @return [Integer] 
  # @scope class
  attach_function :size_of_type_in_bits, :LLVMSizeOfTypeInBits, [:pointer, :pointer], :ulong_long

  # Computes the storage size of a type in bytes for a target.
  #     See the method llvm::TargetData::getTypeStoreSize.
  # 
  # @method store_size_of_type(target_data_ref, type_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @param [FFI::Pointer of TypeRef] type_ref 
  # @return [Integer] 
  # @scope class
  attach_function :store_size_of_type, :LLVMStoreSizeOfType, [:pointer, :pointer], :ulong_long

  # Computes the ABI size of a type in bytes for a target.
  #     See the method llvm::TargetData::getTypeAllocSize.
  # 
  # @method abi_size_of_type(target_data_ref, type_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @param [FFI::Pointer of TypeRef] type_ref 
  # @return [Integer] 
  # @scope class
  attach_function :abi_size_of_type, :LLVMABISizeOfType, [:pointer, :pointer], :ulong_long

  # Computes the ABI alignment of a type in bytes for a target.
  #     See the method llvm::TargetData::getTypeABISize.
  # 
  # @method abi_alignment_of_type(target_data_ref, type_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @param [FFI::Pointer of TypeRef] type_ref 
  # @return [Integer] 
  # @scope class
  attach_function :abi_alignment_of_type, :LLVMABIAlignmentOfType, [:pointer, :pointer], :uint

  # Computes the call frame alignment of a type in bytes for a target.
  #     See the method llvm::TargetData::getTypeABISize.
  # 
  # @method call_frame_alignment_of_type(target_data_ref, type_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @param [FFI::Pointer of TypeRef] type_ref 
  # @return [Integer] 
  # @scope class
  attach_function :call_frame_alignment_of_type, :LLVMCallFrameAlignmentOfType, [:pointer, :pointer], :uint

  # Computes the preferred alignment of a type in bytes for a target.
  #     See the method llvm::TargetData::getTypeABISize.
  # 
  # @method preferred_alignment_of_type(target_data_ref, type_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @param [FFI::Pointer of TypeRef] type_ref 
  # @return [Integer] 
  # @scope class
  attach_function :preferred_alignment_of_type, :LLVMPreferredAlignmentOfType, [:pointer, :pointer], :uint

  # Computes the preferred alignment of a global variable in bytes for a target.
  #     See the method llvm::TargetData::getPreferredAlignment.
  # 
  # @method preferred_alignment_of_global(target_data_ref, global_var)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @param [FFI::Pointer of ValueRef] global_var 
  # @return [Integer] 
  # @scope class
  attach_function :preferred_alignment_of_global, :LLVMPreferredAlignmentOfGlobal, [:pointer, :pointer], :uint

  # Computes the structure element that contains the byte offset for a target.
  #     See the method llvm::StructLayout::getElementContainingOffset.
  # 
  # @method element_at_offset(target_data_ref, struct_ty, offset)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @param [FFI::Pointer of TypeRef] struct_ty 
  # @param [Integer] offset 
  # @return [Integer] 
  # @scope class
  attach_function :element_at_offset, :LLVMElementAtOffset, [:pointer, :pointer, :ulong_long], :uint

  # Computes the byte offset of the indexed struct element for a target.
  #     See the method llvm::StructLayout::getElementContainingOffset.
  # 
  # @method offset_of_element(target_data_ref, struct_ty, element)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @param [FFI::Pointer of TypeRef] struct_ty 
  # @param [Integer] element 
  # @return [Integer] 
  # @scope class
  attach_function :offset_of_element, :LLVMOffsetOfElement, [:pointer, :pointer, :uint], :ulong_long

  # Deallocates a TargetData.
  #     See the destructor llvm::TargetData::~TargetData.
  # 
  # @method dispose_target_data(target_data_ref)
  # @param [FFI::Pointer of TargetDataRef] target_data_ref 
  # @return [nil] 
  # @scope class
  attach_function :dispose_target_data, :LLVMDisposeTargetData, [:pointer], :void

end