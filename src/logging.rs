use env_logger::fmt::Color;
use env_logger::{Builder, WriteStyle};
use log::Level;
use std::io::Write;
pub fn init_logging() {
    let mut builder = Builder::from_default_env();
    builder
        .write_style(WriteStyle::Auto)
        .format(|buf, record| {
            let mut level_style = buf.style();
            let mut brace_style = buf.style();
            let color = match record.level() {
                Level::Info => Color::Blue,
                Level::Warn => Color::Yellow,
                Level::Error => Color::Red,
                Level::Debug => Color::Ansi256(7), // Silver
                Level::Trace => Color::Ansi256(8), // Grey
            };
            level_style.set_color(color);
            brace_style.set_color(Color::Ansi256(8));
            writeln!(
                buf,
                "{}{} {:<5} {}:{}{} {}",
                brace_style.value("["),
                chrono::Utc::now().format("%Y-%m-%dT%H:%M:%S.%3fZ"),
                level_style.value(record.level()),
                record.module_path().unwrap_or_default(),
                record.line().unwrap_or(0),
                brace_style.value("]"),
                record.args()
            )
        })
        .init();
}
