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
        var aa = 1000000;
        var dd = iota(aa);
        //  console.profileEnd()
        var zz = gradeUp(dd); // [2,3,4,5,4,3,2])
        var ee = dd.times(dd);
        var rr = [-10].rotate(dd);
        var som = dd.reduce(function (l, r) {
            return l - r;
        });
        console.log('som: ' + som); // ${som}')
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