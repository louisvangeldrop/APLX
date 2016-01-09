namespace Dyadic {

    export namespace Scalar {
        export var and = (alpha: boolean, omega: boolean) => { return (alpha && omega) }; Boolean.prototype[APLPrefix + 'and'] = function (omega) { return (this.valueOf() && omega) }

    }

    export namespace Vector {


    }

}