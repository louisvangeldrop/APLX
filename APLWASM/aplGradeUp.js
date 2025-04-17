function gradeUp(arr) {
	// Maak een array van indices [0, 1, 2, ...]
	const indices = Array.from(arr.keys());

	// Sorteer de indices gebaseerd op de corresponderende waarden in de originele array
	indices.sort((a, b) => arr[a] - arr[b]);

	return indices;
}

function indexGenerator(alpha) {
	return Array.from({ length: alpha }, (_, i) => i);
}

function deal(m, n) {
	// Controleer of de invoer geldig is
	if (m > n) throw new Error("m cannot be greater than n");
	if (m < 0 || n < 0) throw new Error("m and n must be non-negative");

	// Maak een array met getallen van 1 tot n
	const pool = Array.from({ length: n }, (_, i) => i + 1);

	// Fisher-Yates shuffle algoritme voor de eerste m elementen
	for (let i = 0; i < m; i++) {
		const j = i + Math.floor(Math.random() * (n - i));
		[pool[i], pool[j]] = [pool[j], pool[i]];
	}

	// Return alleen de eerste m elementen
	return pool.slice(0, m);
}
