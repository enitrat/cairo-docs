# storage_write_syscall

Sets the value of a key in the storage of the calling contract. `address_domain` - The domain of the address. Only address_domain 0 is currently supported,in the future it will enable access to address spaces with different data availability
guarantees.
`address` - The address of the storage key to write.`value` - The value to write to the key.

Fully qualified path: `core::starknet::syscalls::storage_write_syscall`

```rust
pub extern fn storage_write_syscall(
    address_domain: u32, address: StorageAddress, value: felt252,
) -> SyscallResult<()> implicits(GasBuiltin, System) nopanic;
```

