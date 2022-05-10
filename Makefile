target/wasm32-unknown-unknown/debug/winternight.wasm: src/lib.rs
	cargo build
target/deno: target/wasm32-unknown-unknown/debug/winternight.wasm
	wasm-bindgen --target deno target/wasm32-unknown-unknown/debug/winternight.wasm --out-dir target/deno
