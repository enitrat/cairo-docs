# U128MulGuarantee

A type that contains 4 u128s (a, b, c, d) and guarantees that `a * b = 2**128 * c + d`.  The guarantee is verified by `u128_mul_guarantee_verify`, which is the only way to destruct this type. This way, one can trust that the guarantee holds although it has not yet been verified.

Fully qualified path: `core::integer::U128MulGuarantee`

```rust
pub extern type U128MulGuarantee
```

