var Greeter = (function () {
    function Greeter(element) {
        this.element = element;
        this.element.innerHTML += "De tijd is: ";
        this.span = document.createElement('span');
        this.element.appendChild(this.span);
        this.span.innerText = new Date().toUTCString();
        this.spanCPU = document.createElement('span');
        this.element.appendChild(this.spanCPU);
        this.spanCPU.innerHTML = "<br/>";
    }
    Greeter.prototype.start = function () {
        var _this = this;
        var vector = Dyadic.Vector;
        var scalar = Dyadic.Scalar;
        var parms = location.search.split('?');
        var aantal = parms.length > 1 ? parseFloat(parms[1].replace('/', ' ')) : 5e6;
        var spanCPU = this.spanCPU;
        var nestedArray = [4, 5].indexGenerator;
        var range0tot9 = (10).indexGenerator;
        var testje = [3, 4, 5].aplReduce(scalar.minus);
        this.spanCPU.innerHTML += "\n Aantal elementen = " + aantal + " <br />";
        var t0;
        var startPerformance = performance.now();
        var dd;
        showPerformance(spanCPU, performance.now(), 'deal', dd = aantal.deal(aantal));
        var apldd;
        var aplcc = new APL.Vector(null, 10);
        showPerformance(spanCPU, performance.now(), 'APLVector', apldd = new APL.Vector(dd));
        showPerformance(spanCPU, performance.now(), "sign", dd.signum);
        showPerformance(spanCPU, performance.now(), "identity", dd.same);
        t0 = performance.now();
        try {
            showPerformance(spanCPU, performance.now(), 'gradeup/down', dd.gradeUp);
        }
        catch (err) { }
        finally { }
        var cpuGradeUp = performance.now() - t0;
        performance.mark("Array.times start");
        var ee = dd.times(dd);
        performance.mark("Array.times stop");
        showPerformance(spanCPU, performance.now(), "negate", dd.negate);
        showPerformance(spanCPU, performance.now(), "divide", dd.divide(dd));
        showPerformance(spanCPU, performance.now(), "map -alpha", dd.map(function (alpha) { return -alpha; }));
        showPerformance(spanCPU, performance.now(), 'ceiling', dd.ceiling);
        showPerformance(spanCPU, performance.now(), 'rotate', [-10].rotate(dd));
        performance.mark("Array.APLreduce start");
        var min = dd.aplReduce(scalar.minus);
        performance.mark("Array.APLreduce stop");
        showPerformance(spanCPU, performance.now(), "Array.reduceRight", dd.reduceRight(scalar.plus));
        performance.measure("Array.times", "Array.times start", "Array.times stop");
        performance.measure("Array.APLreduce", "Array.APLreduce start", "Array.APLreduce stop");
        var perfMarks = performance.getEntriesByType("measure");
        var perfEntries = performance.getEntries();
        for (var i = 0; i < perfMarks.length; i++) {
            this.spanCPU.innerHTML +=
                "Name: " + perfMarks[i].name + " - " +
                    "CPU Time: " + perfMarks[i].duration + "<br />";
        }
        var totalCpu = performance.now() - startPerformance;
        this.spanCPU.innerHTML += "\n totale CPU-tijd: " + totalCpu + "<br />";
        this.spanCPU.innerHTML += "\n totale CPU-tijd-gradeUp: " + (totalCpu - cpuGradeUp) + "<br />";
        this.timerToken = setInterval(function () { return _this.span.innerHTML = new Date().toUTCString(); }, 500);
    };
    Greeter.prototype.stop = function () {
        clearTimeout(this.timerToken);
    };
    return Greeter;
})();
var showPerformance = function (spanCPU, performanceNow, text, expression) {
    console.time("");
    var t0 = performance.now() - performanceNow;
    spanCPU.innerHTML += "\n " + text + " CPU-tijd: " + t0.toString() + " <br />";
};
window.onload = function () {
    var el = document.getElementById('content');
    var greeter = new Greeter(el);
    greeter.start();
};
