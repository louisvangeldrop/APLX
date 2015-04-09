// https://github.com/Microsoft/TypeScript/wiki
var vector = Dyadic.Vector;
var scalar = Dyadic.Scalar;
var Greeter = (function () {
    function Greeter(element) {
        this.element = element;
        this.element.innerHTML += "The time is: ";
        this.span = document.createElement('span');
        this.element.appendChild(this.span);
        this.span.innerText = new Date().toUTCString();
        //      this.element.innerHTML += "CPU time is: ";
        this.spanCPU = document.createElement('span');
        this.element.appendChild(this.spanCPU);
        this.spanCPU.innerHTML = "<br/>";
    }
    Greeter.prototype.start = function () {
        // console.profile('Number.iota')
        var _this = this;
        var aa = 1e6;
        var ll = 1e5;
        var bb = aa.roll;
        //[ll,aa]=[aa,ll]
        var t0 = performance.now();
        performance.mark("Array.deal start");
        var dd = aa.deal(aa);
        var kk = dd.negate;
        var fac = [10].factorial;
        var maxValue = dd.aplReduce(function (l, r) {
            return Math.max(l, r);
        });
        performance.mark("Array.deal stop");
        t0 = performance.now() - t0;
        console.log("Array.deal: " + t0);
        //      this.spanCPU.innerHTML = "\n CPU-tijd: " + t0.toString()
        //      var hh=aa.deal(aa) // 6x zo langzaam
        //    var dd = iota(aa)
        this.spanCPU.innerHTML += showPerformance(performance.now(), "sign", dd.sign);
        this.spanCPU.innerHTML += showPerformance(performance.now(), "identity", dd.same);
        var ss = dd.slice();
        ss[0] = 0;
        t0 = performance.now();
        var qq = dd.gradeUp; //   QS Chrome is even snel als Array.sort met index. Bij IE Array.sort veel sneller
        t0 = performance.now() - t0;
        this.spanCPU.innerHTML += "\n gradeUp/Down CPU-tijd: " + t0.toString() + "<br />";
        //t0 = performance.now()
        //qq = dd.sort()
        //t0 = performance.now() - t0
        // this.spanCPU.innerHTML += "\n Array.sort CPU-tijd: " + t0.toString() + "<br />"
        //     var zz = gradeUpSort(dd)       // [2,3,4,5,4,3,2])
        var sign = dd.sign;
        //   sign=dd.sign()
        //var bb=dd+dd not supported
        performance.mark("Array.times start");
        var ee = dd.times(dd);
        performance.mark("Array.times stop");
        this.spanCPU.innerHTML += showPerformance(performance.now(), "negate", dd.negate);
        this.spanCPU.innerHTML += showPerformance(performance.now(), "map -alpha", dd.map(function (alpha) {
            return -alpha;
        }));
        t0 = performance.now();
        var cl = dd.ceiling;
        t0 = performance.now() - t0;
        this.spanCPU.innerHTML += "\n ceiling CPU-tijd: " + t0.toString() + "<br />";
        var fl = dd.floor;
        t0 = performance.now();
        var rr = [-10].rotate(dd);
        t0 = performance.now() - t0;
        this.spanCPU.innerHTML += "\n rotate CPU-tijd: " + t0.toString() + "<br />";
        rr = dd.transpose;
        performance.mark("Array.APLreduce start");
        var min = dd.aplReduce(scalar.minus);
        performance.mark("Array.APLreduce stop");
        this.spanCPU.innerHTML += showPerformance(performance.now(), "Array.reduceRight", dd.reduceRight(scalar.plus));
        //       console.log(`min: ${min} som: ${som}`)
        performance.measure("Array.deal", "Array.deal start", "Array.deal stop");
        performance.measure("Array.times", "Array.times start", "Array.times stop");
        performance.measure("Array.APLreduce", "Array.APLreduce start", "Array.APLreduce stop");
        // Print marks
        var perfMarks = performance.getEntriesByType("measure"); // "mark"
        var perfEntries = performance.getEntries();
        for (var i = 0; i < perfMarks.length; i++) {
            this.spanCPU.innerHTML += "Name: " + perfMarks[i].name + " - " + "CPU Time: " + perfMarks[i].duration + "<br />"; //  perfMarks[i].startTime
        }
        this.timerToken = setInterval(function () { return _this.span.innerHTML = new Date().toUTCString(); }, 500);
    };
    Greeter.prototype.stop = function () {
        clearTimeout(this.timerToken);
    };
    return Greeter;
})();
var showPerformance = function (performanceNow, text, expression) {
    //   var result = expression
    var t0 = performance.now() - performanceNow;
    return "\n " + text + " CPU-tijd: " + t0.toString() + " <br />";
};
window.onload = function () {
    var el = document.getElementById('content');
    var greeter = new Greeter(el);
    greeter.start();
};
//# sourceMappingURL=app.js.map