# pop_log

Pop the earliest unpopped logged event for the contract as the requested type.  # Arguments  `address` - The contract address from which to pop an event.  Should be used when the type of the event is known. Type of the event should be the event defined within the contract. Useful for testing the contract's event emission. May be called multiple times to pop multiple events. If called until `None` is returned, all events have been popped.  # Examples
```cairo
#[starknet::contract]
mod contract {
   #[event]
   #[derive(Copy, Drop, Debug, PartialEq, starknet::Event)]
   pub enum Event {
      Event1: felt252,
      Event2: u128,
   }
   ...
}

#[test]
fn test_event() {
    let contract_address = somehow_get_contract_address();
    call_code_causing_events(contract_address);
    assert_eq!(
        starknet::testing::pop_log(contract_address), Option::Some(contract::Event::Event1(42))
    );
    assert_eq!(
        starknet::testing::pop_log(contract_address), Option::Some(contract::Event::Event2(41))
    );
    assert_eq!(
        starknet::testing::pop_log(contract_address), Option::Some(contract::Event::Event1(40))
    );
    assert_eq!(starknet::testing::pop_log_raw(contract_address), Option::None);
}
```

Fully qualified path: `core::starknet::testing::pop_log`

```rust
pub fn pop_log<T, +starknet::Event<T>>(address: ContractAddress) -> Option<T>
```

