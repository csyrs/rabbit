import API from '../api/API.coffee'

export default class MoreComments

	constructor: (data, post_id) -> @[k] = v for k, v of {
		ids: data.children
		post_id: post_id
	}

	load: => API.get
		endpoint: '/api/morechildren'
		link_id: 't3_' + this.post_id
		children: this.ids