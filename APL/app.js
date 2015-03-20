// https://github.com/Microsoft/TypeScript/wiki
var Greeter = (function () {
    function Greeter(element) {
        this.element = element;
        this.element.innerHTML += "The time is: ";
        this.span = document.createElement('span');
        this.element.appendChild(this.span);
        this.span.innerText = new Date().toUTCString();
    }
    Greeter.prototype.start = function () {
        var _this = this;
        // console.profile('Number.iota')
        var aa = 5e6;
        var bb = aa.roll();
        var gg = aa.deal(aa);
        //      var hh=aa.deal(aa) // 6x zo langzaam
        var dd = iota(aa);
        var ss = dd.slice();
        ss[0] = 0;
        //  console.profileEnd()
        //var qq = gradeUp(dd)
        //var zz = gradeUpSort(dd)       // [2,3,4,5,4,3,2])
        var sign = dd.sign();
        //   sign=dd.sign()
        //var bb=dd+dd not supported
        var ee = dd.times(dd);
        var fl = floor(dd);
        var rr = [-10].rotate(dd);
        rr = reverse(dd);
        var min = gg.aplReduce(function (l, r) {
            return l - r;
        });
        var som = gg.reduceRight(function (l, r) {
            return r + l;
        });
        console.log("min: " + min + " som: " + som);
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