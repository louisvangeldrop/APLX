#
javy compile aplWASM.js -o aplWASM.wasm
wasmtime .\aplWASM.wasm
.\wamrc -o aplWASM.aot aplWASM.wasm
.\iwasm .\aplWASM.aot


porf -t apltyped.ts 
porf native apltyped.ts apltyped.exe  -O2 --compiler=clang-cl --module --no-pgo
wasmedge --enable-all apltyped.wasm m/main 0, 128, 0, 128, 1000, 1, 7281, 1
wasmtime --invoke main apltyped.grok.wasm 10 1000000

node --experimental-wasm-modules

GROK:

clang quicksort.grok.c -o quicksort.grok.exe -O3   -ffast-math -fno-exceptions -fno-ident -fno-asynchronous-unwind-tables -ffunction-sections -fdata-sections 

vertaal apltyped.ts naar C.
clang -o apltyped.exe apltyped.c

vertaal apltyped.c naar wat
wat2wasm apltyped.wat -o apltyped.wasm