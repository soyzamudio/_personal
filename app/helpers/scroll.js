(function() {
  (function(f) {
    var a, b, c, d, e, g;
    c = {
      vertical: {
        x: false,
        y: true
      },
      horizontal: {
        x: true,
        y: false
      },
      both: {
        x: true,
        y: true
      },
      x: {
        x: true,
        y: false
      },
      y: {
        x: false,
        y: true
      }
    };
    b = {
      duration: 'fast',
      direction: 'both'
    };
    e = /^(?:html)$/i;
    g = function(k, j) {
      var h, i;
      j = j || (document.defaultView && document.defaultView.getComputedStyle ? document.defaultView.getComputedStyle(k, null) : k.currentStyle);
      i = document.defaultView && document.defaultView.getComputedStyle ? true : false;
      h = {
        top: parseFloat(i ? j.borderTopWidth : f.css(k, 'borderTopWidth')) || 0,
        left: parseFloat(i ? j.borderLeftWidth : f.css(k, 'borderLeftWidth')) || 0,
        bottom: parseFloat(i ? j.borderBottomWidth : f.css(k, 'borderBottomWidth')) || 0,
        right: parseFloat(i ? j.borderRightWidth : f.css(k, 'borderRightWidth')) || 0
      };
      return {
        top: h.top,
        left: h.left,
        bottom: h.bottom,
        right: h.right,
        vertical: h.top + h.bottom,
        horizontal: h.left + h.right
      };
    };
    d = function(h) {
      var i, j;
      j = f(window);
      i = e.test(h[0].nodeName);
      return {
        border: i ? {
          top: 0,
          left: 0,
          bottom: 0,
          right: 0
        } : g(h[0]),
        scroll: {
          top: (i ? j : h).scrollTop(),
          left: (i ? j : h).scrollLeft()
        },
        scrollbar: {
          right: i ? 0 : h.innerWidth() - h[0].clientWidth,
          bottom: i ? 0 : h.innerHeight() - h[0].clientHeight
        },
        rect: (function() {
          var k;
          k = h[0].getBoundingClientRect();
          return {
            top: i ? 0 : k.top,
            left: i ? 0 : k.left,
            bottom: i ? h[0].clientHeight : k.bottom,
            right: i ? h[0].clientWidth : k.right
          };
        })()
      };
    };
    f.fn.extend({
      scrollintoview: function(j) {
        var h, i, k, l, m, n;
        j = f.extend({}, b, j);
        j.direction = c[typeof j.direction === 'string' && j.direction.toLowerCase()] || c.both;
        n = '';
        if (j.direction.x === true) {
          n = 'horizontal';
        }
        if (j.direction.y === true) {
          n = n ? 'both' : 'vertical';
        }
        l = this.eq(0);
        i = l.closest(':scrollable(' + n + ')');
        if (i.length > 0) {
          i = i.eq(0);
          m = {
            e: d(l),
            s: d(i)
          };
          h = {
            top: m.e.rect.top - (m.s.rect.top + m.s.border.top),
            bottom: m.s.rect.bottom - m.s.border.bottom - m.s.scrollbar.bottom - m.e.rect.bottom,
            left: m.e.rect.left - (m.s.rect.left + m.s.border.left),
            right: m.s.rect.right - m.s.border.right - m.s.scrollbar.right - m.e.rect.right
          };
          k = {};
          if (j.direction.y === true) {
            if (h.top < 0) {
              k.scrollTop = m.s.scroll.top + h.top - 50;
            } else {
              if (h.top > 0 && h.bottom < 0) {
                k.scrollTop = m.s.scroll.top + Math.min(h.top - 50, -h.bottom);
              }
            }
          }
          if (j.direction.x === true) {
            if (h.left < 0) {
              k.scrollLeft = m.s.scroll.left + h.left;
            } else {
              if (h.left > 0 && h.right < 0) {
                k.scrollLeft = m.s.scroll.left + Math.min(h.left, -h.right);
              }
            }
          }
          if (!f.isEmptyObject(k)) {
            if (e.test(i[0].nodeName)) {
              i = f('html,body');
            }
            i.animate(k, j.duration).eq(0).queue(function(o) {
              f.isFunction(j.complete) && j.complete.call(i[0]);
              o();
            });
          } else {
            f.isFunction(j.complete) && j.complete.call(i[0]);
          }
        }
        return this;
      }
    });
    a = {
      auto: true,
      scroll: true,
      visible: false,
      hidden: false
    };
    f.extend(f.expr[':'], {
      scrollable: function(k, i, n, h) {
        var j, l, m, o;
        m = c[typeof n[3] === 'string' && n[3].toLowerCase()] || c.both;
        l = document.defaultView && document.defaultView.getComputedStyle ? document.defaultView.getComputedStyle(k, null) : k.currentStyle;
        o = {
          x: a[l.overflowX.toLowerCase()] || false,
          y: a[l.overflowY.toLowerCase()] || false,
          isRoot: e.test(k.nodeName)
        };
        if (!o.x && !o.y && !o.isRoot) {
          return false;
        }
        j = {
          height: {
            scroll: k.scrollHeight,
            client: k.clientHeight
          },
          width: {
            scroll: k.scrollWidth,
            client: k.clientWidth
          },
          scrollableX: function() {
            return (o.x || o.isRoot) && this.width.scroll > this.width.client;
          },
          scrollableY: function() {
            return (o.y || o.isRoot) && this.height.scroll > this.height.client;
          }
        };
        return m.y && j.scrollableY() || m.x && j.scrollableX();
      }
    });
  })(jQuery);

}).call(this);

//# sourceMappingURL=../../app/helpers/scroll.js.map