declare var APLPrefix: string;
declare function primitive(omega: any, primitive: any): any;
declare function addPrototype(object: any, name: any, func: any): void;
declare function addProperty(object: any, name: any, func: any, primitive?: boolean): void;
declare var APL: any;
declare class HTMLPerformance {
    constructor(element: any, performanceNow: any, text: any, expression: any);
    element: any;
}
declare var prefix: string;
declare var Monadic: any;
declare var Dyadic: any;
declare var process: any;
declare var logs: any[];
declare class APLXTest {
    start(): void;
    stop(): void;
}
declare var showPerformanceWeb: (spanCPU: HTMLElement, performanceNow: any, text: string, expression: any) => void;
declare var showPerformance: (ph: any, text: string, fun: any) => any;
declare var greeter: APLXTest;
