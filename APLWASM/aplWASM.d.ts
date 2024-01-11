declare var APLPrefix: string;
declare function primitive(omega: any, primitive: any): any;
declare function addPrototype(object: any, name: any, func: any): void;
declare function addProperty(object: any, name: any, func: any, primitive?: boolean): void;
declare var prefix: string;
declare var Monadic: any;
declare var Dyadic: any;
declare module "appWASM" {
    class APLXTest {
        start(): void;
        stop(): void;
    }
    export var greeter: APLXTest;
}
