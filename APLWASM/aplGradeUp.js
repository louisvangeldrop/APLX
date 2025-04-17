function gradeUp(arr) {
	// Maak een array van indices [0, 1, 2, ...]
	const indices = Array.from(arr.keys());

	// Sorteer de indices gebaseerd op de corresponderende waarden in de originele array
	indices.sort((a, b) => arr[a] - arr[b]);

	return indices;
}