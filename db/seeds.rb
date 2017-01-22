devs = %w(joe sue fred mary).map {|dev| Developer.create name: dev}
comms = %w(rails nosql javascript postgres).map {|comm| Community.create name: comm}

Repo.create url: 'www.gitlab.com/342', comment: 'ruby code', developer: devs[0], community: comms[0]
Repo.create url: 'www.gitlab.com/662', comment: 'callbacks sample', developer: devs[0], community: comms[2]
Repo.create url: 'www.jsfiddle.com/abcg3', comment: 'reactive sample', developer: devs[1], community: comms[3]
Repo.create url: 'www.jsfiddle.com/563', comment: 'promises sample', developer: devs[2], community: comms[3]

Forum.create url: 'www.stackoverflow.com/mongodb', post: 'this is what I think...', developer: devs[2], community: comms[1]
Forum.create url: 'www.redis.com/563', post: 'my opinion is...', developer: devs[3], community: comms[1]

Event.create location: 'Bath, UK', name: 'Bath Ruby', developer: devs[2], community: comms[0]
Event.create location: 'Tech Institute', name: 'London NoSQL Meetup', developer: devs[2], community: comms[1]

# events a developer has appeared at
Developer.find_by(name: 'fred').appearances

# all events for the Rails community
Event.find_by(community: comms[0]) 

# all forums where a specific developer has posted
Forum.where(developer: Developer.find_by(name: 'fred'))

# get all events, forums and repositories for a specific community
Community.find_by(name: 'rails').hostings + Community.find_by(name: 'rails').discussions + Community.find_by(name: 'rails').contributions

# find developers who have appeared in Events, contributed to Repos and chatted on Forums, for any Community
Developer.select('distinct developers.name').joins(:repos).joins(:events).joins(:forums)
