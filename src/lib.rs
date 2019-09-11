extern crate rodio;
use std::ffi::CStr;
use std::fs::File;
use std::io::BufReader;
use std::os::raw::c_char;
use std::thread;
use std::time::Duration;

#[no_mangle]
pub extern "C" fn play_once(ptr: *const c_char) {
    let cstr = unsafe { CStr::from_ptr(ptr) };
    let device = rodio::default_output_device().unwrap(); // instantiate rodio with the default speaker
    let file = File::open(cstr.to_str().unwrap()).unwrap(); // open file named beep.wav
    rodio::play_once(&device, BufReader::new(file)).unwrap(); // play audio
    thread::sleep(Duration::from_millis(1500)); // wait 1.5 s until stop playing
}
