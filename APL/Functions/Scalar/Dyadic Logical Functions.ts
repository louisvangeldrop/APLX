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

    }

    export namespace Vector {

        export var and = function (omega) { return this.primitive(omega, Scalar.and) }; Array.prototype[prefix + 'and'] = and
        export var nand = function (omega) { return this.primitive(omega, Scalar.nand) }; Array.prototype[prefix + 'nand'] = nand
        export var or = function (omega) { return this.primitive(omega, Scalar.or) }; Array.prototype[prefix + 'or'] = or
        export var nor = function (omega) { return this.primitive(omega, Scalar.nor) }; Array.prototype[prefix + 'nor'] = nor

        export var lt = function (omega) { return this.primitive(omega, Scalar.lt) }; Array.prototype[prefix + 'lt'] = lt
        export var le = function (omega) { return this.primitive(omega, Scalar.le) }; Array.prototype[prefix + 'le'] = le
        export var gt = function (omega) { return this.primitive(omega, Scalar.gt) }; Array.prototype[prefix + 'gt'] = gt
        export var ge = function (omega) { return this.primitive(omega, Scalar.ge) }; Array.prototype[prefix + 'ge'] = ge
        export var eq = function (omega) { return this.primitive(omega, Scalar.eq) }; Array.prototype[prefix + 'eq'] = eq
        export var neq = function (omega) { return this.primitive(omega, Scalar.neq) }; Array.prototype[prefix + 'neq'] = neq

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

    }

}