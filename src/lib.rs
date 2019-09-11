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
    let device = rodio::default_output_device().unwrap();

    let file = File::open(cstr.to_str().unwrap()).unwrap();
    let beep1 = rodio::play_once(&device, BufReader::new(file)).unwrap();
    beep1.set_volume(0.2);
    println!("Started beep1");

    thread::sleep(Duration::from_millis(1500));
}
