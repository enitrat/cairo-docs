fn foo_1() {
    //ANCHOR:ex_1
    // Make `optional` of type `Option<i32>`
    let optional = Some(7_i32);

    match optional {
        Some(i) => println!("This is a really long string and `{:?}`", i),
        _ => {},
        // ^ Required because `match` is exhaustive. Doesn't it seem
    // like wasted space?
    };
    //ANCHOR_END:ex_1
}

//ANCHOR:main
fn main() {
    // All have type `Option<i32>`
    let number = Some(7_i32);
    let letter: Option<i32> = None;
    let emoticon: Option<i32> = None;

    // The `if let` construct reads: "if `let` destructures `number` into
    // `Some(i)`, evaluate the block (`{}`).
    if let Some(i) = number {
        println!("Matched {:?}!", i);
    }

    // If you need to specify a failure, use an else:
    if let Some(i) = letter {
        println!("Matched {:?}!", i);
    } else {
        // Destructure failed. Change to the failure case.
        println!("Didn't match a number. Let's go with a letter!");
    }

    // Provide an altered failing condition.
    let i_like_letters = false;

    if let Some(i) = emoticon {
        println!("Matched {:?}!", i);
        // Destructure failed. Evaluate an `else if` condition to see if the
    // alternate failure branch should be taken:
    } else if i_like_letters {
        println!("Didn't match a number. Let's go with a letter!");
    } else {
        // The condition evaluated false. This branch is the default:
        println!("I don't like letters. Let's go with an emoticon :)!");
    }
}
//ANCHOR_END:main


