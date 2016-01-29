namespace Dyadic {

    export namespace Scalar {
        export var and = (alpha: boolean, omega: boolean) => { return (alpha && omega) }
        export var nand = (alpha: boolean, omega: boolean) => { return !(alpha && omega) };
        export var or = (alpha: boolean, omega: boolean) => { return (alpha || omega) };
        export var nor = (alpha: boolean, omega: boolean) => { return !(alpha || omega) };

        export var lt = (alpha: number, omega: number) => { return alpha < omega };
        export var le = (alpha: number, omega: number) => { return alpha <= omega };
        export var gt = (alpha: number, omega: number) => { return alpha > omega };
        export var ge = (alpha: number, omega: number) => { return alpha >= omega };
        export var eq = (alpha: number | string, omega: number | string) => { return alpha === omega };
        export var neq = (alpha: number | string, omega: number | string) => { return alpha !== omega };

        export var gcd = (alpha, omega) => { while (omega) { var t = omega; omega = alpha % omega; alpha = t; }; return alpha }
        export var lcm = (alpha, omega) => { return (!alpha || !omega) ? 0 : Math.abs((alpha * omega) / gcd(alpha, omega)); }
    }

    export namespace Vector {

        export var and = function (omega) { return this.primitive(omega, Scalar.and) };
        export var nand = function (omega) { return this.primitive(omega, Scalar.nand) };
        export var or = function (omega) { return this.primitive(omega, Scalar.or) };
        export var nor = function (omega) { return this.primitive(omega, Scalar.nor) };

        export var lt = function (omega) { return this.primitive(omega, Scalar.lt) }
        export var le = function (omega) { return this.primitive(omega, Scalar.le) }
        export var gt = function (omega) { return this.primitive(omega, Scalar.gt) }
        export var ge = function (omega) { return this.primitive(omega, Scalar.ge) }
        export var eq = function (omega) { return this.primitive(omega, Scalar.eq) }
        export var neq = function (omega) { return this.primitive(omega, Scalar.neq) }

        export var gcd = function (omega) { return this.primitive(omega, Scalar.gcd) }
        export var lcm = function (omega) { return this.primitive(omega, Scalar.lcm) }


        addPrototype([Array, Boolean], 'and', and)
        addPrototype([Array, Boolean], 'nand', nand)
        addPrototype([Array, Boolean], 'or', or)
        addPrototype([Array, Boolean], 'nor', nor)
        addPrototype([Array, Number], 'lt', lt)
        addPrototype([Array, Number], 'le', le)
        addPrototype([Array, Number], 'gt', gt)
        addPrototype([Array, Number], 'ge', ge)
        addPrototype([Array, Number, String], 'eq', eq)
        addPrototype([Array, Number, String], 'neq', neq)

        addPrototype([Array, Number], 'gcd', gcd)
        addPrototype([Array, Number], 'lcm', lcm)

    }

}