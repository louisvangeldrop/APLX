#
javy compile aplWASM.js -o aplWASM.wasm
wasmtime .\aplWASM.wasm
.\wamrc -o aplWASM.aot aplWASM.wasm
.\iwasm .\aplWASM.aot