Date::ago = ->
	s = (Date.now() - @valueOf()) / 1000
	if s < 60
		return
			count: Math.trunc(s)
			unit: 's'
	m = s / 60
	if m < 60
		return
			count: Math.trunc(m)
			unit: 'm'
	h = m / 60
	if h < 24
		return
			count: Math.trunc(h)
			unit: 'h'
	d = h / 24
	if d < 7
		return
			count: Math.trunc(d)
			unit: 'd'
	wk = d / 7
	if wk < 4
		return
			count: Math.trunc(wk)
			unit: 'wk'
	mo = d / 28
	if mo < 12
		return
			count: Math.trunc(mo)
			unit: 'mo'
	yr = mo / 12
	return
		count: Math.trunc(yr)
		unit: 'yr'