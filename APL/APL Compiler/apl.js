(function() {
  var addVocabulary, apl, readline, vocabulary;

  macro(function() {
    this.tmpCounter = 0;
    this.tmp = function() {
      return "t" + (this.tmpCounter++);
    };
  });

  macro(withAlphaAndOmega(function(f) {
    return f.body.subst({
      '⍺': macro.codeToNode(function() {
        return alpha;
      }),
      '⍵': macro.codeToNode(function() {
        return omega;
      })
    });
  }));

  macro(include(function(f) {
    return macro.fileToNode("src/" + (macro.nodeToVal(f)) + ".coffee");
  }));

  include('helpers');

  include('errors');

  include('array');

  include('complex');

  include('vm');

  include('lexer');

  include('parser');

  vocabulary = {};

  addVocabulary = function(h) {
    var k, v;
    for (k in h) {
      v = h[k];
      vocabulary[k] = v;
    }
  };

  withAlphaAndOmega(function() {
    include('vocabulary/vhelpers');
    include('vocabulary/arithmetic');
    include('vocabulary/backslash');
    include('vocabulary/circle');
    include('vocabulary/comma');
    include('vocabulary/comparisons');
    include('vocabulary/compose');
    include('vocabulary/cupcap');
    include('vocabulary/decode');
    include('vocabulary/dot');
    include('vocabulary/each');
    include('vocabulary/encode');
    include('vocabulary/epsilon');
    include('vocabulary/exclamation');
    include('vocabulary/execute');
    include('vocabulary/find');
    include('vocabulary/floorceil');
    include('vocabulary/fork');
    include('vocabulary/format');
    include('vocabulary/grade');
    include('vocabulary/identity');
    include('vocabulary/iota');
    include('vocabulary/leftshoe');
    include('vocabulary/logic');
    include('vocabulary/poweroperator');
    include('vocabulary/quad');
    include('vocabulary/question');
    include('vocabulary/raise');
    include('vocabulary/rho');
    include('vocabulary/rotate');
    include('vocabulary/slash');
    include('vocabulary/squish');
    include('vocabulary/take');
    include('vocabulary/transpose');
    include('vocabulary/variant');
    return include('compiler');
  });

  this.apl = apl = function(aplCode, opts) {
    return (apl.ws(opts))(aplCode);
  };

  extend(apl, {
    format: format,
    approx: approx,
    parse: parse,
    compileAST: compileAST,
    repr: repr
  });

  apl.ws = function(opts) {
    var ctx;
    if (opts == null) {
      opts = {};
    }
    ctx = Object.create(vocabulary);
    if (opts["in"]) {
      ctx['get_⎕'] = ctx['get_⍞'] = function() {
        var s;
        s = opts["in"]();
        assert(typeof s === 'string');
        return new A(s);
      };
    }
    if (opts.out) {
      ctx['set_⎕'] = ctx['set_⍞'] = function(x) {
        return opts.out(format(x).join('\n') + '\n');
      };
    }
    return function(aplCode) {
      return exec(aplCode, {
        ctx: ctx
      });
    };
  };

  readline = function(prompt, f) {
    var rl;
    (readline.requesters != null ? readline.requesters : readline.requesters = []).push(f);
    if (!(rl = readline.rl)) {
      rl = readline.rl = require('readline').createInterface(process.stdin, process.stdout);
      rl.on('line', function(line) {
        var _base;
        return typeof (_base = readline.requesters.pop()) === "function" ? _base(line) : void 0;
      });
      rl.on('close', function() {
        process.stdout.write('\n');
        return process.exit(0);
      });
    }
    rl.setPrompt(prompt);
    return rl.prompt();
  };

  if (typeof module !== "undefined" && module !== null) {
    module.exports = apl;
    if (module === (typeof require !== "undefined" && require !== null ? require.main : void 0)) {
      (function() {
        var arg, b, f, file, k, linewise, usage, ws, _i, _len, _ref;
        usage = 'Usage: apl.js [options] [filename.apl]\nOptions:\n  -l --linewise   Process stdin line by line and disable prompt\n';
        file = null;
        linewise = 0;
        _ref = process.argv.slice(2);
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          arg = _ref[_i];
          if (arg === '-h' || arg === '--help') {
            process.stderr.write(usage);
            process.exit(0);
          } else if (arg === '-l' || arg === '--linewise') {
            linewise = 1;
          } else if (/^-/.test(arg)) {
            process.stderr.write("unrecognized option: " + arg + "\n" + usage);
            process.exit(1);
          } else if (file != null) {
            process.stderr.write(usage);
            process.exit(1);
          } else {
            file = arg;
          }
        }
        if (file != null) {
          exec(require('fs').readFileSync(file, 'utf8'));
        } else if (linewise) {
          (function() {
            var a, b, e, fs, i, k, n, ws;
            fs = require('fs');
            ws = apl.ws();
            a = Buffer(256);
            i = n = 0;
            b = Buffer(a.length);
            while (k = fs.readSync(0, b, 0, b.length, null)) {
              if (n + k > a.length) {
                a = Buffer.concat([a, a]);
              }
              b.copy(a, n, 0, k);
              n += k;
              while (i < n) {
                if (a[i] === 10) {
                  process.stdout.write((function() {
                    try {
                      return format(ws('' + a.slice(0, i))).join('\n') + '\n';
                    } catch (_error) {
                      e = _error;
                      return e + '\n';
                    }
                  })());
                  a.copy(a, 0, i + 1);
                  n -= i + 1;
                  i = 0;
                } else {
                  i++;
                }
              }
            }
          })();
        } else if (!require('tty').isatty()) {
          exec(Buffer.concat((function() {
            var _results;
            _results = [];
            while (true) {
              b = new Buffer(1024);
              if (!(k = require('fs').readSync(0, b, 0, b.length, null))) {
                break;
              }
              _results.push(b.slice(0, k));
            }
            return _results;
          })()).toString('utf8'));
        } else {
          ws = apl.ws();
          readline('      ', f = function(line) {
            var e;
            try {
              if (!line.match(/^[\ \t\f\r\n]*$/)) {
                process.stdout.write(format(ws(line)).join('\n') + '\n');
              }
            } catch (_error) {
              e = _error;
              process.stdout.write(e + '\n');
            }
            readline('      ', f);
          });
        }
      })();
    }
  }

}).call(this);

//# sourceMappingURL=apl.js.map
