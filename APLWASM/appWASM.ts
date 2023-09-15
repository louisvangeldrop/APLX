// https://github.com/Microsoft/TypeScript/wiki

//import {Dyadic} from "Dyadic"     // In dyadic.ts export toeveoegen aan namespace Dyadic
//import {APL} from "diversen";

//import vector = Dyadic.Vector
//import scalar = Dyadic.Scal

declare var process
var logs: string[] = []
// var APL = require('./APLX.js')
// import './APLX.mjs'

// const { performance } = require('node:perf_hooks');



class APLXTest {

    start() {
        // console.profile('Number.iota')
        //  var aplg= apl.gradeDown
        const vector = Dyadic.Vector
        let scalar = Dyadic.Scalar
        console.log(Javy)
        let aantal: number = 1e6 //parseFloat(scriptArgs[2] ?? 1e6) //location.search.split('?')
        aantal = isNaN(aantal) ? 1e6 : aantal
        // var APLPrefix = ''
        // var nestedArray = [4, 5][APLPrefix + "indexGenerator"]
        // var range1tot10 = ((10)[APLPrefix + "indexGenerator"]).plus(1)
        // var testje = [3, 4, 5][APLPrefix + "aplReduce"](scalar.minus)
        console.log(`Aantal elementen is: ${aantal}`)
        //[ll,aantal]=[aantal,ll]
        var t0: number
        // var dd: number[] //= aantal.deal(aantal)

        var ev = eval('(10).indexGenerator')
        // rr = range1tot10.domino(range1tot10)
        let cc = (4).reshape(2).decode([1, 2, 3, 4])
        let dd = cc.encode([2, 2, 2, 2, 2])
        let rr = (2).pick([1, 2, 3])
        rr = (-3).take(dd)
        rr = ([1, 0, 2, 1]).replicate([3, 4, 5, 6])
        rr = [true, false, false, true].replicate([3, 4, 5, 6])
        rr = [1, 2, 3, 4, 1].unique
        rr = [1, 0, 1, 1].expand([1, 2, 3])
        var startPerformance = Date.now()
        console.log(rr.toString())
        showPerformance(Date.now(), 'deal', dd = aantal[APLPrefix + "deal"](aantal))
        showPerformance(Date.now(), 'reshape', rr = (aantal[APLPrefix + "reshape"](dd)))
        showPerformance(Date.now(), 'depth', cc = dd[APLPrefix + "depth"])
        showPerformance(Date.now(), 'depthLength', cc = dd[APLPrefix + "depthLength"])
        showPerformance(Date.now(), 'enlist', dd = dd[APLPrefix + "enlist"])
        showPerformance(Date.now(), 'unique', dd = dd[APLPrefix + "unique"])
        //showPerformance(Date.now(),spanCPU,  'union', rr = dd[APLPrefix + "union"](dd))
        showPerformance(Date.now(), 'from', rr = dd[APLPrefix + 'from'](dd))
        //var maxValue = dd.aplReduce((l, r) => { return Math.max(l, r) })
        var apldd   //:number[]

        // var aplVector = new APL.Array([4, 3, 5], 10)
        // aplVector.shape = 100

        // showPerformance(Date.now(), 'APLVector', apldd = new APL.Array(dd))
        showPerformance(Date.now(), "signum", dd.signum)

        showPerformance(Date.now(), "identity", dd.same)
        //var ss = dd.slice()
        //ss[0] = 0
        t0 = Date.now()
        //  var qq = dd.gradeDown  //   QS Chrome is even snel als Array.sort met index. Bij IE Array.sort veel sneller
        try {
            showPerformance(Date.now(), 'gradeup/down', dd.gradeUp)
        }
        catch (err) { }
        finally { }

        var cpuGradeUp = Date.now() - t0

        var tn = (<any>10).plus(9)
        showPerformance(Date.now(), "negate", dd.negative)
        showPerformance(Date.now(), "times", dd.times(dd))
        showPerformance(Date.now(), "divide", dd.divide(dd))
        showPerformance(Date.now(), "map -alpha", dd.map((alpha) => { return -alpha }))
        showPerformance(Date.now(), 'ceiling', dd.ceiling)
        showPerformance(Date.now(), 'rotate', [-10].rotate(dd))
        showPerformance(Date.now(), "Array.reduceRight", dd.reduceRight(scalar.plus))
        showPerformance(Date.now(), "Array.APLreduce", dd.aplReduce(scalar.minus))


        var totalCpu = Date.now() - startPerformance
        // totalCpu = totalCpu.times([1e9, 1]).reduceRight((l, r) => l + r).divide(1e6)
        for (let elm of logs) {
            console.log(elm)
        }
        console.log(`totale CPU-tijd: ${totalCpu}`)
        // cpuGradeUp = cpuGradeUp.times([1e9, 1]).reduceRight((l, r) => l + r).divide(1e6)
        console.log(`totale CPU-tijd-gradeUp: ${totalCpu - cpuGradeUp}`)

    }

    stop() {

    }
}

var showPerformanceWeb = function (spanCPU: HTMLElement, performanceNow, text: string, expression) {
    //   var result = expression
    // console.time("")
    var t0 = performance.now() - performanceNow
    spanCPU.innerHTML += `\n ${text} CPU-tijd: ${t0.toString()} <br />`
    // return `\n ${text} CPU-tijd: ${t0.toString() } <br />`
}

var showPerformance = (performanceNow: number, text: string, fun) => {
    let cpuTime = Date.now() - performanceNow
    // let t0 = cpuTime.times([1e9, 1]).reduceRight((l, r) => l + r).divide(1e6)
    logs.push(`${text} CPU-tijd: ${cpuTime.toString()}`)
    return cpuTime
}

var greeter = new APLXTest();
greeter.start()
