use serde::{Deserialize, Serialize};
use std::fs::File;
use std::io::prelude::*;
use std::path::Path;

use std::error::Error;
use tinytemplate::TinyTemplate;

mod logging;

const TEST: &str = "";

#[derive(Deserialize, Serialize)]
struct Template {
    light: Scheme,
    dark: Scheme,
}

#[derive(Deserialize, Serialize)]
struct Scheme {
    foreground: String,
    background: String,
    operator: String,
    normal: Colors,
    terminal: TermColors,
    bright: Colors,
}

#[derive(Deserialize, Serialize)]
struct Colors {
    black: String,
    red: String,
    green: String,
    yellow: String,
    blue: String,
    magenta: String,
    cyan: String,
    white: String,
}

#[derive(Deserialize, Serialize)]
struct TermColors {
    color_00: String,
    color_01: String,
    color_02: String,
    color_03: String,
    color_04: String,
    color_05: String,
    color_06: String,
    color_07: String,
    color_08: String,
    color_09: String,
    color_10: String,
    color_11: String,
    color_12: String,
    color_13: String,
    color_14: String,
    color_15: String,
}

fn main() -> Result<(), Box<dyn Error>> {
    logging::init_logging();
    let mut tt = TinyTemplate::new();
    let s = read_file_to_string("template.vim");
    let t = read_file_to_string("colors.toml");
    let c: Template = toml::from_str(&t)?;

    tt.add_template("vim", &s)?;
    let i: i32 = 12;
    let rendered = tt.render("vim", &c)?;
    println!("{}", rendered);

    Ok(())
}

fn read_file_to_string(file_name: &str) -> String {
    // Create a path to the desired file
    let path = Path::new(file_name);
    let display = path.display();

    // Open the path in read-only mode, returns `io::Result<File>`
    let mut file = match File::open(&path) {
        Err(why) => panic!("couldn't open {}: {}", display, why),
        Ok(file) => file,
    };

    // Read the file contents into a string, returns `io::Result<usize>`
    let mut s = String::new();
    match file.read_to_string(&mut s) {
        Err(why) => panic!("couldn't read {}: {}", display, why),
        Ok(_) => s,
    }
}
