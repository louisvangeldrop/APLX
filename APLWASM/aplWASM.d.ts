declare var APLPrefix: string;
declare function primitive(omega: any, primitive: any): any;
declare function addPrototype(object: any, name: any, func: any): void;
declare function addProperty(object: any, name: any, func: any, primitive?: boolean): void;
declare var prefix: string;
declare var Monadic: any;
declare var Dyadic: any;
declare var process: any;
declare var logs: string[];
declare class APLXTest {
    start(): void;
    stop(): void;
}
declare var showPerformanceWeb: (spanCPU: HTMLElement, performanceNow: any, text: string, expression: any) => void;
declare var showPerformance: (text: string, fun: any) => any;
declare var greeter: APLXTest;
