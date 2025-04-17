// index.js
import fs from 'fs/promises'; // Gebruik ESM fs voor asynchroon bestand lezen

const imports = {
	env: {
		newArray: (length) => {
			const arr = new Array(length);
			arr.push(length); // Store length as last element
			return arr;
		},
		getArrayElement: (array, index) => {
			if (index === -1) return array.length - 1; // Special case voor lengte
			return array[index];
		},
		setArrayElement: (array, index, value) => {
			array[index] = value;
		}
	}
};

async function run() {
	try {
		// Lees het WASM-bestand handmatig
		const wasmBuffer = await fs.readFile('./apltyped.jco.wasm');

		// Compileer de WebAssembly-module
		const wasmModule = await WebAssembly.compile(wasmBuffer);

		// Instantieer de module met de imports
		const wasmInstance = await WebAssembly.instantiate(wasmModule, imports);

		// Haal de exports op
		const { indexGenerator, gradeUp, deal, from, main } = wasmInstance.exports;

		const length = 10;
		const n = 5;
		const result = main(n, length);

		console.log('Result from main:', result);

		const alpha = indexGenerator(3);
		const omega = deal(5, 5);
		const z = from(alpha, omega);
		console.log('From result:', z);
	} catch (error) {
		console.error('Error:', error);
	}
}

run();