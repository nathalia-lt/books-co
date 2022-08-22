puts 'Removing Previous Data'
User.destroy_all
Shelf.destroy_all
Review.destroy_all
Reaction.destroy_all
Bookclub.destroy_all
Clubuser.destroy_all

puts 'Creating Test Data'

User.create!([
    {
        username: 'test',
    password:'12345',
},
    {
        username: 'demo',
    password:'12345',
},
    {
        username: 'Corey',
    password:'12345',
},
    {
        username: 'Simone',
    password:'12345',
},
])

Shelf.create!([
    {
        user_id:1,
        name:"Read"
    },
    {
        user_id:1,
        name:"Currently Reading"
    },
    {
        user_id:1,
        name:"To Be Read"
    },
    {
        user_id:1,
        name:"Did Not Finish"
    },
])

Review.create!([
    {
        user_id: 1,
        rating: 5,
        text: 'Prudence profonde coupoles prennent roc pas precieux pourquoi. Ennemies massacre triomphe les cavernes des six toi. Je or devant blason palais et epouse sa atroce. Se on rendre ah sortit annees jusque jambes voyage. Chantant traverse soutenir net campagne sur remettre. Demeurons cet six art toutefois resterait les. Firmament sortaient net echauffer aux reprendre preferait eux.',
        date: 'Jan 10, 2022',
        book_id: 'rWgrDwAAQBAJ'
    },
    {
        user_id: 2,
        rating: 5,
        text: 'Prudence profonde coupoles prennent roc pas precieux pourquoi. Ennemies massacre triomphe les cavernes des six toi. Je or devant blason palais et epouse sa atroce. Se on rendre ah sortit annees jusque jambes voyage. Chantant traverse soutenir net campagne sur remettre. Demeurons cet six art toutefois resterait les. Firmament sortaient net echauffer aux reprendre preferait eux.',
        date: 'Jan 10, 2022',
        book_id: 'rWgrDwAAQBAJ'
    },
    {
        user_id: 3,
        rating: 5,
        text: 'Prudence profonde coupoles prennent roc pas precieux pourquoi. Ennemies massacre triomphe les cavernes des six toi. Je or devant blason palais et epouse sa atroce. Se on rendre ah sortit annees jusque jambes voyage. Chantant traverse soutenir net campagne sur remettre. Demeurons cet six art toutefois resterait les. Firmament sortaient net echauffer aux reprendre preferait eux.',
        date: 'Jan 10, 2022',
        book_id: 'rWgrDwAAQBAJ'
    },
    {
        user_id: 4,
        rating: 5,
        text: 'Prudence profonde coupoles prennent roc pas precieux pourquoi. Ennemies massacre triomphe les cavernes des six toi. Je or devant blason palais et epouse sa atroce. Se on rendre ah sortit annees jusque jambes voyage. Chantant traverse soutenir net campagne sur remettre. Demeurons cet six art toutefois resterait les. Firmament sortaient net echauffer aux reprendre preferait eux.',
        date: 'Jan 10, 2022',
        book_id: 'rWgrDwAAQBAJ'
    },

])

Reaction.create!([
    {
        review_id: 1,
        user_id: 2,
        emoji: '🎉'
    },
    {
        review_id: 1,
        user_id: 3,
        emoji: '🎉'
    },
    {
        review_id: 1,
        user_id: 4,
        emoji: '🎉'
    },
    {
        review_id: 2,
        user_id: 2,
        emoji: '👍'
    },
    {
        review_id: 2,
        user_id: 3,
        emoji: '👍'
    },
    {
        review_id: 2,
        user_id: 4,
        emoji: '👍'
    },
    {
        review_id: 3,
        user_id: 2,
        emoji: '❤️'
    },
    {
        review_id: 3,
        user_id: 3,
        emoji: '❤️'
    },
    {
        review_id: 3,
        user_id: 4,
        emoji: '❤️'
    },
    {
        review_id: 4,
        user_id: 2,
        emoji: '😄'
    },
    {
        review_id: 4,
        user_id: 3,
        emoji: '😄'
    },
    {
        review_id: 4,
        user_id: 4,
        emoji: '😄'
    },
])

Bookclub.create!([
    {
        name:"Test Book Club",
    }
])

Clubuser.create!([
    {
        user_id:1,
        bookclub_id:1,
    },
    {
        user_id:2,
        bookclub_id:1,
    },
    {
        user_id:4,
        bookclub_id:1,
    },
    {
        user_id:3,
        bookclub_id:1,
    }
])

puts 'Completed Seeding Data'