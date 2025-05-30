# poseidon_hash_span

Computes the Poseidon hash on the given span input. Applies the sponge construction to digest many elements. To distinguish between use cases, the capacity element is initialized to 0. To distinguish between different input sizes always pads with 1, and possibly with another 0 to complete to an even-sized input.  # Examples
```cairo
let span = [1, 2].span();
let hash = poseidon_hash_span(span);

assert!(hash == 0x0371cb6995ea5e7effcd2e174de264b5b407027a75a231a70c2c8d196107f0e7);
```

Fully qualified path: `core::poseidon::poseidon_hash_span`

```rust
pub fn poseidon_hash_span(mut span: Span<felt252>) -> felt252
```

