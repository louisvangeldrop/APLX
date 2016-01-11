namespace Dyadic {

    export namespace Scalar {
        export var and = (alpha: boolean, omega: boolean) => { return (alpha && omega) }; Boolean.prototype[APLPrefix + 'and'] = function (omega) { return (this.valueOf() && omega) }
        export var nand = (alpha: boolean, omega: boolean) => { return !(alpha && omega) }; Boolean.prototype[APLPrefix + 'nand'] = function (omega) { return (!(this.valueOf() && omega)) }
        export var or = (alpha: boolean, omega: boolean) => { return (alpha || omega) }; Boolean.prototype[APLPrefix + 'or'] = function (omega) { return (this.valueOf() || omega) }
        export var nor = (alpha: boolean, omega: boolean) => { return !(alpha || omega) }; Boolean.prototype[APLPrefix + 'nor'] = function (omega) { return (!(this.valueOf() || omega)) }
        //TODO Aanpassen aan string
        export var lt = (alpha: number, omega: number) => { return alpha < omega }; Number.prototype[APLPrefix + 'lt'] = function (omega) { return this.valueOf() < omega }
        export var le = (alpha: number, omega: number) => { return alpha <= omega }; Number.prototype[APLPrefix + 'le'] = function (omega) { return this.valueOf() <= omega }
        export var gt = (alpha: number, omega: number) => { return alpha > omega }; Number.prototype[APLPrefix + 'gt'] = function (omega) { return this.valueOf() > omega }
        export var ge = (alpha: number, omega: number) => { return alpha >= omega }; Number.prototype[APLPrefix + 'ge'] = function (omega) { return this.valueOf() >= omega }
        export var eq = (alpha: number, omega: number) => { return alpha === omega }; Number.prototype[APLPrefix + 'eq'] = function (omega) { return this.valueOf() === omega }
        export var neq = (alpha: number , omega: number) => { return alpha !== omega }; Number.prototype[APLPrefix + 'neq'] = function (omega) { return this.valueOf() !== omega }

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

    }

}