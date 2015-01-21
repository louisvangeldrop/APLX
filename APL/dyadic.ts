
interface Array<T> {
    primitive(left,right): T[]
    plus(omega): T[]
    minus(omega): T[]
    times(omega): T[]
    divide(omega): T[]
    rotate(omega): T[]
    slash(omega): T[]

}
 

    //Array.prototype.primitive = function (omega, primitive) {
    //    try {
    //        var counter, // let counter,
    //            max = Math.min(this.length, omega.length),
    //            results = new Array(max);
    //        for (counter = 0; counter < max; counter++) {
    //            results[counter] = primitive(this[counter], omega[counter])
    //        }
    //        return results
    //    }
    //    catch (error) {
    //    }
    //    finally {
    //    }
    //}

    Array.prototype.plus = function (omega) {
        //return this.primitive(omega, (thisItem, omegaItem) => { return thisItem + omegaItem })
        try {
            var counter,
                max = Math.min(this.length, omega.length),
                results = new Array(max);
            for (counter = 0; counter < max; counter++) {
                results[counter] = this[counter] + omega[counter]
            }
            return results
        }
        catch (error) {
        }
        finally {
        }
    }

    Array.prototype.minus = function (omega) {
        //return this.primitive(omega,(thisItem, omegaItem) => { return thisItem - omegaItem })
        try {
            var counter,
                max = Math.min(this.length, omega.length),
                results = new Array(max);
            for (counter = 0; counter < max; counter++) {
                results[counter] = this[counter] - omega[counter]
            }
            return results
        }
        catch (error) {
        }
        finally {
        }
    }

    Array.prototype.times = function (omega) {
        //return this.primitive(omega, (thisItem, omegaItem) => { return thisItem * omegaItem })
        try {
            var counter,
                max = Math.min(this.length, omega.length),
                results = new Array(max);
            for (counter = 0; counter < max; counter++) {
                results[counter] = this[counter] * omega[counter]
            }
            return results
        }
        catch (error) {
        }
        finally {
        }
    }

    Array.prototype.divide = function (omega) {
        //return this.primitive(omega,(thisItem, omegaItem) => { return thisItem / omegaItem })
        try {
            var counter,
                max = Math.min(this.length, omega.length),
                results = new Array(max);
            for (counter = 0; counter < max; counter++) {
                results[counter] = this[counter] / omega[counter]
            }
            return results
        }
        catch (error) {
        }
        finally {
        }
    }

    Array.prototype.rotate = function (omega) {
        //return this.primitive(omega,(thisItem, omegaItem) => { return thisItem / omegaItem })
        try {
            var counter,
                max = omega.length,
                offSet = this[0],
                results = new Array(max);
            if (this > 0) {
                for (counter = 0; counter < max; counter++) {
                    results[counter] = omega[counter + offSet >= max ? counter + offSet - max : counter + offSet]
                }
            } else {
                for (counter = 0; counter < max; counter++) {
                    results[counter] = omega[counter + offSet < 0 ? counter + offSet + max : counter + offSet]
                }
            }
            return results
        }
        catch (error) {
        }
        finally {
        }
    }

