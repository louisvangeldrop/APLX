// https://github.com/Microsoft/TypeScript/wiki

//import {Dyadic} from "Dyadic"     // In dyadic.ts export toeveoegen aan namespace Dyadic
//import {APL} from "diversen";

//import vector = Dyadic.Vector
//import scalar = Dyadic.Scalar

class Greeter {
    element: HTMLElement;
    span: HTMLElement;
    spanCPU: HTMLElement;
    timerToken: number;
    /**
    * Creates a new HTMLElement
    */
    constructor(element: HTMLElement) {
        this.element = element;
        this.element.innerHTML += "De tijd is: ";
        this.span = document.createElement('span');
        this.element.appendChild(this.span);
        this.span.innerText = new Date().toUTCString();

        //      this.element.innerHTML += "CPU time is: ";
        this.spanCPU = document.createElement('span');
        this.element.appendChild(this.spanCPU);
        this.spanCPU.innerHTML = "<br/>"
    }

    start() {
        // console.profile('Number.iota')
        //  var aplg= apl.gradeDown
        const vector = Dyadic.Vector
        let scalar = Dyadic.Scalar
        var parms = location.search.split('?')
        var aantal: number = parms.length > 1 ? parseFloat(parms[1].replace('/', ' ')) : 5e6

        var spanCPU = this.spanCPU
        var nestedArray = [4, 5].indexGenerator
        var testje=[3,4,5].reduceRight(scalar.plus)
        this.spanCPU.innerHTML += `\n Aantal elementen = ${aantal} <br />`
        //[ll,aantal]=[aantal,ll]
        var t0: number
        var startPerformance = performance.now()
        var dd: number[] //= aantal.deal(aantal)
        showPerformance(spanCPU, performance.now(), 'deal', dd = aantal.deal(aantal))
        //var maxValue = dd.aplReduce((l, r) => { return Math.max(l, r) })
        var apldd   //:number[]

        var aplcc = new APL.Vector(null, 10)
        showPerformance(spanCPU, performance.now(), 'APLVector', apldd = new APL.Vector(dd))
        showPerformance(spanCPU, performance.now(), "sign", dd.signum)

        showPerformance(spanCPU, performance.now(), "identity", dd.same)
        //var ss = dd.slice()
        //ss[0] = 0
        t0 = performance.now()
        //  var qq = dd.gradeDown  //   QS Chrome is even snel als Array.sort met index. Bij IE Array.sort veel sneller
        try {
            showPerformance(spanCPU, performance.now(), 'gradeup/down', dd.gradeUp)
        }
        catch (err) { }
        finally { }

        var cpuGradeUp = performance.now() - t0
        //this.spanCPU.innerHTML += "\n gradeUp/Down CPU-tijd: " + t0.toString() + "<br />"
        //t0 = performance.now()
        //qq = dd.sort()
        //t0 = performance.now() - t0
        // this.spanCPU.innerHTML += "\n Array.sort CPU-tijd: " + t0.toString() + "<br />"
        //     var zz = gradeUpSort(dd)       // [2,3,4,5,4,3,2])
        //var sign = dd.sign
        //   sign=dd.sign()
        //var bb=dd+dd not supported
        performance.mark("Array.times start")
        var ee = dd.times(dd)
        performance.mark("Array.times stop")
        showPerformance(spanCPU, performance.now(), "negate", dd.negate)
        showPerformance(spanCPU, performance.now(), "divide", dd.divide(dd))
        showPerformance(spanCPU, performance.now(), "map -alpha", dd.map((alpha) => { return -alpha }))
        showPerformance(spanCPU, performance.now(), 'ceiling', dd.ceiling)
        showPerformance(spanCPU, performance.now(), 'rotate', [-10].rotate(dd))

        performance.mark("Array.APLreduce start")
        var min = dd.aplReduce(scalar.minus)
        performance.mark("Array.APLreduce stop")
        showPerformance(spanCPU, performance.now(), "Array.reduceRight", dd.reduceRight(scalar.plus))
        //       console.log(`min: ${min} som: ${som}`)
        performance.measure("Array.times", "Array.times start", "Array.times stop")
        performance.measure("Array.APLreduce", "Array.APLreduce start", "Array.APLreduce stop")
        // Print marks
        var perfMarks = performance.getEntriesByType("measure");   // "mark"
        var perfEntries = performance.getEntries()
        for (var i = 0; i < perfMarks.length; i++) {
            this.spanCPU.innerHTML +=
                "Name: " + perfMarks[i].name + " - " +
                "CPU Time: " + perfMarks[i].duration + "<br />";  //  perfMarks[i].startTime
        }
        var totalCpu = performance.now() - startPerformance
        this.spanCPU.innerHTML += `\n totale CPU-tijd: ${totalCpu}<br />`
        this.spanCPU.innerHTML += `\n totale CPU-tijd-gradeUp: ${totalCpu - cpuGradeUp}<br />`
        this.timerToken = setInterval(() => this.span.innerHTML = new Date().toUTCString(), 500);
    }

    stop() {
        clearTimeout(this.timerToken);
    }
}

var showPerformance = function (spanCPU: HTMLElement, performanceNow, text: string, expression) {
    //   var result = expression
    console.time("")
    var t0 = performance.now() - performanceNow
    spanCPU.innerHTML += `\n ${text} CPU-tijd: ${t0.toString()} <br />`
    // return `\n ${text} CPU-tijd: ${t0.toString() } <br />`
}

window.onload = () => {
    var el = document.getElementById('content');
    var greeter = new Greeter(el);
    greeter.start();
};