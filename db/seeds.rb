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
        username: 'demouser',
        first_name: 'Demo',
        last_name: 'User',
        password:'12345',
},
    {
        username: 'laluna',
        first_name: 'oliver',
        last_name: 'M',
        password:'12345',
},
    {
        username: 'laurel',
        first_name: 'Lauren',
        last_name: 'L',
        password:'12345',
},
    {
        username: 'simoneB',
        first_name: 'simone',
        last_name: 'B',
        password:'12345',
},
])

Shelf.create!([
    {
        user_id:1,
        name:"Currently Reading"
    },
    {
        user_id:1,
        name:"Read"
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
        text: 'Cesserent qu instruite epluchant cependant escadrons le. Visages passent vit donjons nos hauteur feu les. Jeunes autour encore toi est tenons cet wagons sortes.',
        date: 'Jan 10, 2022',
        book_id: 'rWgrDwAAQBAJ'
    },
    {
        user_id: 2,
        rating: 5,
        text: 'Prudence profonde coupoles prennent roc pas precieux pourquoi. Ennemies massacre triomphe les cavernes des six toi. Je or devant blason palais et epouse sa atroce. Se on rendre ah sortit annees jusque jambes voyage. Chantant traverse soutenir net campagne sur remettre. Demeurons cet six art toutefois resterait les. Firmament sortaient net echauffer aux reprendre preferait eux.',
        date: 'Jan 11, 2022',
        book_id: 'rWgrDwAAQBAJ'
    },
    {
        user_id: 3,
        rating: 5,
        text: 'Linge selon court ans toi sabre heros. Connut toi mirent art ton trouve enleve hideur eux balaye. Cornette or coussins recupera allaient viennent heureuse as. Obtenir promene ils regarde dit des. Roches police eux ahuris pleine marche moi demain. Essor verte noces oui non temps creve.',
        date: 'Mar 12, 2022',
        book_id: 'rWgrDwAAQBAJ'
    },
    {
        user_id: 4,
        rating: 5,
        text: 'Comme verts mes comme ces nul fut. Et ah te avons rente rouge je. Il ainsi il cause oh croix utile or. Jeunesse poitrine en epanouir la reparler la. Jet noble force par arret ras voila votre peu. Les ete appareil supplice vit epandent. Collines dissiper cavalier octogone la magasins ca. Sur casernes eut pic criaient couvrent defoncat heureuse. Bon oeil aux mats tuer chez poil peur. Saut poil il fils un nous je eu idee. Si mais haut oh ah quoi loin. Crepitent demeurent perimetre sa xv cartouche convertir he culbutent. Cercle qu valoir ca bruits le ca. Oeufs feu dit sorte rente trois ecole mur moins.',
        date: 'June 10, 2022',
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
        host: {
            username: 'demouser',
            first_name: 'Demo',
            last_name: 'User',
            password:'12345',
        },
        description: 'A book club for everything you may or may not read!'
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