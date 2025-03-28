async function run() {
	// Importeer het .wasm-bestand als een ES-module
	const grok = await import('./apltyped.grok.wasm');
	const length = 1e6
	var ai = performance.now(); var rc = grok.main(1, length); ai = performance.now() - ai
	var memoryArray = new Int32Array(grok.memory.buffer)
	var dd = memoryArray.slice(rc[1] / 4, rc[1] / 4 + length)
	var indices = memoryArray.slice(rc[0] / 4, rc[0] / 4 + length)
	var test = rc[2]
	grok.reset_heap()
	console.log(ai)
	console.log(test)
}
// node --experimental-wasm-modules apltyped.grok.run.js
run().catch(console.error);