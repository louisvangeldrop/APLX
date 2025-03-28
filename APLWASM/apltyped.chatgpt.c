#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include <stdbool.h>

int* indexGenerator(int alpha) {
    int* results = (int*)malloc(alpha * sizeof(int));
    for (int counter = 0; counter < alpha; counter++) {
        results[counter] = counter;
    }
    return results;
}

int* gradeUp(int* alpha, int* indices, int low, int high) {
    if (high <= low) return indices;
    
    int mid = (low + high) / 2;
    int midValue = alpha[indices[mid]];
    int t1, t2, i = low, j = high;
    bool t3, t4;
    
    while (i <= j) {
        t1 = indices[i];
        t2 = indices[j];
        t3 = alpha[t1] >= midValue;
        t4 = alpha[t2] <= midValue;
        
        if (t3 && t4) {
            indices[i] = t2;
            indices[j] = t1;
            i++;
            j--;
        } else {
            if (!t3) i++;
            if (!t4) j--;
        }
    }
    
    gradeUp(alpha, indices, low, j);
    gradeUp(alpha, indices, i, high);
    return indices;
}

int* deal(int l, int r) {
    int* results = indexGenerator(l);
    int h, j;
    
    for (int i = 0; i < r; i++) {
        j = i + rand() % (l - i);
        h = results[i];
        results[i] = results[j];
        results[j] = h;
    }
    
    int* sliced = (int*)malloc(r * sizeof(int));
    for (int i = 0; i < r; i++) {
        sliced[i] = results[i];
    }
    free(results);
    return sliced;
}

int* from(int* alpha, int alpha_len, int* omega, int omega_len) {
    int* z = (int*)malloc(alpha_len * sizeof(int));
    for (int i = 0; i < alpha_len; i++) {
        int idx = alpha[i] >= 0 ? alpha[i] : (omega_len + alpha[i]);
        z[i] = omega[idx];
    }
    return z;
}

void main_func(int n, int length) {
    int* dd = deal(length, length);
    int* indexes = indexGenerator(length);
    
    clock_t start = clock();
    for (int i = 0; i < n; i++) {
        indexes = gradeUp(dd, indexes, 0, length - 1);
    }
    double time_spent = (double)(clock() - start) / CLOCKS_PER_SEC * 1000;
    
    printf("%f\n", time_spent);
    
    bool test = true;
    for (int x = 0; x < length; x++) {
        test = test && (dd[indexes[x]] == x);
    }
    printf("%d\n", test);
    printf("%d\n", dd[indexes[length - 1]]);
    
    free(dd);
    free(indexes);
}

int main() {
    int length = 1e6;
    int n = 10;
    main_func(n, length);
    return 0;
}
