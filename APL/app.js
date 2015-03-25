// https://github.com/Microsoft/TypeScript/wiki
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
        var _this = this;
        // console.profile('Number.iota')
        var aa = 5e6;
        var bb = aa.roll();
        var t0 = performance.now();
        performance.mark("Array.deal start");
        var dd = aa.deal(aa);
        performance.mark("Array.deal stop");
        t0 = performance.now() - t0;
        console.log("Array.deal: " + t0);
        //      this.spanCPU.innerHTML = "\n CPU-tijd: " + t0.toString()
        //      var hh=aa.deal(aa) // 6x zo langzaam
        //    var dd = iota(aa)
        var ss = dd.slice();
        ss[0] = 0;
        //  console.profileEnd()
        // dd=iota(aa)
        t0 = performance.now();
        var qq = gradeUpSort(dd);
        t0 = performance.now() - t0;
        this.spanCPU.innerHTML += "\n grapeUp CPU-tijd: " + t0.toString() + "<br />";
        //     var zz = gradeUpSort(dd)       // [2,3,4,5,4,3,2])
        var sign = dd.sign();
        //   sign=dd.sign()
        //var bb=dd+dd not supported
        performance.mark("Array.times start");
        var ee = dd.times(dd);
        performance.mark("Array.times stop");
        var fl = floor(dd);
        var rr = [-10].rotate(dd);
        rr = reverse(dd);
        performance.mark("Array.APLreduce start");
        var min = dd.aplReduce(function (l, r) {
            return l - r;
        });
        performance.mark("Array.APLreduce stop");
        performance.mark("Array.reduce start");
        t0 = performance.now();
        var som = dd.reduceRight(function (l, r) {
            return r + l;
        });
        t0 = performance.now() - t0;
        this.spanCPU.innerHTML += "\n reduceRight CPU-tijd: " + t0.toString() + "<br />";
        performance.mark("Array.reduce stop");
        console.log("min: " + min + " som: " + som);
        performance.measure("Array.deal", "Array.deal start", "Array.deal stop");
        performance.measure("Array.times", "Array.times start", "Array.times stop");
        performance.measure("Array.APLreduce", "Array.APLreduce start", "Array.APLreduce stop");
        performance.measure("Array.reduce", "Array.reduce start", "Array.reduce stop");
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
window.onload = function () {
    var el = document.getElementById('content');
    var greeter = new Greeter(el);
    greeter.start();
};
//# sourceMappingURL=app.js.map