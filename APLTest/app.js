var APLXTest = (function () {
    function APLXTest(element) {
        this.element = element;
        this.element.innerHTML += "De tijd is: ";
        this.span = document.createElement('span');
        this.element.appendChild(this.span);
        this.span.innerText = new Date().toUTCString();
        this.spanCPU = document.createElement('span');
        this.element.appendChild(this.spanCPU);
        this.spanCPU.innerHTML = "<br/>";
    }
    APLXTest.prototype.start = function () {
        var _this = this;
        var vector = Dyadic.Vector;
        var scalar = Dyadic.Scalar;
        var parms = location.search.split('?');
        var aantal = parms.length > 1 ? parseFloat(parms[1].replace('/', ' ')) : 5e6;
        var spanCPU = this.spanCPU;
        var nestedArray = [4, 5][APLPrefix + "indexGenerator"];
        var range1tot10 = ((10)[APLPrefix + "indexGenerator"]).plus(1);
        var testje = [3, 4, 5][APLPrefix + "aplReduce"](scalar.minus);
        this.spanCPU.innerHTML += "\n Aantal elementen = " + aantal + " <br />";
        var t0;
        var startPerformance = performance.now();
        var dd;
        var cc;
        var rr;
        var ev = eval('(10).indexGenerator');
        rr = range1tot10.domino(range1tot10);
        cc = [2, 2, 2, 2].decode([1, 2, 3, 4]);
        dd = cc.encode([2, 2, 2, 2]);
        rr = (2).pick([1, 2, 3]);
        rr = (-3).take(dd);
        rr = ([1, 0, 2, 1]).replicate([3, 4, 5, 6]);
        rr = [true, false, false, true].replicate([3, 4, 5, 6]);
        rr = [1, 2, 3, 4, 1].unique;
        rr = [1, 0, 1, 1].expand([1, 2, 3]);
        showPerformance(spanCPU, performance.now(), 'deal', dd = aantal[APLPrefix + "deal"](aantal));
        showPerformance(spanCPU, performance.now(), 'reshape', rr = (aantal[APLPrefix + "reshape"](dd)));
        showPerformance(spanCPU, performance.now(), 'depth', cc = dd[APLPrefix + "depth"]);
        showPerformance(spanCPU, performance.now(), 'depthLength', cc = dd[APLPrefix + "depthLength"]);
        showPerformance(spanCPU, performance.now(), 'enlist', dd = dd[APLPrefix + "enlist"]);
        showPerformance(spanCPU, performance.now(), 'unique', dd = dd[APLPrefix + "unique"]);
        showPerformance(spanCPU, performance.now(), 'from', rr = dd[APLPrefix + 'from'](dd));
        var apldd;
        var aplVector = new APL.Vector(null, 10);
        aplVector.shape = 100;
        showPerformance(spanCPU, performance.now(), 'APLVector', apldd = new APL.Vector(dd));
        showPerformance(spanCPU, performance.now(), "signum", dd.signum);
        showPerformance(spanCPU, performance.now(), "identity", dd.same);
        t0 = performance.now();
        try {
            showPerformance(spanCPU, performance.now(), 'gradeup/down', dd.gradeUp);
        }
        catch (err) { }
        finally { }
        var cpuGradeUp = performance.now() - t0;
        var tn = 10..plus(9);
        showPerformance(spanCPU, performance.now(), "negate", dd.negative);
        showPerformance(spanCPU, performance.now(), "times", dd.times(dd));
        showPerformance(spanCPU, performance.now(), "divide", dd.divide(dd));
        showPerformance(spanCPU, performance.now(), "map -alpha", dd.map(function (alpha) { return -alpha; }));
        showPerformance(spanCPU, performance.now(), 'ceiling', dd.ceiling);
        showPerformance(spanCPU, performance.now(), 'rotate', [-10].rotate(dd));
        showPerformance(spanCPU, performance.now(), "Array.reduceRight", dd.reduceRight(scalar.plus));
        showPerformance(spanCPU, performance.now(), "Array.APLreduce", dd.aplReduce(scalar.minus));
        var totalCpu = performance.now() - startPerformance;
        this.spanCPU.innerHTML += "\n totale CPU-tijd: " + totalCpu + "<br />";
        this.spanCPU.innerHTML += "\n totale CPU-tijd-gradeUp: " + (totalCpu - cpuGradeUp) + "<br />";
        this.timerToken = setInterval(function () { return _this.span.innerHTML = new Date().toUTCString(); }, 500);
    };
    APLXTest.prototype.stop = function () {
        clearTimeout(this.timerToken);
    };
    return APLXTest;
}());
var showPerformance = function (spanCPU, performanceNow, text, expression) {
    console.time("");
    var t0 = performance.now() - performanceNow;
    spanCPU.innerHTML += "\n " + text + " CPU-tijd: " + t0.toString() + " <br />";
};
var showPerformanceNode = function (ph, fun) {
    var bb = process.hrtime(ph);
    return bb.times([1e9, 1]).reduceRight(function (l, r) { return l + r; }).divide(1e6);
};
window.onload = function () {
    var el = document.getElementById('content');
    var greeter = new APLXTest(el);
    greeter.start();
};
