// Monadic Functions
function indexGenerator(omega) {
    try {
        // if (typeof omega === "number") {  length = omega } else { length = omega[0] }
        var length = typeof omega === 'number' ? omega : omega[0];
        var counter, results = new Array(length);
        for (counter = 0; counter < length; counter++) {
            results[counter] = counter;
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
}
//# sourceMappingURL=apl.js.map