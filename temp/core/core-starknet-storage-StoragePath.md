# StoragePath

An intermediate struct to store a hash state, in order to be able to hash multiple values and get the final address. Storage path should have two interfaces, if T is storable then it should implement `StorageAsPointer` in order to be able to get the address of the storage path. Otherwise, if T is not storable then it should implement some kind of updating trait, e.g. `StoragePathEntry`.

Fully qualified path: `core::starknet::storage::StoragePath`

```rust
pub struct StoragePath<T> {
    __hash_state__: StoragePathHashState,
}
```

