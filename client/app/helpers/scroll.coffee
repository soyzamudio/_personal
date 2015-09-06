((f) ->
  c =
    vertical:
      x: false
      y: true
    horizontal:
      x: true
      y: false
    both:
      x: true
      y: true
    x:
      x: true
      y: false
    y:
      x: false
      y: true
  b =
    duration: 'fast'
    direction: 'both'
  e = /^(?:html)$/i

  g = (k, j) ->
    j = j or (if document.defaultView and document.defaultView.getComputedStyle then document.defaultView.getComputedStyle(k, null) else k.currentStyle)
    i = if document.defaultView and document.defaultView.getComputedStyle then true else false
    h =
      top: parseFloat(if i then j.borderTopWidth else f.css(k, 'borderTopWidth')) or 0
      left: parseFloat(if i then j.borderLeftWidth else f.css(k, 'borderLeftWidth')) or 0
      bottom: parseFloat(if i then j.borderBottomWidth else f.css(k, 'borderBottomWidth')) or 0
      right: parseFloat(if i then j.borderRightWidth else f.css(k, 'borderRightWidth')) or 0
    {
      top: h.top
      left: h.left
      bottom: h.bottom
      right: h.right
      vertical: h.top + h.bottom
      horizontal: h.left + h.right
    }

  d = (h) ->
    j = f(window)
    i = e.test(h[0].nodeName)
    {
      border: if i then {
        top: 0
        left: 0
        bottom: 0
        right: 0 } else g(h[0])
      scroll:
        top: (if i then j else h).scrollTop()
        left: (if i then j else h).scrollLeft()
      scrollbar:
        right: if i then 0 else h.innerWidth() - (h[0].clientWidth)
        bottom: if i then 0 else h.innerHeight() - (h[0].clientHeight)
      rect: do ->
        k = h[0].getBoundingClientRect()
        {
          top: if i then 0 else k.top
          left: if i then 0 else k.left
          bottom: if i then h[0].clientHeight else k.bottom
          right: if i then h[0].clientWidth else k.right
        }

    }

  f.fn.extend scrollintoview: (j) ->
    j = f.extend({}, b, j)
    j.direction = c[typeof j.direction == 'string' and j.direction.toLowerCase()] or c.both
    n = ''
    if j.direction.x == true
      n = 'horizontal'
    if j.direction.y == true
      n = if n then 'both' else 'vertical'
    l = @eq(0)
    i = l.closest(':scrollable(' + n + ')')
    if i.length > 0
      i = i.eq(0)
      m =
        e: d(l)
        s: d(i)
      h =
        top: m.e.rect.top - (m.s.rect.top + m.s.border.top)
        bottom: m.s.rect.bottom - (m.s.border.bottom) - (m.s.scrollbar.bottom) - (m.e.rect.bottom)
        left: m.e.rect.left - (m.s.rect.left + m.s.border.left)
        right: m.s.rect.right - (m.s.border.right) - (m.s.scrollbar.right) - (m.e.rect.right)
      k = {}
      if j.direction.y == true
        if h.top < 0
          k.scrollTop = m.s.scroll.top + h.top - 50
        else
          if h.top > 0 and h.bottom < 0
            k.scrollTop = m.s.scroll.top + Math.min(h.top - 50, -h.bottom)
      if j.direction.x == true
        if h.left < 0
          k.scrollLeft = m.s.scroll.left + h.left
        else
          if h.left > 0 and h.right < 0
            k.scrollLeft = m.s.scroll.left + Math.min(h.left, -h.right)
      if !f.isEmptyObject(k)
        if e.test(i[0].nodeName)
          i = f('html,body')
        i.animate(k, j.duration).eq(0).queue (o) ->
          f.isFunction(j.complete) and j.complete.call(i[0])
          o()
          return
      else
        f.isFunction(j.complete) and j.complete.call(i[0])
    this
  a =
    auto: true
    scroll: true
    visible: false
    hidden: false
  f.extend f.expr[':'], scrollable: (k, i, n, h) ->
    m = c[typeof n[3] == 'string' and n[3].toLowerCase()] or c.both
    l = if document.defaultView and document.defaultView.getComputedStyle then document.defaultView.getComputedStyle(k, null) else k.currentStyle
    o =
      x: a[l.overflowX.toLowerCase()] or false
      y: a[l.overflowY.toLowerCase()] or false
      isRoot: e.test(k.nodeName)
    if !o.x and !o.y and !o.isRoot
      return false
    j =
      height:
        scroll: k.scrollHeight
        client: k.clientHeight
      width:
        scroll: k.scrollWidth
        client: k.clientWidth
      scrollableX: ->
        (o.x or o.isRoot) and @width.scroll > @width.client
      scrollableY: ->
        (o.y or o.isRoot) and @height.scroll > @height.client
    m.y and j.scrollableY() or m.x and j.scrollableX()
  return
) jQuery
