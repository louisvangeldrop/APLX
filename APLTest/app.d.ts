declare var process: any;
declare class APLXTest {
    element: HTMLElement;
    span: HTMLSpanElement;
    spanCPU: HTMLSpanElement;
    timerToken: number;
    /**
    * Creates a new HTMLElement
    */
    constructor(element: HTMLElement);
    start(): void;
    stop(): void;
}
declare var showPerformance: (spanCPU: HTMLElement, performanceNow: any, text: string, expression: any) => void;
declare var showPerformanceNode: (ph: any, fun: any) => any;
