use serde::{Deserialize, Serialize};
use std::fs::File;
use std::io::prelude::*;
use std::path::Path;

use std::error::Error;
use tinytemplate::TinyTemplate;

#[derive(Serialize)]
struct Context {
    foreground: String,
    visual: String,
}

#[derive(Serialize)]
struct Object {
    name: String,
    gui: String,
    fg: String,
    bg: String,
}

#[derive(Deserialize, Serialize)]
struct Template {
    foreground: String,
    background: String,
    visual: String,
    normal: Colors,
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

fn main() -> Result<(), Box<dyn Error>> {
    let mut tt = TinyTemplate::new();
    let s = read_file_to_string("template.vim");
    let t = read_file_to_string("colors.toml");
    let c: Template = toml::from_str(&t)?;

    tt.add_template("vim", &s)?;

    let context = Template {
        foreground: c.foreground,
        background: c.background,
        visual: c.visual,
        normal: c.normal,
        bright: c.bright,
    };

    let rendered = tt.render("vim", &context)?;
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
