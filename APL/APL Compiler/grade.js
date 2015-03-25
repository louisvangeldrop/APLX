(function() {
  var grade;

  addVocabulary({
    '⍋': function(⍵, ⍺) {
      return grade(⍵, ⍺, 1);
    },
    '⍒': function(⍵, ⍺) {
      return grade(⍵, ⍺, -1);
    }
  });

  grade = function(⍵, ⍺, direction) {
    var h, _i, _ref, _results;
    h = {};
    if (⍺) {
      if (!⍴⍴(⍺)) {
        rankError();
      }
      h = {};
      each(⍺, function(x, indices) {
        if (typeof x !== 'string') {
          domainError();
        }
        return h[x] = indices[indices.length - 1];
      });
    }
    if (!⍴⍴(⍵)) {
      rankError();
    }
    return new A((function() {
      _results = [];
      for (var _i = 0, _ref = ⍴(⍵)[0]; 0 <= _ref ? _i < _ref : _i > _ref; 0 <= _ref ? _i++ : _i--){ _results.push(_i); }
      return _results;
    }).apply(this)).sort(function(i, j) {
      var a, indices, p, tx, ty, x, y;
      p = ⍵.offset;
      indices = repeat([0], ⍴⍴(⍵));
      while (true) {
        x = ⍵.data[p + i * ⍵.stride[0]];
        y = ⍵.data[p + j * ⍵.stride[0]];
        tx = typeof x;
        ty = typeof y;
        if (tx < ty) {
          return -direction;
        }
        if (tx > ty) {
          return direction;
        }
        if (h[x] != null) {
          x = h[x];
        }
        if (h[y] != null) {
          y = h[y];
        }
        if (x < y) {
          return -direction;
        }
        if (x > y) {
          return direction;
        }
        a = indices.length - 1;
        while (a > 0 && indices[a] + 1 === ⍴(⍵)[a]) {
          p -= ⍵.stride[a] * indices[a];
          indices[a--] = 0;
        }
        if (a <= 0) {
          break;
        }
        p += ⍵.stride[a];
        indices[a]++;
      }
      return (i > j) - (i < j);
    });
  };

}).call(this);

//# sourceMappingURL=grade.js.map
