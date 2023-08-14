declare var APLPrefix: string;
declare var primitive: (omega: any, primitive?: any) => any;
declare var addPrototype: (object: any, name: string, func: Function) => void;
declare var addProperty: (object: any, name: string, func: Function, primitive?: boolean) => void;
declare namespace APL {
    /**
     * Extends the Array object with APL array functions.
     */
    class Array<T> extends globalThis.Array<T> {
        louis(): number;
        /**
         *
         * @param {number} shape
         * @return {Array} Aantal element in de vector
         */
        get shape(): number;
        /**
         * Zet het aantal elementen in de vector
         * @param {number} Aantal element in de vector
         */
        set shape(length: number);
        get length(): number;
        set length(length: number);
    }
    class Number extends globalThis.Number {
        private louis;
        aap: number;
        /**
         * function ipv lambda voor this support
         */
        with: (f: any) => (a: any) => any;
    }
    class APLArray<T extends Array<string | number | boolean | any>> {
        APLArray?: Array<T>;
        private length?;
        constructor(APLArray?: Array<T>, length?: number);
        /**
         *
         * @param {number}
         * @return {Array} Aantal element in de vector
         */
        get shape(): number | number[];
        /**
         * Zet het aantal elementen in de vector
         * @param {number} Aantal element in de vector
         */
        set shape(length: number | number[]);
        plus(omega: Array<number>): void;
    }
}
declare class HTMLPerformance {
    element: HTMLElement;
    constructor(element: HTMLElement, performanceNow: any, text: string, expression: any);
}
interface Number {
    rotate<T>(array: T[]): any;
    deal(omega: number): number[];
}
interface NumberConstructor {
    iota<T>(length?: T): number[];
    rotate<T>(array: T[]): any;
    signum(): number;
    identity(): number;
    negate(): number;
    reciprocal(): number;
    exponential(): number;
    ln(): number;
    pi(): number;
    factorial(): number;
    roll(): number;
    magnitude(): number;
    ceiling(): number;
    floor(): number;
    same(): number;
}
interface ArrayConstructor {
    ceiling(array: number[]): number[];
    floor(array: number[]): number[];
    iota<T>(length: T): number[];
}
interface Array<T> {
    primitive(left?: any, right?: any): T[];
    deal(omega: number, alpha?: number): number[];
    iota(length?: number): any;
    plus(omega?: any): T[];
    minus(omega?: any): T[];
    times(omega?: any): T[];
    divide(omega?: any): T[];
    minimum(omega?: any): T[];
    maximum(omega?: any): T[];
    residue(omega?: any): T[];
    power(omega?: any): T[];
    logarithm(omega?: any): T[];
    binomial(omega?: any): T[];
    rotate(omega?: any): T[];
    slash(omega?: any): T[];
    aplReduce(alpha?: any, omega?: any): T[];
}
interface Number {
    signum: number;
    identity: number;
    negate: number;
    reciprocal: number;
    exponential: number;
    ln: number;
    pi: number;
    factorial: number;
    roll: number;
    magnitude: number;
    ceiling: number;
    floor: number;
    same: number;
    enclose: any;
    indexGenerator: number[];
    ravel: number[];
    format: string;
}
interface NumberConstructor {
    iota<T>(length?: T): number[];
    rotate<T>(array: T[]): any;
    signum(): number;
    identity(): number;
    negate(): number;
    reciprocal(): number;
    exponential(): number;
    ln(): number;
    pi(): number;
    factorial(): number;
    roll(): number;
    magnitude(): number;
    ceiling(): number;
    floor(): number;
    same(): number;
}
interface Array<T> {
    signum: T[];
    identity: T[];
    gradeUp: T[];
    gradeUpSort: T[];
    gradeUpQS: T[];
    gradeDown: T[];
    negate: T[];
    reciprocal: T[];
    exponential: T[];
    ln: T[];
    pi: T[];
    factorial: T[];
    roll: T[];
    magnitude: T[];
    ceiling: T[];
    floor: T[];
    same: T[];
    enclose: any;
    indexGenerator: T[];
    ravel: T[];
    transpose: T[];
    format: string;
}
declare var prefix: string;
interface NumberConstructor {
    iota<T>(length?: T): number[];
    rotate<T>(array: T[]): any;
    reshape<T>(array: T[]): any;
    signum(): number;
    identity(): number;
    disclose(): number;
    negative(): number;
    reciprocal(): number;
    exponential(): number;
    ln(): number;
    pi(): number;
    factorial(): number;
    roll(): number;
    magnitude(): number;
    ceiling(): number;
    floor(): number;
    same(): number;
}
interface ArrayConstructor {
    ceiling(array: number[]): number[];
    floor(array: number[]): number[];
    iota<T>(length: T): number[];
}
interface Array<T> {
    primitive(left?: any, right?: any): T[];
    deal(omega: number, alpha?: number): number[];
    from(omega: any): Array<any>;
    indicesOf(omega: any): Array<any>;
    memberShip(omega: any): Array<boolean>;
    notMatch(omega: any): boolean;
    iota(length?: number): any;
    plus(omega?: any): T[];
    minus(omega?: any): T[];
    times(omega?: any): T[];
    divide(omega?: any): T[];
    inverse(omega?: any): T[];
    minimum(omega?: any): T[];
    maximum(omega?: any): T[];
    residue(omega?: any): T[];
    power(omega?: any): T[];
    logarithm(omega?: any): T[];
    binomial(omega?: any): T[];
    rotate(omega?: any): T[];
    slash(omega?: any): T[];
    catenate(omega?: any): T[];
    aplReduce(alpha?: any, omega?: any): T[];
    scan(alpha?: any, omeg?: any): T[];
    domino(omega?: any): T[];
    decode(omega?: any): number;
    left(omega?: any): T[];
    right(omega?: any): T[];
    pick(omega?: any): T[];
    replicate(omega?: any): T[];
    expand(omega?: any): T[];
    excluding(omega?: any): T[];
    intersection(omega?: any): T[];
    union(omega?: any): T[];
}
interface Array<T> {
    signum: T[];
    identity: T[];
    disclose: T[];
    gradeUp: T[];
    gradeUpSort: T[];
    gradeUpQS: T[];
    gradeDown: T[];
    negative: T[];
    reciprocal: T[];
    exponential: T[];
    ln: T[];
    pi: T[];
    factorial: T[];
    roll: T[];
    magnitude: T[];
    ceiling: T[];
    floor: T[];
    same: T[];
    enclose: any;
    indexGenerator: T[];
    range: T[];
    ravel: T[];
    transpose: T[];
    unique: T[];
}
interface Number {
    signum: number;
    identity: number;
    negate: number;
    reciprocal: number;
    exponential: number;
    ln: number;
    pi: number;
    factorial: number;
    roll: number;
    magnitude: number;
    ceiling: number;
    floor: number;
    same: number;
    enclose: any;
    indexGenerator: number[];
    range: number[];
    ravel: number[];
    format: string;
    unique: number[];
}
interface Number {
    rotate<T>(array: T[]): any;
    deal(omega: number): number[];
    from(omega: any): Array<any>;
    indicesOf(omega: any): Array<any>;
    memberShip(omega: any): Array<boolean>;
    match(omega: any): boolean;
    notMatch(omega: any): boolean;
    reshape(omega: any): any;
    catenate(omega: any): any;
    maximum(omega: number): number;
    minimum(omega: number): number;
    decode(omega: number | number[]): any;
    encode(omega: number | number[]): any;
    left(omega?: any): number;
    pick<T>(array: T[]): any;
    take<T>(array: T[]): any;
    drop<T>(array: T[]): any;
    replicate<T>(array: T[]): any;
    expand<T>(array: T[]): any;
    excluding<T>(array: T[]): any;
    intersection<T>(array: T[]): any;
    union<T>(array: T[]): any;
}
interface String {
    left(omega: any): string;
    catenate(omega: any): any;
}
declare namespace Monadic {
    namespace NonScalar {
        var inverse: (omega: Array<number>) => any;
    }
}
declare namespace Dyadic {
    namespace NonScalar {
        var domino: (omega: Array<number>) => any;
        var decode: (omega: Array<number> | Number) => number;
        var encode: (omega: number | number[]) => number | number[];
    }
}
declare namespace Monadic {
    namespace NonScalar {
        var identity: (alpha: any) => any;
        var disclose: (alpha: any) => any;
        var unique: (alpha: any) => any[];
    }
}
declare namespace Dyadic {
    namespace NonScalar {
        var left: (omega: any) => any;
        var right: (omega: any) => any;
        var pick: (omega: any) => any;
        var take: (omega: any) => any;
        var drop: (omega: any) => any;
        var replicate: (omega: any) => any[];
        var expand: (omega: any) => any[];
        var excluding: (omega: any) => any[];
        var intersection: (omega: any) => unknown[];
        var union: (omega: any) => any;
    }
}
declare namespace Monadic {
    namespace NonScalar {
        var gradeUp: (alpha: any, indices?: number[], low?: number, high?: number) => number[];
        var gradeDown: (alpha: any, indices?: number[], low?: number, high?: number) => number[];
        var gradeUpSort: (alpha: any) => any;
        var indexGenerator: (alpha: number) => number[];
    }
}
declare namespace Dyadic {
    namespace NonScalar {
        var deal: (omega: number | Array<number>) => number[];
        var from: (omega: any | Array<any>) => Array<any>;
        var indicesOf: (omega: any) => Number | Array<Number>;
        var memberShip: (omega: any) => Boolean | Array<Boolean>;
        var match: (omega: any) => boolean;
        var notMatch: (omega: any) => boolean;
    }
}
declare namespace Monadic {
    namespace NonScalar {
        var depth: (alpha: any) => number;
        var depthLength: (alpha: any) => number;
        var enlist: (alpha: any) => any[];
        var ravel: (alpha: any) => Array<any>;
        var reversed: (alpha: any) => any[];
        var shape: (alpha: any) => number[];
    }
}
declare namespace Dyadic {
}
declare namespace Dyadic {
    namespace Scalar {
        var plus: (alpha: number, omega: number) => number;
        var minus: (alpha: number, omega: number) => number;
        var times: (alpha: number, omega: number) => number;
        var divide: (alpha: number, omega: number) => number;
        var residue: (alpha: number, omega: number) => number;
        var minimum: (alpha: number, omega: number) => number;
        var maximum: (alpha: number, omega: number) => number;
        var power: (alpha: number, omega: number) => number;
        var logarithm: (alpha: number, omega: number) => number;
        var binomial: (alpha: number, omega: number) => void;
    }
    namespace Vector {
        var plus: (omega: any) => any;
        var minus: (omega: any) => any;
        var times: (omega: any) => any;
        var divide: (omega: any) => any;
        var residue: (omega: any) => any;
        var minimum: (omega: any) => any;
        var maximum: (omega: any) => any;
        var power: (omega: any) => any;
        var logarithm: (omega: any) => any;
        var binomial: (omega: any) => any;
        var deal: (omega: any) => number[];
    }
}
declare namespace Dyadic {
    namespace Scalar {
        var and: (alpha: boolean, omega: boolean) => boolean;
        var nand: (alpha: boolean, omega: boolean) => boolean;
        var or: (alpha: boolean, omega: boolean) => boolean;
        var nor: (alpha: boolean, omega: boolean) => boolean;
        var lt: (alpha: number, omega: number) => boolean;
        var le: (alpha: number, omega: number) => boolean;
        var gt: (alpha: number, omega: number) => boolean;
        var ge: (alpha: number, omega: number) => boolean;
        var eq: (alpha: number | string, omega: number | string) => boolean;
        var neq: (alpha: number | string, omega: number | string) => boolean;
        var gcd: (alpha: any, omega: any) => any;
        var lcm: (alpha: any, omega: any) => number;
    }
    namespace Vector {
        var and: (omega: any) => any;
        var nand: (omega: any) => any;
        var or: (omega: any) => any;
        var nor: (omega: any) => any;
        var lt: (omega: any) => any;
        var le: (omega: any) => any;
        var gt: (omega: any) => any;
        var ge: (omega: any) => any;
        var eq: (omega: any) => any;
        var neq: (omega: any) => any;
        var gcd: (omega: any) => any;
        var lcm: (omega: any) => any;
    }
}
declare namespace Monadic {
    namespace Scalar {
        var ceiling: (alpha: any) => number;
        var exponential: (alpha: any) => number;
        var factorial: (alpha: number, omega?: number) => number;
        var floor: (alpha: any) => number;
        var ln: (alpha: any) => number;
        var magnitude: (alpha: any) => number;
        var negative: (alpha: any) => number;
        var not: (alpha: any) => boolean;
        var pi: (alpha: any) => number;
        var reciprocal: (alpha: any) => number;
        var roll: (alpha: any) => number;
        var round: (alpha: any) => number;
        var signum: (alpha: any) => 0 | 1 | -1;
    }
}
declare namespace Dyadic {
    var scan: (omega: Function) => any[];
    var aplReduce: (omega: any) => any;
}
