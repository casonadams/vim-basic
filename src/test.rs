#[macro_use]
extern crate log;

use std::collections::HashMap;
use std::rc::Rc;

mod stuff;

pub enum Flag {
    Good,
    Bad,
    Ugly
}

const QUALITY: Flag = Flag::Good;

struct Table<const N: usize>([[i32; N]; N])

pub trait Write {
    fn write(&mut self, buf: &[u8]) -> Result<usize>;
}

struct Object<T> {
    flag: Flag,
    fields: HashMap<T, u64>
}

union MyUnion {
    f1: u32,
    f2: f32,
}

type RcObject<T> = Rc<Object<T>>;

impl<T> Write for Object<T> {
    fn write(&mut self, buf: &[u8]) -> Result<usize> {
        let s = stuff::write_map(&self.fields, buf)?;
        info!("{} byte(s) written", s);
        Ok(s)
    }
}

impl<T> Default for Object<T> {
    fn default() -> Self {
        Object { flag: Flag::Good, fields: HashMap::new() }
    }
}

/* Block comment */
fn main() {
    // A simple integer calculator:
    // `+` or `-` means add or subtract by 1
    // `*` or `/` means multiply or divide by 2
    stuff::AppVersion::print();

    let input = Option::None;
    let program = input.unwrap_or_else(|| "+ + * - /");
    let mut accumulator = 0;

    for token in program.chars() {
        match token {
            '+' => accumulator += 1,
            '-' => accumulator -= 1,
            '*' => accumulator *= 2,
            '/' => accumulator /= 2,
            _ => { /* ignore everything else */ }
        }
    }

    info!("The program \"{}\" calculates the value {}",
             program, accumulator);
}

/// Some documentation `with code`
/// # Heading
/// [Rust](https://www.rust-lang.org/)
#[cfg(target_os="linux")]
unsafe fn a_function<T: 'lifetime>(count: &mut i64) -> ! {
    count += 1;
    'label: loop {
        println!("Hello\x20W\u{f3}rld!\u{abcdef}");
    }
}

fn test() {
    unsafe {
        a_function(1);
    }
}

