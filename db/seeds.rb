puts "Removing Previous Data"
User.destroy_all
Shelf.destroy_all
Review.destroy_all
Reaction.destroy_all
Bookclub.destroy_all
Clubuser.destroy_all

puts "Creating Test Data"

User.create!([
  {
    username: "demouser",
    first_name: "Demo",
    last_name: "User",
    password: "12345",
  },
])

for num in 2..26
  User.create!(
    username: Faker::Internet.username(specifier: 4..9),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: "12345",
    profile_picture: Faker::Avatar.image,
  )
end

Shelf.create!([
  {
    user_id: 1,
    name: "Currently Reading",
    books: [
      {
        "kind": "books#volume",
        "id": "8pHqDwAAQBAJ",
        "etag": "w3LO9LxGW14",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/8pHqDwAAQBAJ",
        "volumeInfo": {
          "title": "Dune Messiah",
          "authors": [
            "Frank Herbert",
          ],
          "publisher": "Penguin",
          "publishedDate": "2020-07-07",
          "description": "<b>Book Two in the Magnificent Dune Chronicles--the Bestselling Science Fiction Adventure of All Time<br> <br></b><i>Dune Messiah</i> continues the story of Paul Atreides, better known--and feared--as the man christened Muad'Dib. As Emperor of the known universe, he possesses more power than a single man was ever meant to wield. Worshipped as a religious icon by the fanatical Fremen, Paul faces the enmity of the political houses he displaced when he assumed the throne--and a conspiracy conducted within his own sphere of influence.<br> <br> And even as House Atreides begins to crumble around him from the machinations of his enemies, the true threat to Paul comes to his lover, Chani, and the unborn heir to his family's dynasty...",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0593201736",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780593201732",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 304,
          "printedPageCount": 306,
          "dimensions": {
            "height": "21.00 cm",
            "width": "13.90 cm",
            "thickness": "2.00 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Classics",
            "Fiction / Fantasy / Epic",
            "Fiction / Science Fiction / Space Opera",
          ],
          "averageRating": 3.5,
          "ratingsCount": 61,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.1.0.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=8pHqDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE71ZlZMivJrYm3AGvQXcESfkagaioVwsyVlTaHhPMLb65Ek5GyYCcL7b99oDsfgUZ4-VVGvq1V28otpcFdsaZqjYUtecQl2gk9Ni9rQc9N0aAH_F_jSH3_qmWSX6UWnlttAlGMwX&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=8pHqDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70epK04maMhGqUmEYV6xlHC8XTNh3FYn1pCDr7reEjRzH0k22n5GSdXJzqEtfE9JM2HDzqgIJ0H-zt14HOe_0iGbfVGa1JAeypGk674mH6Bc4RNBhFA3hpuisuMnDs-akBYcR5D&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=8pHqDwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE733gVpkQJPegt0x6Jl2nokTF1OQx9uMT2VR60oDkKVLTH1vusN6dpoYWC0pmY2SnjSZwdPb_jI9qFyL70QQ0OEGKZNPCoSIioKCycHiFRGRY67_Eik4kCIUeolKsqv2WhvkCYbe&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=8pHqDwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72MPtrOn38wENvE5-pAwZVfs6QJFHXLaXIRO0K5oznnQsPMQcC3lKB9q50LHOaBjRk5TE-tEtGC7tyD9DI33-mrbhJbcg1v1H0Io8ENa3EStRJJVj5cTtCLBOLmumXp2nZMQcIw&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=8pHqDwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE715Fo7ob9jf--kZ37sFO7bgnuLGtlwbW7gGokWVoIgSWDje_vfRXSXR2dIRgMapQy-sG7GCKTZ7WspF7KDXPxd_bJjHpTzkBKW9Sn76gCpjkdztmy9gLxtR4mzAxGMgBnk3Rti5&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=8pHqDwAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=8pHqDwAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=8pHqDwAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=8pHqDwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      },
      {
        "kind": "books#volume",
        "id": "jD8iswEACAAJ",
        "etag": "UnRjnzM8LYQ",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/jD8iswEACAAJ",
        "volumeInfo": {
          "title": "Cracking the Coding Interview",
          "subtitle": "189 Programming Questions and Solutions",
          "authors": [
            "Gayle Laakmann McDowell",
          ],
          "publisher": "CareerCup, LLC",
          "publishedDate": "2015",
          "description": "I am not a recruiter. I am a software engineer. And as such, I know what it's like to be asked to whip up brilliant algorithms on the spot and then write flawless code on a whiteboard. I've been through this as a candidate and as an interviewer. Cracking the Coding Interview, 6th Edition is here to help you through this process, teaching you what you need to know and enabling you to perform at your very best. I've coached and interviewed hundreds of software engineers. The result is this book. Learn how to uncover the hints and hidden details in a question, discover how to break down a problem into manageable chunks, develop techniques to unstick yourself when stuck, learn (or re-learn) core computer science concepts, and practice on 189 interview questions and solutions. These interview questions are real; they are not pulled out of computer science textbooks. They reflect what's truly being asked at the top companies, so that you can be as prepared as possible. WHAT'S INSIDE? - 189 programming interview questions, ranging from the basics to the trickiest algorithm problems. - A walk-through of how to derive each solution, so that you can learn how to get there yourself. - Hints on how to solve each of the 189 questions, just like what you would get in a real interview. - Five proven strategies to tackle algorithm questions, so that you can solve questions you haven't seen. - Extensive coverage of essential topics, such as big O time, data structures, and core algorithms. - A behind the scenes look at how top companies like Google and Facebook hire developers. - Techniques to prepare for and ace the soft side of the interview: behavioral questions. - For interviewers and companies: details on what makes a good interview question and hiring process.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0984782850",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780984782857",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 696,
          "printedPageCount": 696,
          "dimensions": {
            "height": "23.00 cm",
            "width": "17.90 cm",
            "thickness": "3.60 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Business & Economics / Careers / Job Hunting",
            "Computers / Programming / General",
            "Computers / Software Development & Engineering / General",
          ],
          "averageRating": 3,
          "ratingsCount": 2,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=jD8iswEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE70ojhFl0-vWuqJ_cV51qTlJ-eZViOCCDvPvzLbFfOG_XPAmCwv7zhSZ6GmYv8oLlYejbGBC6abP1D6epvdPVKl8X04Kde6xU9A14AVgME8KKukjK3pB8jpC_F7qhEcKxkevhwZP&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=jD8iswEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73X0oMMvk9q9Wvhsxxtbsaz3MXzhVyTWPNhsBUF4rhHwMJAjcDg7N7nVGl4jtTGf19E_YTgjiMaou-A9exbA6fVrbKlQez-BByNtLMOLKsROrc6gJwo75XBWuFRNanX3IgyIgP8&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=jD8iswEACAAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=jD8iswEACAAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=jD8iswEACAAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=jD8iswEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "yzkzEAAAQBAJ",
        "etag": "Ry1Cm780xuo",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/yzkzEAAAQBAJ",
        "volumeInfo": {
          "title": "Grokking Algorithms",
          "subtitle": "An illustrated guide for programmers and other curious people",
          "authors": [
            "Aditya Bhargava",
          ],
          "publisher": "Simon and Schuster",
          "publishedDate": "2016-05-12",
          "description": "<b>\"This book does the impossible: it makes math fun and easy!\"</b> - <i>Sander Rossel, COAS Software Systems</i><br> <br> <i>Grokking Algorithms</i> is a fully illustrated, friendly guide that teaches you how to apply common algorithms to the practical problems you face every day as a programmer. You'll start with sorting and searching and, as you build up your skills in thinking algorithmically, you'll tackle more complex concerns such as data compression and artificial intelligence. Each carefully presented example includes helpful diagrams and fully annotated code samples in Python.<br> <br> Learning about algorithms doesn't have to be boring! Get a sneak peek at the fun, illustrated, and friendly examples you'll find in Grokking Algorithms on Manning Publications' YouTube channel.<br> <br> Continue your journey into the world of algorithms with <i>Algorithms in Motion</i>, a practical, hands-on video course available exclusively at Manning.com (www.manning.com/livevideo/algorithms-?in-motion).<br> <br> Purchase of the print book includes a free eBook in PDF, Kindle, and ePub formats from Manning Publications.<br> <br> <b>About the Technology</b><br> <br> An algorithm is nothing more than a step-by-step procedure for solving a problem. The algorithms you'll use most often as a programmer have already been discovered, tested, and proven. If you want to understand them but refuse to slog through dense multipage proofs, this is the book for you. This fully illustrated and engaging guide makes it easy to learn how to use the most important algorithms effectively in your own programs.<br> <br> <b>About the Book</b><br> <br> <i>Grokking Algorithms</i> is a friendly take on this core computer science topic. In it, you'll learn how to apply common algorithms to the practical programming problems you face every day. You'll start with tasks like sorting and searching. As you build up your skills, you'll tackle more complex problems like data compression and artificial intelligence. Each carefully presented example includes helpful diagrams and fully annotated code samples in Python. By the end of this book, you will have mastered widely applicable algorithms as well as how and when to use them.<br> <br> <b>What's Inside</b><br> <br> <br> <br> <br> <br> <br> <br> <br> <ul> <li>Covers search, sort, and graph algorithms</li> <li>Over 400 pictures with detailed walkthroughs</li> <li>Performance trade-offs between algorithms</li> <li>Python-based code samples</li> </ul> <br> <br><br> <br> <br> <b>About the Reader</b><br> <br> This easy-to-read, picture-heavy introduction is suitable for self-taught programmers, engineers, or anyone who wants to brush up on algorithms.<br> <br> <b>About the Author</b><br> <br> <b>Aditya Bhargava</b> is a Software Engineer with a dual background in Computer Science and Fine Arts. He blogs on programming at adit.io.<br> <br> <b>Table of Contents</b><br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br><br> <br> <br> <br> <br><br> <br> <ol> <li>Introduction to algorithms</li> <li>Selection sort</li> <li>Recursion</li> <li>Quicksort</li> <li>Hash tables</li> <li>Breadth-first search</li> <li>Dijkstra's algorithm</li> <li>Greedy algorithms</li> <li>Dynamic programming</li> <li>K-nearest neighbors</li> </ol> <br><br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "1638353344",
            },
            {
              "type": "ISBN_13",
              "identifier": "9781638353348",
            },
          ],
          "readingModes": {
            "text": true,
            "image": false,
          },
          "pageCount": 256,
          "printedPageCount": 354,
          "printType": "BOOK",
          "categories": [
            "Computers / Software Development & Engineering / General",
            "Computers / Programming / Games",
            "Computers / Computer Science",
            "Computers / Data Science / General",
            "Computers / Database Administration & Management",
            "Computers / Machine Theory",
            "Computers / Programming / General",
            "Computers / Languages / General",
            "Computers / Programming / Algorithms",
            "Computers / Languages / Python",
            "Computers / Software Development & Engineering / Tools",
            "Computers / Internet / Search Engines",
            "Computers / User Interfaces",
          ],
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": true,
          "contentVersion": "0.1.1.0.preview.2",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72vFHRFZwccoHML_p3oVs6lWyybW6gnNdSfpbyP7hQyh5NTAhflwA-DrWaZSGCIK-iLBNCSolzJwFzy7d-hS8c9JYoizka2nqoW-TWSTr08jmJs9KcwH0ifQGoPoTRqb1J-fg_F&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71K1WKqQC8V4x8UOh_mj8RYOjXUxnm9Em2HM1BwNgel6If4DKw3iu_z8vof_w77kU2aaA6NL6xQ8RAEtxxIKrZxHcqfbEDVsY9SDuc8lHKaaQiR_55GN3F8RFW_K5gm0goL36vM&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72rQn9gGr1pms3s-xwdcToVV0jlqZHH9npJlXsHqt-4AalTJkr0_hZIPfYf8KJ_nhqBsFk0P3Lc25rRz7mB0f3OwX-B275qMVfyMvaGlt2L7bgFQc7UbaGfY4HVbnTL3FdxgxHl&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72YcsPGbL8L2JDBp2EN2LdwTW-0iIoClc55IgHn9fI__uF9mbcaMwxF4j9Un5Z6P68NWg0I88IDuMQUX5jRlBt-pMO2VLChockT8tDyAcgHm229Zn0NWVUYK1VILg0MacJXN749&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE73CT4okZMgQccMZ9AvFulosguwn3C0FTxG35_jvc35DHFieZyjB7_WpaiOySM0Vb7YFg5b_UfEpoT9OEB6hp9kjeqY-4HhxvweqP3nMcj6v2W-S3MwKHOyRyKfkrFgIDRBXGV5D&source=gbs_api",
            "extraLarge": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70br8VNKwskp2T5Top4w4cHT4q5HFUvNP_ecXQVmGmX4p3YxDKH2VQRlcMgemrsWMMSLr90rQV2I1kxQdhagmalr-e2FUWmnuCJBAWNQqQx6OD4ZDIUGhLPMubaEwsqd12EcoZm&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=yzkzEAAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=yzkzEAAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=yzkzEAAAQBAJ",
        },
        "layerInfo": {
          "layers": [
            {
              "layerId": "geo",
              "volumeAnnotationsVersion": "2",
            },
          ],
        },
        "saleInfo": {
          "country": "US",
          "saleability": "FOR_SALE",
          "isEbook": true,
          "listPrice": {
            "amount": 34.99,
            "currencyCode": "USD",
          },
          "retailPrice": {
            "amount": 34.99,
            "currencyCode": "USD",
          },
          "buyLink": "https://play.google.com/store/books/details?id=yzkzEAAAQBAJ&rdid=book-yzkzEAAAQBAJ&rdot=1&source=gbs_api",
          "offers": [
            {
              "finskyOfferType": 1,
              "listPrice": {
                "amountInMicros": 34990000,
                "currencyCode": "USD",
              },
              "retailPrice": {
                "amountInMicros": 34990000,
                "currencyCode": "USD",
              },
              "giftable": true,
            },
          ],
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED_FOR_ACCESSIBILITY",
          "epub": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.com/books/download/Grokking_Algorithms-sample-epub.acsm?id=yzkzEAAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=yzkzEAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      },
    ],
  },
  {
    user_id: 1,
    name: "Read",
    books: [
      {
        "kind": "books#volume",
        "id": "B1hSG45JCX4C",
        "etag": "CX7ir1lH/oY",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/B1hSG45JCX4C",
        "volumeInfo": {
          "title": "Dune",
          "authors": [
            "Frank Herbert",
          ],
          "publisher": "Penguin",
          "publishedDate": "2005",
          "description": "Here is the novel that will be forever considered a triumph of the imagination. Set on the desert planet Arrakis, <b>Dune</b> is the story of the boy Paul Atreides, who would become the mysterious man known as Muad'Dib. He would avenge the traitorous plot against his noble family--and would bring to fruition humankind's most ancient and unattainable dream. <p> A stunning blend of adventure and mysticism, environmentalism and politics, <b>Dune</b> won the first Nebula Award, shared the Hugo Award, and formed the basis of what it undoubtedly the grandest epic in science fiction. </p>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0441013597",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780441013593",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 528,
          "printedPageCount": 548,
          "dimensions": {
            "height": "23.00 cm",
            "width": "13.80 cm",
            "thickness": "2.80 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Science Fiction / General",
            "Fiction / Science Fiction / Action & Adventure",
          ],
          "averageRating": 4,
          "ratingsCount": 301,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "3.2.4.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=B1hSG45JCX4C&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72bSFcQYKaReX6rQXEKEdDeckoIhgjjDFIa4HDt1D1xbJ-MT1P-aA7orY6Nhet3QzQCS0lDgJp0_ifvxFHlG5Hhu8BbYAlSgZ2lX3UKvYfzYt7kSfncob8UrZsnxostiscr2-dJ&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=B1hSG45JCX4C&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE710vvi_FH7ZfxpBT63fFlO7LQH-dnfnxBPxahlDMm5qz0KOs4hL8t06OOjznf0ZWHjgLUGLrUxNTGHINFMNJf16ahIi3NQDVfgyjPr4BzLlw6Ux7Wvwgjz3vn0UMth1zf2_Vx6m&source=gbs_api",
            "small": "http://books.google.com/books/content?id=B1hSG45JCX4C&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70J0z4bY7ciwHxfrtzOsZEEzgQhig22Iz2KwrIObI3tlsKiSjT0Hz7e6iL0dZCvHluw01G4f8B8BnqtwdovmWpth7h1I5CrZAnklUKjPZUl6-3zDl1rWi2xJ0dw7GStuiHQ2QrS&source=gbs_api",
            "medium": "http://books.google.com/books/content?id=B1hSG45JCX4C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71_EWtDt2Dovx0ZfdEntu3zBST786sPuid2DhcgD0RItqbLR0TjneBFzLJ3REPnyImQZvXRqApigR6M6DbBAnVE2aEhvKfn-J2oZkd8Khd00Tan44L9miwgtTEZY6K-y8BPo7hq&source=gbs_api",
            "large": "http://books.google.com/books/content?id=B1hSG45JCX4C&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE711boDnQf7LYIj-fm7wwfZAeUp3bEjgx5YrMNWznMjFNoHLmK0d5khEcRxEpbUZ8T_OcgAVgMs_J_GhW2cYUpH2akC8jGh1d0pwQsHKxJtxaQKrHW-q_Ev-MM7mSYti0aSj_lca&source=gbs_api",
            "extraLarge": "http://books.google.com/books/content?id=B1hSG45JCX4C&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE73xXTlO-zfFj7qzAbUoYPpilTTDDNKuZMsmr1jVEHM4LqKsiaWAugPgWu6lD-PAGtYhjPDTfdNRwRB2ZeSra1hEG_LCAcMuhWMSaWKwT0GjUXjE_ccN3Amdcl5_K0n5j7gfRNYM&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=B1hSG45JCX4C&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=B1hSG45JCX4C&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=B1hSG45JCX4C",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=B1hSG45JCX4C&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "8bdcAAAAQBAJ",
        "etag": "zUYcU01jfQE",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/8bdcAAAAQBAJ",
        "volumeInfo": {
          "title": "Memórias póstumas de Brás Cubas",
          "authors": [
            "Machado de Assis",
          ],
          "publisher": "Google, Inc.",
          "publishedDate": "1963",
          "readingModes": {
            "text": true,
            "image": true,
          },
          "pageCount": 240,
          "printedPageCount": 395,
          "dimensions": {
            "height": "21.00 cm",
          },
          "printType": "BOOK",
          "averageRating": 5,
          "ratingsCount": 3,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.2.2.0.full.3",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73HEdvr3asDMqwvC-dAfQLk5oWPzQ3VeluwZRmqPVAe7Db-WhdhV6pBnQwxeP-yoESGfHbU3BAVt5aS5IzjzvfEBaQXLbfHE9DRgvw_ZAKQ-hjO-QkI1ednRLmcIKbZXbGDzswA&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70mro3kE-CxRMTGQ4B5j34_VCE9iyuAmo8mwZuXceNXpCgw5t6vbb2XPUHo_uldJycB2kBh1ls7UVjhNcuQdc396Z5BWM-WV2y_6xtxyf-caF-G49aSbtASojJ6wlvarcnFsLBo&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73vxJkUEP1KE0PozXkPkco60lhl4wqC5eTBJqR0tbuPIaXRIuKvDXj9wYN51iXRNdUoc7G53oaBcWEIqSovy16g_R8tjbhMLfR6wp_TLn7fPIczw2iofNS9oMsewDZrXNLCmMU3&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71hJ3tRHysHffSCpW0ESvzlkzDxAHIwUsGO0ocyPFUMryhYfBua35ChL0Gew3bnRPA4XJHvww60wgjNPNSo0mzJzf7W7yRg-tMBYfZdzfuLY9NSlI28l8dcssiT4Fpkhg0VwH6_&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE72Tqt73E81cm-e2V25-RLuNd8YRxUVWtJA7iKEyZBvzqHW7F5G1LnIp5W8oNv-eX9dbnlJsM2JLnWlf1BRJyLYO5M4NrsQ2cjYeSAVv6VtUFb5dvA-KPPR5ZWe5oi3PrZcQ4xD-&source=gbs_api",
            "extraLarge": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE73w6hjGv5y4SloufKjGNMrYCyEZBCI4R83C4IXf5mNhQ_Nu2aDj3IzP5VWd7rCluITdPF3LLlATTDlLFW_X_J9N0C6_1kCRIA0Q6gLoXXRKZqtN0Lb6ocFGY7nJqINgcghd6xyv&source=gbs_api",
          },
          "language": "pt-BR",
          "previewLink": "http://books.google.com/books?id=8bdcAAAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=8bdcAAAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=8bdcAAAAQBAJ",
        },
        "layerInfo": {
          "layers": [
            {
              "layerId": "geo",
              "volumeAnnotationsVersion": "3",
            },
          ],
        },
        "saleInfo": {
          "country": "US",
          "saleability": "FREE",
          "isEbook": true,
          "buyLink": "https://play.google.com/store/books/details?id=8bdcAAAAQBAJ&rdid=book-8bdcAAAAQBAJ&rdot=1&source=gbs_api",
        },
        "accessInfo": {
          "country": "US",
          "viewability": "ALL_PAGES",
          "embeddable": true,
          "publicDomain": true,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": true,
            "downloadLink": "http://books.google.com/books/download/Mem%C3%B3rias_p%C3%B3stumas_de_Br%C3%A1s_Cubas.epub?id=8bdcAAAAQBAJ&hl=&output=epub&source=gbs_api",
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=8bdcAAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "QxbFBAAAQBAJ",
        "etag": "OHAe0CSPr/E",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/QxbFBAAAQBAJ",
        "volumeInfo": {
          "title": "The Three-Body Problem",
          "authors": [
            "Cixin Liu",
          ],
          "publisher": "Macmillan",
          "publishedDate": "2014-11-11",
          "description": "<p><b>Soon to be a Netflix Original Series!<br></b><br><b>An NPR Best Book of the Decade<br></b><br><b>Winner of the Hugo Award for Best Novel</b><br><br>“<i>War of the Worlds</i> for the 21st century.” – <i>Wall Street Journal</i><br><b><i><br>The Three-Body Problem </i>is the first chance for English-speaking readers to experience the Hugo Award-winning phenomenon from China's most beloved science fiction author, Liu Cixin.</b><br><br>Set against the backdrop of China's Cultural Revolution, a secret military project sends signals into space to establish contact with aliens. An alien civilization on the brink of destruction captures the signal and plans to invade Earth. Meanwhile, on Earth, different camps start forming, planning to either welcome the superior beings and help them take over a world seen as corrupt, or to fight against the invasion. The result is a science fiction masterpiece of enormous scope and vision.<br><br><b>The Three-Body Problem Series</b><br><i>The Three-Body Problem</i><br><i>The Dark Forest</i><br><i>Death's End</i><br><br><b>Other Books</b><br><i>Ball Lightning</i> <br><i>Supernova Era<br>To Hold Up The Sky</i> (forthcoming)</p>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0765377063",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780765377067",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 399,
          "printedPageCount": 400,
          "dimensions": {
            "height": "25.00 cm",
            "width": "16.10 cm",
            "thickness": "3.60 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Science Fiction / General",
            "Fiction / Science Fiction / Hard Science Fiction",
            "Fiction / Science Fiction / Alien Contact",
            "Fiction / World Literature / China / 21st Century",
          ],
          "averageRating": 3.5,
          "ratingsCount": 125,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.4.0.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73r6O0ma5fnAWeoui12_am8-SgsNA_afLn85dqq9i_FuK5978Hc-WhmjeDpHdFWYMi1NWnqjWTIEkPw4fx_MBaLzvyB6wml3RNjytbLvpT6drsaEWfqiL-whmR--CrY0eX6r0Bh&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71p5OuB1MH3aDM5z4lyhd0Idd6a4OKSRnI9WE6higwl3RUqsyGIiQxElyFk10y9-CHhbefv-ZI7JvEiV7OVTVO4vQxDbvUJ2oCuSTIg_VGOv3_nCeDmPJ0XgowtvcDPus4yUSzK&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73W0l2edD4L4DrrJZWgwX4G1YxRAKr6EGZR5jFT0TnQ9xZyBDYSRjP15JK9qaGvWctLZCCmJeeZuMhRMwdpIBuWwHkCVI7LYTjYN6JX0O5bBBxFUUahbSq-_pIfT5EZh240gbeu&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70wqeEotk3f3L_cO13BkdB9gusyRSGxookfZmKsYYIczTzjFbL4Q5G2lzI7fEFukyGXn3FdCAxtH8t5MFGum1eIbLqzZ2nVG5MDWpwUne03Kzx8CCkG5hNaEwwY2H9S4fx1EMA3&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE70IXom0jCVwfST9dYWTBa5lRZFKQZNdH-YM7wvpiCRzjOoeKi9lX3GA4lW2dgCL22X-58q1ngr72X4gQ0CESdvJQBDkqdudROzzHaHMH8HCQlCRdk1heOXd3brBw81C74zxTZlr&source=gbs_api",
            "extraLarge": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70zseNexuuOF2O_AM11bAhR-uZyIzyI5D0476YzzsbhmyCGTdiY0aScJ73QKZjLl6A77HkvzMOqo1sJ7N-eMLRgkaCx85eQ44oQZ8akciXaLX3EBmuKhB8gCbQh04iDWZEM7a-t&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=QxbFBAAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=QxbFBAAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=QxbFBAAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=QxbFBAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "dsznmgEACAAJ",
        "etag": "twSUyaajCBA",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/dsznmgEACAAJ",
        "volumeInfo": {
          "title": "Pride & Prejudice",
          "authors": [
            "Jane Austen",
          ],
          "publisher": "Fingerprint Classics",
          "publishedDate": "2013",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "8172344503",
            },
            {
              "type": "ISBN_13",
              "identifier": "9788172344504",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 328,
          "printedPageCount": 328,
          "dimensions": {
            "height": "22.00 cm",
          },
          "printType": "BOOK",
          "averageRating": 5,
          "ratingsCount": 1,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=dsznmgEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE70B-YXUoemx-38lT9UISqJ1oGIxnyIbhZvtmLI5kMyPoLnmPOpBTOLxSCgIKT0PO4PvWtT2O2PMsG_G1kWkXNrV4yQCdgwYWAH_8jYxwU__YQA-q50HDdLgnKuLFONXrlXYsFiD&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=dsznmgEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72kYs7Xx9L66tP8CLBxdv8p8t7ZVs9G6u8NSdcDiVkuXKdpZu1jgTXfmNTIEj6DeZBhphG2y7IpJ53xn671MOfp3RY3QVQk282NemWaDgkKAoLxJax-kMpj1SUSzzWCgrVY_vTG&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=dsznmgEACAAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=dsznmgEACAAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=dsznmgEACAAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=dsznmgEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "iCzQ4z02cFYC",
        "etag": "Y53MO5LMuxM",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/iCzQ4z02cFYC",
        "volumeInfo": {
          "title": "The Diving Bell and the Butterfly",
          "authors": [
            "Jean-Dominique Bauby",
          ],
          "publisher": "Knopf Doubleday Publishing Group",
          "publishedDate": "2008-03-06",
          "description": "<b>A triumphant memoir by the former editor-in-chief of French <i>Elle</i> that reveals an indomitable spirit and celebrates the liberating power of consciousness. </b><br><br> In 1995, Jean-Dominique Bauby was the editor-in-chief of French Elle, the father of two young children, a 44-year-old man known and loved for his wit, his style, and his impassioned approach to life. By the end of the year he was also the victim of a rare kind of stroke to the brainstem. <br><br> After 20 days in a coma, Bauby awoke into a body which had all but stopped working: only his left eye functioned, allowing him to see and, by blinking it, to make clear that his mind was unimpaired. Almost miraculously, he was soon able to express himself in the richest detail: dictating a word at a time, blinking to select each letter as the alphabet was recited to him slowly, over and over again. In the same way, he was able eventually to compose this extraordinary book. <br><br> By turns wistful, mischievous, angry, and witty, Bauby bears witness to his determination to live as fully in his mind as he had been able to do in his body. He explains the joy, and deep sadness, of seeing his children and of hearing his aged father's voice on the phone. In magical sequences, he imagines traveling to other places and times and of lying next to the woman he loves. Fed only intravenously, he imagines preparing and tasting the full flavor of delectable dishes. Again and again he returns to an \"inexhaustible reservoir of sensations,\" keeping in touch with himself and the life around him. <br><br> Jean-Dominique Bauby died two days after the French publication of <i>The Diving Bell and the Butterfly</i>. This book is a lasting testament to his life.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0307454835",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780307454836",
            },
          ],
          "readingModes": {
            "text": true,
            "image": true,
          },
          "pageCount": 146,
          "printedPageCount": 146,
          "printType": "BOOK",
          "categories": [
            "Biography & Autobiography / Editors, Journalists, Publishers",
            "Biography & Autobiography / Personal Memoirs",
            "Self-Help / Death, Grief, Bereavement",
          ],
          "averageRating": 4,
          "ratingsCount": 98,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": true,
          "contentVersion": "0.3.3.0.preview.3",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=iCzQ4z02cFYC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70lq-nT8rK2oBtMrcnp4IACpRrGE3kRVdoafNCIYIY2huCkz7WCgqeANDTdNRt2Z0MrSDtgV8HTJAiZY_L7VrRYEN6kw_8fka3QagFKhzHfu-FjViWJm4M5aqb09kyYre3CUC-j&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=iCzQ4z02cFYC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71xZtxVjWJzFAPu4fKvjiAJkf0Rm_Gx3lEQw-WRoEj6ldAa5u5ZAgaLcJlF8eEzqZdZM--qp_wxHRkDsKzaAalwSp4UEyLXIVyHMTAVfGgQHconAWO3GtoN-KQW9coXGzkS7uqe&source=gbs_api",
            "small": "http://books.google.com/books/content?id=iCzQ4z02cFYC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72HuaUdwhtiYjZ1ZOeWgBWy39mB-KcBAXEDukBfTQ2YwM3m6Gn-fl9qRTCUKs5sNqQCxyXF-KNDVNDSFTmQyQPB2nx5lweQ4-Nxsc33ZEC-aEIZsLzr07cR9E3DQ0LX2zuK2p0_&source=gbs_api",
            "medium": "http://books.google.com/books/content?id=iCzQ4z02cFYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70R1flpSBtr5IoNaC08vppUdQbfj8_DeIjqUwgqbPClgxc0Bdc7WLVzchNGCmFMMhM7-wVAcqOE2ZmVioB3zIkmYibj-qNjVmvR430gVB9lq70JcKktpJIsJmEgLiO-I1Lw-Hzx&source=gbs_api",
            "large": "http://books.google.com/books/content?id=iCzQ4z02cFYC&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE73zykMyNNEU5WAiVKV4DyiuLrcDsarJm4CpGKuokWB5gnlFwYr5qBqgb9Rpspczj5jCi2Vc3suLTvHkAS3QvQBLKX50ygkM820k4q3Kp1K9bd1Uxg9EyPgdFx-KL85aIvPYKL4K&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=iCzQ4z02cFYC&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=iCzQ4z02cFYC&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=iCzQ4z02cFYC",
        },
        "layerInfo": {
          "layers": [
            {
              "layerId": "geo",
              "volumeAnnotationsVersion": "8",
            },
          ],
        },
        "saleInfo": {
          "country": "US",
          "saleability": "FOR_SALE",
          "isEbook": true,
          "listPrice": {
            "amount": 11.99,
            "currencyCode": "USD",
          },
          "retailPrice": {
            "amount": 11.99,
            "currencyCode": "USD",
          },
          "buyLink": "https://play.google.com/store/books/details?id=iCzQ4z02cFYC&rdid=book-iCzQ4z02cFYC&rdot=1&source=gbs_api",
          "offers": [
            {
              "finskyOfferType": 1,
              "listPrice": {
                "amountInMicros": 11990000,
                "currencyCode": "USD",
              },
              "retailPrice": {
                "amountInMicros": 11990000,
                "currencyCode": "USD",
              },
              "giftable": true,
            },
          ],
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.com/books/download/The_Diving_Bell_and_the_Butterfly-sample-epub.acsm?id=iCzQ4z02cFYC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
          },
          "pdf": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.com/books/download/The_Diving_Bell_and_the_Butterfly-sample-pdf.acsm?id=iCzQ4z02cFYC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
          },
          "webReaderLink": "http://play.google.com/books/reader?id=iCzQ4z02cFYC&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "ao_9yQEACAAJ",
        "etag": "rvTy63rCPMk",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/ao_9yQEACAAJ",
        "volumeInfo": {
          "title": "The Simple Wild",
          "subtitle": "A Novel",
          "authors": [
            "K.A. Tucker",
          ],
          "publisher": "Atria Books",
          "publishedDate": "2018-08-07",
          "description": "<b>City girl Calla Fletcher attempts to reconnect with her estranged father, and unwittingly finds herself torn between her desire to return to the bustle of Toronto and a budding relationship with a rugged Alaskan pilot in this masterful new romance from acclaimed author K.A. Tucker.</b><br><br>Calla Fletcher was two when her mother took her and fled the Alaskan wild, unable to handle the isolation of the extreme, rural lifestyle, leaving behind Calla’s father, Wren Fletcher, in the process. Calla never looked back, and at twenty-six, a busy life in Toronto is all she knows. But when her father reaches out to inform her that his days are numbered, Calla knows that it’s time to make the long trip back to the remote frontier town where she was born.<br> <br>She braves the roaming wildlife, the odd daylight hours, the exorbitant prices, and even the occasional—dear God—outhouse, all for the chance to connect with her father: a man who, despite his many faults, she can’t help but care for. While she struggles to adjust to this new subarctic environment, Jonah—the quiet, brooding, and proud Alaskan pilot who keeps her father’s charter plane company operational—can’t imagine calling anywhere else home. And he’s clearly waiting with one hand on the throttle to fly this city girl back to where she belongs, convinced that she’s too pampered to handle the wild.<br> <br>Jonah is probably right, but Calla is determined to prove him wrong. As time passes, she unexpectedly finds herself forming a bond with the burly pilot. As his undercurrent of disapproval dwindles, it’s replaced by friendship—or perhaps something deeper? But Calla is not in Alaska to stay and Jonah will never leave. It would be foolish of her to kindle a romance, to take the same path her parents tried—and failed at—years ago.<br> <br>It’s a simple truth that turns out to be not so simple after all.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "1501133438",
            },
            {
              "type": "ISBN_13",
              "identifier": "9781501133435",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 400,
          "printedPageCount": 400,
          "dimensions": {
            "height": "21.00 cm",
            "width": "13.50 cm",
            "thickness": "2.50 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Women",
            "Fiction / Romance / Contemporary",
            "Fiction / Family Life / General",
          ],
          "averageRating": 4.5,
          "ratingsCount": 5,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=ao_9yQEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE7117rR1H1pqJAKQIKhhSe3Hm1vfrD_rD4crFlMPIg0vBZERqqBCEWNo76zyFbwVzgHXv1AF55Rgf8axyg5JgAYmD6PfnQlZcZfvxsu045MKr_XWFEcCH53AgY8efCCrJWtNnDKB&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=ao_9yQEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE7066fbXTLqasFSXmDfP1deK4Mc7A50xECeQ9rKoGAto7dIDBmwFej6iNjCsKdtz3zvPCoJANY49bHDQHJk6Oqzq9or_QgdNj75HnuPYZnbGdb74BCpEsInV-ie3VjF-GvnnFqA5&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=ao_9yQEACAAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=ao_9yQEACAAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=ao_9yQEACAAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=ao_9yQEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      },
    ],

  },
  {
    user_id: 1,
    name: "To Be Read",
    books: [
      {
        "kind": "books#volume",
        "id": "IpLqDwAAQBAJ",
        "etag": "l9WEgqt+TA4",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/IpLqDwAAQBAJ",
        "volumeInfo": {
          "title": "Children of Dune",
          "authors": [
            "Frank Herbert",
          ],
          "publisher": "Penguin",
          "publishedDate": "2020",
          "description": "<b>Book Three in the Magnificent Dune Chronicles--the Bestselling Science Fiction Adventure of All Time<br></b><br> The Children of Dune are twin siblings Leto and Ghanima Atreides, whose father, the Emperor Paul Muad'Dib, disappeared in the desert wastelands of Arrakis nine years ago. Like their father, the twins possess supernormal abilities--making them valuable to their manipulative aunt Alia, who rules the Empire in the name of House Atreides.<br> <br> Facing treason and rebellion on two fronts, Alia's rule is not absolute. The displaced House Corrino is plotting to regain the throne while the fanatical Fremen are being provoked into open revolt by the enigmatic figure known only as The Preacher. Alia believes that by obtaining the secrets of the twins' prophetic visions, she can maintain control over her dynasty.<br> <br> But Leto and Ghanima have their own plans for their visions--and their destinies....",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0593201744",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780593201749",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 496,
          "printedPageCount": 498,
          "dimensions": {
            "height": "20.90 cm",
            "width": "14.00 cm",
            "thickness": "2.70 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Classics",
            "Fiction / Literary",
            "Fiction / Science Fiction / Space Opera",
          ],
          "averageRating": 3.5,
          "ratingsCount": 33,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.1.0.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=IpLqDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70-kFxgp3WOXpgj_FkV_a7S8a5H5B2lbbB7gWZk_5EuSAV3cnvrtmt47rltAvnBRDCZlCBdJQbnADpmEqRrX5PZ1BiR1ZYcldzpF4JrGJowVfBIbUTDYIXx4V7HH0ESx6kr5wJC&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=IpLqDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70ElzQOPtUbr1sJ85v5EJBN-1QuJKEhjBGDlYxJxqoAfJtO1loHGpqHnMAhLCh2QLjR_ACUPXFgo3LgjZWGmGic8PsQJRFiqsenI_mkuVh5_zGvkid3Vur1nac7xnjjQXgnVKvk&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=IpLqDwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70NMy0b6_pGBUOthT13rwfptOgKweEv8o6fUz1kHkGrBqvN4BvBeVX2TZWvzJEmjR7APwWC5ml56rx0mJHMinwaR0D_9tR-vCdPVquMVFHMoeFEffyx550Q5Gzv6x8UxNzb4TPA&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=IpLqDwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72xkJ5EFIYeEIU4jd4M9hP8cfkBfOoTcRCSEtFHn60mFnxJ2X_w5o8Abw1dWeJH3UEWuX6kirRgeCNgTVUGAnXiPTJwmDuiiXqh8lPOvLPgRxgDHiMAC7Kf4O_T4-rA0B19ViaW&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=IpLqDwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE73DiFs7p0-CYCHDBXBmA-KMjxuziYBvN-BnSoiMLKtYL9mYCp7iN7z99HsuoN7er_zC6-2tPqk2HIFof7sQR7bnE9-NCjbEUZI1pBvF84vCtFMTqlbIPHYyhMNiQsm7U3CLbNwI&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=IpLqDwAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=IpLqDwAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=IpLqDwAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=IpLqDwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      },
      {
        "kind": "books#volume",
        "id": "BpLqDwAAQBAJ",
        "etag": "YL/LjGS9fQs",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/BpLqDwAAQBAJ",
        "volumeInfo": {
          "title": "God Emperor of Dune",
          "authors": [
            "Frank Herbert",
          ],
          "publisher": "Penguin",
          "publishedDate": "2020-07-07",
          "description": "<b>Book Four in the Magnificent Dune Chronicles--the Bestselling Science Fiction Adventure of All Time<br> <br></b>Millennia have passed on Arrakis, and the once-desert planet is green with life. Leto Atreides, the son of the world's savior, the Emperor Paul Muad'Dib, is still alive but far from human. To preserve humanity's future, he sacrificed his own by merging with a sandworm, granting him near immortality as God Emperor of Dune for the past thirty-five hundred years.<br> <br> Leto's rule is not a benevolent one. His transformation has made not only his appearance but his morality inhuman. A rebellion, led by Siona, a member of the Atreides family, has risen to oppose the despot's rule. But Siona is unaware that Leto's vision of a Golden Path for humanity requires her to fulfill a destiny she never wanted--or could possibly conceive....",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0593201752",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780593201756",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 496,
          "printedPageCount": 498,
          "dimensions": {
            "height": "20.80 cm",
            "width": "14.00 cm",
            "thickness": "2.60 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Classics",
            "Fiction / Fantasy / Epic",
            "Fiction / Science Fiction / Space Opera",
          ],
          "averageRating": 3.5,
          "ratingsCount": 31,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.1.0.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=BpLqDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70gmy2PBgEHqF2woa3exzRXwyFbXmYvEB1PosX3nS7iE-x9qZ4tQyY9996VxGxma1mcSoB7LbLnlLuUSKgCmCCWj-9c0iK-Co0AwXkbjVVFBf3RWlvZpXxl5goYGJ989UJeuzV6&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=BpLqDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72KYzEOj3RTRzxUXiMq6yNj3iSknRhkBO0Gq2Jw5VAnavGZdidbXpq8mhqk2VO1iPp7Nqds7-N63GrUeYWN6yc35NqKtrrOJwcYtJ0Qa6eTSmoo7I1ZJe8sR_ZAjtzI8LEgwuEg&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=BpLqDwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73cX6kkivArndJlIIm3yhT4fninPs0FqZdcbvocHTSny0EkbyoVOzEOB1KrtgTBRfQqP8TO4jXsAR_cDwP3TI5eLisMaiVhHEvXC75j2pV3vwH-1AXztP6_J3AR0t0HfmKOO2Sb&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=BpLqDwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73-fL4p_s50p7ThDHed8iIpy038Tt3BwrzN5Gt53Vktv_ypNspnHFO5eJV-wqNIOb3QPzowybDUuFjZ91O9ai0FmSK828RtBRv4e749CAtAPkTrD1yV9VjETevVDfnsqU1r__XQ&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=BpLqDwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE70nHCVIdbJTApSO1gf6vZ5J3Zlk4zN_LYQIsX2u6QcfjsDCmEFoqx8gS_WPT8j6yu-V2aJ695JjJDKpMtwPtPG5cbF5PJJeCjNLAoUJpsAePYt262iTx0Gqx07ryBFZDC7wnrpy&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=BpLqDwAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=BpLqDwAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=BpLqDwAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=BpLqDwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      },
      {
        "kind": "books#volume",
        "id": "VetpDAAAQBAJ",
        "etag": "FGO9ua6XmtQ",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/VetpDAAAQBAJ",
        "volumeInfo": {
          "title": "Moby Dick",
          "authors": [
            "Herman Melville",
          ],
          "publisher": "Dreamland - Lebanon",
          "publishedDate": "2016-06-17",
          "description": "<p>Moby Dick is a novel by American author Herman Melville. It was first published in 1851. </p><p>It is considered one of the treasures of world literature. The story of the novel tells the adventures of the wandering sailor Ishmael and his voyage on the whaleship Pequod. </p><p>Pequod is commanded by Captain Ahab. Ishmael soon knows that Ahab seeks one specific whale, Moby Dick, a ferocious, enigmatic white whale. In a previous encounter, the whale destroyed Ahab’s boat and bit off his leg. Ahab intends to take revenge. </p><p> </p><p>This book, under the series <b>‘Young Reader Classic’</b>, tells the story of Ishmael and his voyage in an interesting way. The language used in the book is simple and lucid. The lively and attractive illustrations make the story even more interesting.</p>",
          "readingModes": {
            "text": false,
            "image": true,
          },
          "pageCount": 64,
          "printedPageCount": 65,
          "dimensions": {
            "height": "21.00 cm",
            "width": "15.40 cm",
            "thickness": "0.40 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Young Adult Fiction / Classics",
            "Young Adult Fiction / Action & Adventure / General",
          ],
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": true,
          "contentVersion": "preview-1.0.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72K6Qmm-CGWZM8vpq690Miu3J7lnVuiLOkKVp7pFDka2WKWCgjWVNENfxFaHJGoO4dSMEfuAPhWZtLbAhum1AOTa7Keej00hLVDmItK2fxQ3sGJYBdVLmaJHtkq8Dhj2Bcvpfi9&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70BF7L94xG-aCniyvo6Cyq7T_26aOXUcevs0KNDgAE2U9XYc-HrxDQvyttqluc0Cvj7TwUy43h_7C3ZFSWa5P5_MSRN24n5Ak76v8lvyd-0sakTGuHYzF8r3ry6K8sK8QSmx1lL&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72c3PQ9U40iRuwcTF2pIRZQ7E6Ch1ZPYi-kWJHI8BT728yNEoumISNUBt78FR67gfRKjOWW8AO4Kc22DX5kTZItplUC7_SeNfblUuUZaKxyhXxe44QY5hN3Lc6FiUSaSjJF-0ls&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72ZWY3kSdo_arZBGeEcL39_0JFVwrjIY36f8eJEggZebu0cJThipvYWODXE-bgNsoFtuHoeP7S9BY41WCv9hr62ya8hD3OEGXB1gIo6Neo-hv8VVGSAOGDZCE8ffcMrf51X-14w&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE71iwzzhiFotNfuJaIr3P0SGKNhKfjR_6REctkxmQjkkRnLPWkNjCOprnOsSZ6bt1dYCidmo3q_DnVY2kBgzUWjcXE-qr7f2sxwbRnEg3HsQYkSxPdPP26vJC5lnPAsnifr8rhj6&source=gbs_api",
            "extraLarge": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70J7xPznhmqMQgHBcVfU9QQlWkMEGLz7-BueuZVRuPij2DzkSWIq8nNvtdF5s7cR5IR9bjFeGbHFKtBdx24FJ-sfknT7PUtfulvI3-hxhvwd2Sth0Jook2HRA8TBVaLwZ7qZMfZ&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=VetpDAAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=VetpDAAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=VetpDAAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "FOR_SALE",
          "isEbook": true,
          "listPrice": {
            "amount": 5,
            "currencyCode": "USD",
          },
          "retailPrice": {
            "amount": 5,
            "currencyCode": "USD",
          },
          "buyLink": "https://play.google.com/store/books/details?id=VetpDAAAQBAJ&rdid=book-VetpDAAAQBAJ&rdot=1&source=gbs_api",
          "offers": [
            {
              "finskyOfferType": 1,
              "listPrice": {
                "amountInMicros": 5000000,
                "currencyCode": "USD",
              },
              "retailPrice": {
                "amountInMicros": 5000000,
                "currencyCode": "USD",
              },
              "giftable": true,
            },
          ],
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.com/books/download/Moby_Dick-sample-pdf.acsm?id=VetpDAAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
          },
          "webReaderLink": "http://play.google.com/books/reader?id=VetpDAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "PGR2AwAAQBAJ",
        "etag": "Uz/xGYIELQk",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/PGR2AwAAQBAJ",
        "volumeInfo": {
          "title": "To Kill a Mockingbird",
          "authors": [
            "Harper Lee",
          ],
          "publisher": "Harper Collins",
          "publishedDate": "2014-07-08",
          "description": "<p>Voted America's Best-Loved Novel in PBS's The Great American Read</p><p>Harper Lee's Pulitzer Prize-winning masterwork of honor and injustice in the deep South—and the heroism of one man in the face of blind and violent hatred</p><p>One of the most cherished stories of all time, To Kill a Mockingbird has been translated into more than forty languages, sold more than forty million copies worldwide, served as the basis for an enormously popular motion picture, and was voted one of the best novels of the twentieth century by librarians across the country. A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice, it views a world of great beauty and savage inequities through the eyes of a young girl, as her father—a crusading local lawyer—risks everything to defend a black man unjustly accused of a terrible crime.</p>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0062368680",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780062368683",
            },
          ],
          "readingModes": {
            "text": true,
            "image": false,
          },
          "pageCount": 336,
          "printedPageCount": 342,
          "dimensions": {
            "height": "21.00 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Classics",
            "Fiction / Coming of Age",
            "Fiction / Literary",
            "Fiction / World Literature / American / 20th Century",
            "Fiction / Media Tie-In",
            "Fiction / Southern",
          ],
          "averageRating": 4.5,
          "ratingsCount": 2164,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": true,
          "contentVersion": "1.26.24.0.preview.2",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72-wTDwioL-SEQSouQRneWbvJGR42YSWJtoqZFXsU4l12JD0QWVTHF3iz8r1AERsW8pPb4ZbDM_2Utx116oPy5pRRwL_voBCqYzA91599dcc3XYPAyTv2Ll6Gb1zGpSZTdO4LDG&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72Jck1qLWtQcf3KYS0J6e5odm60OITH9xYaMo94sBAHxYg7gxrGLffYFj9x1QxXgKEkF-zEFGdVIzcVz_wlvR9HrPlj82Fdb8lVPTJfCGcdB27kE0MITyuPGzn1pqJHobeVw4_f&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73e5vXaXreJwZtc3h0CefUbXpMItsXpicjPJCdqsMOftUNtyjE9hDkJKJAuOTAkUR-PebDG_tejuHMsYkSRU0SgARRtYwSIkG00defN6AkvhdEzKNE3IkO12eDHDNY_b5N1JUqj&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72oslq2HNcL1BHiequGy4LeOVWGHwC0lokmK4EOr--A83xDaX_Xgvp312mzxsOolqZVBW_V10G_GHy2V-0ct0rqxDhwUmxjB_ePFcb5UwkMnCoqRrrUvyyieY_9-nAu0JSb60J5&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE73PvJmCepLuEvBzBPq3yml8BlneD24FMz7AoZg0MkSyUKEedNmMVklJHMiqI_s0rMtVMsFZXWCMBsjfsWFV-ce3QAp-u32y9dld-SFFCTEJz0f1Lj5b6qMkT5uaNaS6ZJgibgPm&source=gbs_api",
            "extraLarge": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE734H0tDj6npeRoEe7seYV3DNs6Cxt9z2hqxT07hpCkK6Z78hHfaJomMU3-aBtbRuiHm5bqTFLF_nX4qKrrMZ27rnbBRxK9sFfsV_J6w0ekq8giQavO-um02qyv9JS-fAQFwVwkY&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=PGR2AwAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=PGR2AwAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=PGR2AwAAQBAJ",
        },
        "layerInfo": {
          "layers": [
            {
              "layerId": "geo",
              "volumeAnnotationsVersion": "36",
            },
          ],
        },
        "saleInfo": {
          "country": "US",
          "saleability": "FOR_SALE",
          "isEbook": true,
          "listPrice": {
            "amount": 12.99,
            "currencyCode": "USD",
          },
          "retailPrice": {
            "amount": 12.99,
            "currencyCode": "USD",
          },
          "buyLink": "https://play.google.com/store/books/details?id=PGR2AwAAQBAJ&rdid=book-PGR2AwAAQBAJ&rdot=1&source=gbs_api",
          "offers": [
            {
              "finskyOfferType": 1,
              "listPrice": {
                "amountInMicros": 12990000,
                "currencyCode": "USD",
              },
              "retailPrice": {
                "amountInMicros": 12990000,
                "currencyCode": "USD",
              },
              "giftable": true,
            },
          ],
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.com/books/download/To_Kill_a_Mockingbird-sample-epub.acsm?id=PGR2AwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=PGR2AwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "FmyBAwAAQBAJ",
        "etag": "yc8sFv9mt48",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/FmyBAwAAQBAJ",
        "volumeInfo": {
          "title": "Sapiens",
          "subtitle": "A Brief History of Humankind",
          "authors": [
            "Yuval Noah Harari",
          ],
          "publisher": "Harper Collins",
          "publishedDate": "2015-02-10",
          "description": "<p>New York Times Bestseller</p><p>A Summer Reading Pick for President Barack Obama, Bill Gates, and Mark Zuckerberg </p><p>From a renowned historian comes a groundbreaking narrative of humanity’s creation and evolution—a #1 international bestseller—that explores the ways in which biology and history have defined us and enhanced our understanding of what it means to be “human.”</p><p>One hundred thousand years ago, at least six different species of humans inhabited Earth. Yet today there is only one—homo sapiens. What happened to the others? And what may happen to us?</p><p>Most books about the history of humanity pursue either a historical or a biological approach, but Dr. Yuval Noah Harari breaks the mold with this highly original book that begins about 70,000 years ago with the appearance of modern cognition. From examining the role evolving humans have played in the global ecosystem to charting the rise of empires, Sapiens integrates history and science to reconsider accepted narratives, connect past developments with contemporary concerns, and examine specific events within the context of larger ideas.</p><p>Dr. Harari also compels us to look ahead, because over the last few decades humans have begun to bend laws of natural selection that have governed life for the past four billion years. We are acquiring the ability to design not only the world around us, but also ourselves. Where is this leading us, and what do we want to become?</p><p>Featuring 27 photographs, 6 maps, and 25 illustrations/diagrams, this provocative and insightful work is sure to spark debate and is essential reading for aficionados of Jared Diamond, James Gleick, Matt Ridley, Robert Wright, and Sharon Moalem.</p>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0062316109",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780062316103",
            },
          ],
          "readingModes": {
            "text": true,
            "image": false,
          },
          "pageCount": 464,
          "printedPageCount": 581,
          "dimensions": {
            "height": "24.00 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Science / Life Sciences / Evolution",
            "History / Civilization",
            "History / World",
          ],
          "averageRating": 4,
          "ratingsCount": 117,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": true,
          "contentVersion": "1.27.20.0.preview.2",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70MBAw5PZujZWDiLtYqNLZCGPDjmEprwHT9GfVS7osfAIl1CbgC2JC36mFBhj7CKL_tvPG2ZbtjO-2iDgpbfxNcFDsRp1o1rreTUUZD8_Xs-oBXap6vSYjthPthmT6eJgtYVCa6&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70Dysrx3IhguUvZ_OYSGjgPyINDN_lPf6F4rzZ-zCubwTfV-t0t_jbBWv_Pv4jujBI5uEGjWNd-MiUtmyso1J3Ofna-0LlKQYncGEjCYF-HLQG4odkju8ATyYS0WWJhyylvdTND&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73Qm9hToK4O1GrS5mrLZlcDbOPQPR5ju38CIWtGLqp3uxL3ODI_PnjV8--VzadJ4acTJoxEzCEWcY4GfZ99t3Lk6nZWgkVYLp1aXmzJLbeQqym_u7SEjhuKpYMlprxSIOiGaWoI&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE704VKkr44BYtS1zNf9AfbKHFNxvwlHxC-t1sveZFC_k1VhdTHAoFYOHtD7gl62SsHcOrF8_1HEur7AoaXs2FX1r3eoracsNH46JlNqqVg7XCdhAP2oO8L5cvhpU5Zd1ntdzZZeK&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE70D--SdnhYWKd_lLEhsacIlTYOJs8tl3C1Zp5ciWmVP_Rc3U4qeLGFKHZuxQs8hHWAm5dt95N_1K8XA1o_z4f6R1eTSazrhoE4cuq5kGGeM_kWCDiM_p8HK7Km0oAKyodPRW8s3&source=gbs_api",
            "extraLarge": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70Rhl_euAQBbwC4ZYH7DKpgNusxKQXQI4Q-8ZWfb6tUYmCw_17Yv9RckfOixNm20BlEfMpxgAVtFh-JCUM5xOzH87XiCnPP7SZRHnJw-_s_u7a52esPkQOXwYjkcXePTABeKuUc&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=FmyBAwAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=FmyBAwAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=FmyBAwAAQBAJ",
        },
        "layerInfo": {
          "layers": [
            {
              "layerId": "geo",
              "volumeAnnotationsVersion": "29",
            },
          ],
        },
        "saleInfo": {
          "country": "US",
          "saleability": "FOR_SALE",
          "isEbook": true,
          "listPrice": {
            "amount": 14.99,
            "currencyCode": "USD",
          },
          "retailPrice": {
            "amount": 14.99,
            "currencyCode": "USD",
          },
          "buyLink": "https://play.google.com/store/books/details?id=FmyBAwAAQBAJ&rdid=book-FmyBAwAAQBAJ&rdot=1&source=gbs_api",
          "offers": [
            {
              "finskyOfferType": 1,
              "listPrice": {
                "amountInMicros": 14990000,
                "currencyCode": "USD",
              },
              "retailPrice": {
                "amountInMicros": 14990000,
                "currencyCode": "USD",
              },
              "giftable": true,
            },
          ],
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.com/books/download/Sapiens-sample-epub.acsm?id=FmyBAwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=FmyBAwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "YDzTCwAAQBAJ",
        "etag": "pDIqkX1ynFc",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/YDzTCwAAQBAJ",
        "volumeInfo": {
          "title": "A Game of Thrones",
          "authors": [
            "George R. R. Martin",
          ],
          "publisher": "Bantam Books",
          "publishedDate": "2011",
          "description": "<b>A NEW ORIGINAL SERIES, NOW ON HBO.<br></b><br>Here is the first volume in George R. R. Martin's magnificent cycle of novels that includes <i>A Clash of Kings</i> and <i>A Storm of Swords</i>. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin's stunning series is destined to stand as one of the great achievements of imaginative fiction.<br><br><b>A GAME OF THRONES<br><br></b>Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom's protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.<br><br>Here an enigmatic band of warriors bear swords of no human metal; a tribe of fierce wildlings carry men off into madness; a cruel young dragon prince barters his sister to win back his throne; and a determined woman undertakes the most treacherous of journeys. Amid plots and counterplots, tragedy and betrayal, victory and terror, the fate of the Starks, their allies, and their enemies hangs perilously in the balance, as each endeavors to win that deadliest of conflicts: the game of thrones.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0553593714",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780553593716",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 835,
          "printedPageCount": 866,
          "dimensions": {
            "height": "18.00 cm",
            "width": "10.70 cm",
            "thickness": "3.50 cm",
          },
          "printType": "BOOK",
          "categories": [
            "FICTION / Action & Adventure",
            "Fiction / Fantasy / Epic",
            "FICTION / Media Tie-In",
          ],
          "averageRating": 4,
          "ratingsCount": 2620,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.5.0.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=YDzTCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73LMTgXCVOLSYwd4GkP0ENmpvny2gZpTe8lMyoQfsZ5sJMutTPDZRS-aOOct-hO-jzkljXsiVfRARzQGXNlFw12NiYhv6HY3zd8nwd3zsUgSc4yKQWa9nhH9zUmdOHBTe7XfLu2&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=YDzTCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71v6sE5xN-er6ed7HtHcrFuRMN2A7QUs-thSVSFLegcdfTfgTQpQLzQ2Cd-4A6kOgAyOOssEo9qLavS89x27xBWb-FrBjP8bMgUWZhna1v-77LphdGaSvQLSG1w4KxJgy7htQol&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=YDzTCwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71w5W7GUd_ljoFG2CizLtuZq4tksdg22MQZRQZltK_wfneMdKywRT2-iXn2woBSnApAohetff4_rSgvtKPaU_WB6URCCBtfT3Gjmy_fL6k7ZmMZvbr-wKlKSuwsKI8SiWYDhjw0&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=YDzTCwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70pdMWBVa630nWYt7xoApp8jVQJByTudQRSrpPFm5GXy3e4jJlmo3Y6UyMIbbEGIPB-3sGcIdqRLUled8wgg1_9Y0SEQYwXe-Fin1StR1RyJO33gSiY9q5U3eHYTWTB-0Y0eG2f&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=YDzTCwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE73O6KJ-jvUxxqr9_aUxK062aICmsASeID069MYTimJUTyHQB6sTMi9NfwEm0n0Ze7F9DlkgKeyaWhkODNR9Nmr1cr2vU7iIftuiCy1l-gcuXmoN7C1nSsWK-l7GSPOp-gtixb4b&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=YDzTCwAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=YDzTCwAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=YDzTCwAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=YDzTCwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, 
      {
        "kind": "books#volume",
        "id": "byPJwAEACAAJ",
        "etag": "+lZQIhVLAP4",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/byPJwAEACAAJ",
        "volumeInfo": {
          "title": "O Cortico",
          "authors": [
            "Aluísio Azevedo",
          ],
          "publisher": "Martins",
          "publishedDate": "1970",
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 254,
          "printedPageCount": 254,
          "printType": "BOOK",
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=byPJwAEACAAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=byPJwAEACAAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=byPJwAEACAAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=byPJwAEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      },
      {
        "kind": "books#volume",
        "id": "GZAoAQAAIAAJ",
        "etag": "4yN6BIv/fCw",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/GZAoAQAAIAAJ",
        "volumeInfo": {
          "title": "Harry Potter and the Deathly Hallows",
          "authors": [
            "J. K. Rowling",
          ],
          "publisher": "Arthur A. Levine Books",
          "publishedDate": "2007",
          "description": "'His hand closed automatically around the fake Horcrux, but in spite of everything, in spite of the dark and twisting path he saw stretching ahead for himself, in spite of the final meeting with Voldemort he knew must come, whether in a month, in a year, or in ten, he felt his heart lift at the thought that there was still one last golden day of peace left to enjoy with Ron and Hermione.' With these words \"Harry Potter and the Half-Blood Prince\" draws to a close. And here, in this seventh and final book, Harry discovers what fate truly has in store for him as he inexorably makes his way to that final meeting with Voldemort. In this thrilling climax to the phenomenally bestselling series, J.K. Rowling will reveal all to her eagerly waiting readers.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0545010225",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780545010221",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 759,
          "printedPageCount": 792,
          "dimensions": {
            "height": "24.00 cm",
            "width": "15.20 cm",
            "thickness": "5.10 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Juvenile Fiction / Fantasy & Magic",
          ],
          "averageRating": 4.5,
          "ratingsCount": 3526,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "4.2.2.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE730b1DbBKD93vwFev3YclxjQMsqgitoTZdsLX0fk7E9BherqwUQ8kdXnu-iEa3m0Gdon2w3hPzKHeSdfGO4IyTSUG7IyKkJ11Ow6yinevt3b5kEWOAqlW9n5FpIERwFB2j4wU3M&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70tN-61LM8CJfAYoO-nmrotJlFpQ6t3qeBFQ5SEqfjIcYAhD7KMlfOmI4h1atnv23mn3cnHyrZ-6CwRwYZNT8HGt3s1JQmvY_z7NZ-gjKJywLyHRsizcsXIYwjsUDw-G5cgktmg&source=gbs_api",
            "small": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=2&imgtk=AFLRE70OIGUg_ebBTUaJi-Xf773_uRMhY5UCwkTzSlvMsBEu7QMbyelT3pPtwPMobi656DrPYgI1UKrUHX28Yey4VgEDW9E5J9SGUrnT-uFLb4o5hHI-c3-feZK76FVPnu-hbRJc5tsu&source=gbs_api",
            "medium": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=3&imgtk=AFLRE72ot9NqwQ0Pt58Kv4UseRGMsH-koDXZDZ61qOKqCQaWTakHXwfbQv1aJQvSfrML2xJDkT-DwZvITXzLJPE_gCAiD_L8sHhif5JCb70xVJuiRin02_RuXA6i2Bn__gAd-8xyEmk1&source=gbs_api",
            "large": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=4&imgtk=AFLRE71ox9HAeP17qkAe_YHynkWfPuE8ogCm2P_iIMK-Gnt6pdnklkrFV_aAy6IOCZn7WyjdEvtUcXDKKGwULx9j9mvXmJYZw-cOwzMr5CRlGXYCAOZCf7NHvqD-USMa0zDAe0NYRgOh&source=gbs_api",
            "extraLarge": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=6&imgtk=AFLRE731TsPGZ1ml7uMpukHj3EIlSXafv6D8X0NQHxrS31beR_Jjj8WjLSMNb4nLhYuMk_IC3XemjAwSseXpnpRbPam3W8idqwSEcayrgQkZd02MFxT76xee2VX4u11LuEfPv_PSksre&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=GZAoAQAAIAAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=GZAoAQAAIAAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=GZAoAQAAIAAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=GZAoAQAAIAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      }, 

    ],
  },
  {
    user_id: 1,
    name: "Did Not Finish",
    books: [],
  },
])

Bookclub.create!([
  {
    name: "Cozy Mysteries",
    host: {
      username: "demouser",
      first_name: "Demo",
      last_name: "User",
    },
    description: "For those who love a good cozy mystery while curled up on the couch with a cup of coffee/tea.
    ",
    books: [{
      "kind": "books#volume",
      "id": "ok3PAgAAQBAJ",
      "etag": "d6YmojusSU8",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/ok3PAgAAQBAJ",
      "volumeInfo": {
        "title": "Murder at the Breakers",
        "authors": [
          "Alyssa Maxwell",
        ],
        "publisher": "Kensington Books",
        "publishedDate": "2014-03-25",
        "description": "In the first in a new evocative historical mystery series, debut author Alyssa Maxwell captures the glittering world of Newport, Rhode Island in its heyday.",
        "industryIdentifiers": [
          {
            "type": "ISBN_10",
            "identifier": "0758290829",
          },
          {
            "type": "ISBN_13",
            "identifier": "9780758290823",
          },
        ],
        "readingModes": {
          "text": false,
          "image": true,
        },
        "pageCount": 304,
        "printedPageCount": 304,
        "dimensions": {
          "height": "21.00 cm",
          "width": "14.10 cm",
          "thickness": "2.10 cm",
        },
        "printType": "BOOK",
        "categories": [
          "Fiction / Mystery & Detective / Historical",
        ],
        "averageRating": 3.5,
        "ratingsCount": 8,
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "0.2.0.0.preview.1",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false,
        },
        "imageLinks": {
          "smallThumbnail": "http://books.google.com/books/publisher/content?id=ok3PAgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73aJapurFIFMYy0nwT9SKul6Ymem79rQgFabRu0GCGiFZW2SV67wauxJNzzMKJZl4DSIlFLdsDd5QLisDkxTAKpqremYBpAq1ooFWWZaylzy1R1ACcL2aKQ1h9wMUsI-lGGUy2n&source=gbs_api",
          "thumbnail": "http://books.google.com/books/publisher/content?id=ok3PAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE721UW7nwbgbyf-iWbY9odrv3fD2-vSQEm_tCoSw9woceWOZ3NRtuWEFUz6QSoN0U706r41_xd0po979h1Nby5yemYUX5FPDBnYcPT_jr9nSuzW-DLsk5xWDLECZgJeLgaVczLxV&source=gbs_api",
          "small": "http://books.google.com/books/publisher/content?id=ok3PAgAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71pIe7lPBW-G6QRfMqiGS8qSPJ8wJHrPSqOyItVAIEa1rLZiedCqQ-SYwmAYG5hkMxp4LDfCtbBobxozEkEUs3NqAX28bxCumZTDXjsS6lKdpZc6AxA12xfSlQqWuODHqkmR0Nc&source=gbs_api",
          "medium": "http://books.google.com/books/publisher/content?id=ok3PAgAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE733sfR5Tn_as4tDlDeUwSIHVXgA9XmDfRpHQTvMUdFsihg48Df-7YU7DvLqTWjBXLfB_ifKc7_rBC2nb8tO2hCD3euE7CHouDYKhEhUApyq2DtZ6O7EyB5DHGTpTedHdrPyeS42&source=gbs_api",
          "large": "http://books.google.com/books/publisher/content?id=ok3PAgAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE72QUn4wBkmC-WZnQJBga3RpdtNDSDG_5cptW0OG55SjG6THlpyZO8-FWp4H2fb1-hSgkxyqU_Bmlxok9CcfqAgyo7J4LiDZrK1EM3qAaEkfhmVRFN0kas_xcTmFNSGcHGetfK1Y&source=gbs_api",
          "extraLarge": "http://books.google.com/books/publisher/content?id=ok3PAgAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE72vpbarE-OlnMR8o1LQ8yTd6f8E2XimQlo-8A-jAXQi9kGP6zJ9jyAhlK4ns6pQs_VJQ350I85zcBdOvJ9sqsE3xqASPkEFIipdj90k6Qt8HLgPpW12mCHCMLrhOiEzN156AsVv&source=gbs_api",
        },
        "language": "en",
        "previewLink": "http://books.google.com/books?id=ok3PAgAAQBAJ&hl=&source=gbs_api",
        "infoLink": "https://play.google.com/store/books/details?id=ok3PAgAAQBAJ&source=gbs_api",
        "canonicalVolumeLink": "https://play.google.com/store/books/details?id=ok3PAgAAQBAJ",
      },
      "saleInfo": {
        "country": "US",
        "saleability": "NOT_FOR_SALE",
        "isEbook": false,
      },
      "accessInfo": {
        "country": "US",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": false,
        },
        "pdf": {
          "isAvailable": false,
        },
        "webReaderLink": "http://play.google.com/books/reader?id=ok3PAgAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false,
      },
    }, {
      "kind": "books#volume",
      "id": "DFGWDgAAQBAJ",
      "etag": "vY4iOZNFwh8",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/DFGWDgAAQBAJ",
      "volumeInfo": {
        "title": "Death Overdue",
        "subtitle": "A Haunted Library Mystery",
        "authors": [
          "Allison Brook",
        ],
        "publisher": "Crooked Lane Books",
        "publishedDate": "2017-10-10",
        "description": "<b>For fans of Miranda James and Jenn McKinlay comes an enthralling series debut featuring a librarian who solves mysteries with the help of a ghost in the stacks</b><br><br>Carrie Singleton is just about done with Clover Ridge, Connecticut until she's offered a job as the head of programs and events at the spooky local library, complete with its own librarian ghost. Her first major event is a program presented by a retired homicide detective, Al Buckley, who claims he knows who murdered Laura Foster, a much-loved part-time library aide who was bludgeoned to death fifteen years earlier. As he invites members of the audience to share stories about Laura, he suddenly keels over and dies.<br><br>The medical examiner reveals that poison is what did him in and Carrie feels responsible for having surged forward with the program despite pushback from her director. Driven by guilt, Carrie’s determined to discover who murdered the detective, convinced it’s the same man who killed Laura all those years ago. Luckily for Carrie, she has a friendly, knowledgeable ghost by her side. But as she questions the shadows surrounding Laura's case, disturbing secrets come to light and with each step Carrie takes, she gets closer to ending up like Al.<br><br>Now it's due or die for Carrie in <i>Death Overdue</i> the delightful first in a new cozy series by Allison Brook.",
        "industryIdentifiers": [
          {
            "type": "ISBN_10",
            "identifier": "1683313879",
          },
          {
            "type": "ISBN_13",
            "identifier": "9781683313878",
          },
        ],
        "readingModes": {
          "text": true,
          "image": true,
        },
        "pageCount": 336,
        "printedPageCount": 314,
        "printType": "BOOK",
        "categories": [
          "Fiction / Mystery & Detective / Cozy / Paranormal",
          "Fiction / Mystery & Detective / Women Sleuths",
          "Fiction / Mystery & Detective / Amateur Sleuth",
        ],
        "averageRating": 3.5,
        "ratingsCount": 13,
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": true,
        "contentVersion": "0.7.7.0.preview.3",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false,
        },
        "imageLinks": {
          "smallThumbnail": "http://books.google.com/books/publisher/content?id=DFGWDgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70sJ5OV3JmebgFJnoz9Mt2Ofco7rRZgTu0zuVGpwzX2Nu4yUa-k2uYigspXD7hS6JMuEVHmaB9LwGg2qestCFOmey-wW6HNIb-dyHPPVgPZVoaQsp79PE5v1jfvJRx91bfdIu9D&source=gbs_api",
          "thumbnail": "http://books.google.com/books/publisher/content?id=DFGWDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73jALB22s1UnY_sGGAhUTfadj1BhcJxtiuthzVbkP0AGdC3PGlMU5k24voldhxa7OoQQ4CGJV-tZfHFGjlTI2-f78MYXxdQcnakYbQN4O38WjG_VBmKvkPeXTnMpv-GzrmzKR8_&source=gbs_api",
          "small": "http://books.google.com/books/publisher/content?id=DFGWDgAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71VOOMLoE4hYpWTXBm-zop9i8fZIrKu94c-_Y-jB4pyQKqwoQdjKfGm4MOfuaYQGuM1AW7WDmayG4A06ly9Y2m5jmIlbMPLFxYCtBf4ipOAgLnMgXKHrdoW97P61U_iO2IBexGA&source=gbs_api",
          "medium": "http://books.google.com/books/publisher/content?id=DFGWDgAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE7388czsKiztyCTXK_Aq1qd09jAxvNhfN5qZJMMLHj7ZmfLDCvEzJjEulkmlB7s5EkiTmLQdys7-hUzciuor0JDLTRdML_aokyzsr1FHnCACmA7YLvmgZYyvA9N5InSvFh21JNlQ&source=gbs_api",
          "large": "http://books.google.com/books/publisher/content?id=DFGWDgAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE71djT_lpzYbbHk1RORO_aWQ6bggwmKZKyyp3ZBov4IfuozwLu325M_BymtnjUjCb2sQ9xtghjHstFe8n6gB6bUOGfsEqMnArSQ58qcPhHttOj3JqxgeNtR7SB1zJqFpGh6PK8mL&source=gbs_api",
          "extraLarge": "http://books.google.com/books/publisher/content?id=DFGWDgAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE72c56tFPxiCZTACr9rR9pEEjoltmYTRlFtU7Ccqq6XPnOSIF0xBxXbxxG0BRp4MvP6kwN4yAZ7fHCpXI70x19V1k89VhuAfMGgjNFKjpyd9mcfrXmzS9pPlhGj-oeunu0p29v1s&source=gbs_api",
        },
        "language": "en",
        "previewLink": "http://books.google.com/books?id=DFGWDgAAQBAJ&hl=&source=gbs_api",
        "infoLink": "https://play.google.com/store/books/details?id=DFGWDgAAQBAJ&source=gbs_api",
        "canonicalVolumeLink": "https://play.google.com/store/books/details?id=DFGWDgAAQBAJ",
      },
      "layerInfo": {
        "layers": [
          {
            "layerId": "geo",
            "volumeAnnotationsVersion": "10",
          },
        ],
      },
      "saleInfo": {
        "country": "US",
        "saleability": "FOR_SALE",
        "isEbook": true,
        "listPrice": {
          "amount": 12.99,
          "currencyCode": "USD",
        },
        "retailPrice": {
          "amount": 12.99,
          "currencyCode": "USD",
        },
        "buyLink": "https://play.google.com/store/books/details?id=DFGWDgAAQBAJ&rdid=book-DFGWDgAAQBAJ&rdot=1&source=gbs_api",
        "offers": [
          {
            "finskyOfferType": 1,
            "listPrice": {
              "amountInMicros": 12990000,
              "currencyCode": "USD",
            },
            "retailPrice": {
              "amountInMicros": 12990000,
              "currencyCode": "USD",
            },
            "giftable": true,
          },
        ],
      },
      "accessInfo": {
        "country": "US",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": true,
          "acsTokenLink": "http://books.google.com/books/download/Death_Overdue-sample-epub.acsm?id=DFGWDgAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
        },
        "pdf": {
          "isAvailable": true,
          "acsTokenLink": "http://books.google.com/books/download/Death_Overdue-sample-pdf.acsm?id=DFGWDgAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
        },
        "webReaderLink": "http://play.google.com/books/reader?id=DFGWDgAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false,
      },
    }, {
      "kind": "books#volume",
      "id": "_c2Mm44H3LcC",
      "etag": "lPZU8KimWwQ",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/_c2Mm44H3LcC",
      "volumeInfo": {
        "title": "The Body in the Transept",
        "authors": [
          "Jeanne M. Dams",
        ],
        "publisher": "Harper Collins",
        "publishedDate": "1996-09-12",
        "description": "The fourth entry in Jeanne M. Dams's delightfully charming, award-winning mystery series starring Dorothy Martin. This time, Dorothy dons one of her most outlandish hats and sets out for the Doll House Museum at the imposing Brocklesby Hall to help a friend clear her son of theft charges. But two murders put more than a miniature Sevres tea set at stake and Dorothy finds herself maneuvering a complicated plot that is trickier and more dangerous than any of England's daunting roundabouts.",
        "industryIdentifiers": [
          {
            "type": "ISBN_10",
            "identifier": "0061011339",
          },
          {
            "type": "ISBN_13",
            "identifier": "9780061011337",
          },
        ],
        "readingModes": {
          "text": false,
          "image": false,
        },
        "pageCount": 210,
        "printedPageCount": 228,
        "dimensions": {
          "height": "17.10 cm",
          "width": "10.60 cm",
          "thickness": "1.40 cm",
        },
        "printType": "BOOK",
        "categories": [
          "Fiction / Mystery & Detective / General",
          "Fiction / Mystery & Detective / Women Sleuths",
        ],
        "averageRating": 2.5,
        "ratingsCount": 5,
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "0.1.0.0.preview.0",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false,
        },
        "imageLinks": {
          "smallThumbnail": "http://books.google.com/books/content?id=_c2Mm44H3LcC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE71kTs5tkxssKEv4JOg4XRKEwprPqDzAQS90eeaxwv24c9zBBN6vfJHvpQZO6ZEqFseWBGjFjbRg8zD7z9_FFggcpXOiflBOaVHy4AHDtHwkbUxcVSrULHn81p_0w5vkH_gHiXyr&source=gbs_api",
          "thumbnail": "http://books.google.com/books/content?id=_c2Mm44H3LcC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72-AAbRAy1nkZJUgNyIAutFHLxhRJMZGq1cNxCBZ0BaK09jAyG1iM9f3spHynU3smYAQ-zmtw7BIw3TUjfE1dD8O6-75bZbLdo03jufq7KysWX5wcY462y3MjrQXhIz383yD-Ro&source=gbs_api",
          "small": "http://books.google.com/books/content?id=_c2Mm44H3LcC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71_29UA0L6Fp6H7xb3hmgdstwfug_HV8R8GgYSQr_ns4cX8pb7PyIItW0SEhwrBEazt6iGzlGOhwpwxBdU8nSeeQLZOjLBshkgBcwqIjRjauUBTJK43SLy87wCB8AmdswdAfAYg&source=gbs_api",
          "medium": "http://books.google.com/books/content?id=_c2Mm44H3LcC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE7332Acg81bBkggBuounqE6IXxdqWYV33AGA4bMKrb6X4Irx6bbVrDPPww05m2Ikj-2IW8cZDD8mgfZzKBYgP8PiZhbj-bzFOVDXFUpEIZefESoZWevLyg5c11GfsPQVSopApdVV&source=gbs_api",
        },
        "language": "en",
        "previewLink": "http://books.google.com/books?id=_c2Mm44H3LcC&hl=&source=gbs_api",
        "infoLink": "https://play.google.com/store/books/details?id=_c2Mm44H3LcC&source=gbs_api",
        "canonicalVolumeLink": "https://play.google.com/store/books/details?id=_c2Mm44H3LcC",
      },
      "saleInfo": {
        "country": "US",
        "saleability": "NOT_FOR_SALE",
        "isEbook": false,
      },
      "accessInfo": {
        "country": "US",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": false,
        },
        "pdf": {
          "isAvailable": false,
        },
        "webReaderLink": "http://play.google.com/books/reader?id=_c2Mm44H3LcC&hl=&printsec=frontcover&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false,
      },
    }],
  }, {
    name: "The Next Best Book Club",
    host: {
      username: User.all[rand(25) + 1].username,
      first_name: User.all[rand(25) + 1].first_name,
      last_name: User.all[rand(25) + 1].last_name,
    },
    description: "A book club for everything you may or may not read!",
    books: [
      {
        "kind": "books#volume",
        "id": "XfFvDwAAQBAJ",
        "etag": "Ko/d1Nyd6Jg",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/XfFvDwAAQBAJ",
        "volumeInfo": {
          "title": "Atomic Habits",
          "subtitle": "An Easy & Proven Way to Build Good Habits & Break Bad Ones",
          "authors": [
            "James Clear",
          ],
          "publisher": "Penguin",
          "publishedDate": "2018-10-16",
          "description": "<b>The #1<i> New York Times</i> bestseller</b>. <b>Over 4 million copies sold!</b><br><br><b><i>Tiny Changes, Remarkable Results</i></b><br><br>No matter your goals, <i>Atomic Habits</i> offers a proven framework for improving--every day. James Clear, one of the world's leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, break bad ones, and master the tiny behaviors that lead to remarkable results.<br><br>If you're having trouble changing your habits, the problem isn't you. The problem is your system. Bad habits repeat themselves again and again not because you don't want to change, but because you have the wrong system for change. You do not rise to the level of your goals. You fall to the level of your systems. Here, you'll get a proven system that can take you to new heights.<br><br>Clear is known for his ability to distill complex topics into simple behaviors that can be easily applied to daily life and work. Here, he draws on the most proven ideas from biology, psychology, and neuroscience to create an easy-to-understand guide for making good habits inevitable and bad habits impossible. Along the way, readers will be inspired and entertained with true stories from Olympic gold medalists, award-winning artists, business leaders, life-saving physicians, and star comedians who have used the science of small habits to master their craft and vault to the top of their field.<br><br>Learn how to:<br><li>make time for new habits (even when life gets crazy);</li><li>overcome a lack of motivation and willpower;</li><li>design your environment to make success easier;</li><li>get back on track when you fall off course;</li>...and much more.<br><br><i>Atomic Habits</i> will reshape the way you think about progress and success, and give you the tools and strategies you need to transform your habits--whether you are a team looking to win a championship, an organization hoping to redefine an industry, or simply an individual who wishes to quit smoking, lose weight, reduce stress, or achieve any other goal.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0735211299",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780735211292",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 320,
          "printedPageCount": 322,
          "dimensions": {
            "height": "24.00 cm",
            "width": "15.90 cm",
            "thickness": "3.10 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Business & Economics / Organizational Behavior",
            "Psychology / Social Psychology",
            "Self-Help / Personal Growth / General",
          ],
          "averageRating": 4,
          "ratingsCount": 31,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.10.0.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=XfFvDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73e4M8KGJ8J8bVNBepsDvBdhFdraJheSL7-qYdOy1wCVdV6Mbw7yd0fbPBYIQw4oTXC_AYToyJ1-z8C6dWRmFJpkhnTBz1afm09Gxv_AWndvNoQkDq79vNexYnQygxzdfwkLHgm&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=XfFvDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72TV-dn9TVnChlP--XZmVAgfG0tQdYr47lLrm5GocHJMJkSJLiFajGD0nrHW2zhmY2VcEzHHQEHy04E1h8Su9VTk4UwuHi2CgyPve4UlUSMwN5gbywgGgP1nhqSTEIUGlCXRA_M&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=XfFvDwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70nD19m0YwGD8faWg3eKAd-dfrsBjTiitzQz1IokNOZ_z4nyRfZYGwf_0WKAVAbYVCXv0INgPZUUtf0k7ZXIKTva-gtHxluupeDQZDmDPvijz111jrzThxlOPUPpDc5UPu6ZOT3&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=XfFvDwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73erWP5OFgJxSeim6FoSduX68RRniMPdXkgFjZmLsHZvw_mUY7cJI_uHS2IckREhd5yEYU9m4uT-_anstzDSsze33ubuBrtACaKwt_4xrOKmepxtaSbDsXae81tbonN8j2BDDXp&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=XfFvDwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE70dYiTnGRJKKrk00P4otKEosmsvH0ymyRx9ZGf6M-hib3RJm4I99ZOY0Mmng9mhHDAWRnj-fUB51eXQzZQJwGUFQecYpnvmvhvBnNbyMMXWSafSA1nt637-vu4EzQ8M7dHkLSoM&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=XfFvDwAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=XfFvDwAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=XfFvDwAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=XfFvDwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "RLmxDwAAQBAJ",
        "etag": "IWsXzab9flE",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/RLmxDwAAQBAJ",
        "volumeInfo": {
          "title": "Where the Crawdads Sing Deluxe Edition",
          "authors": [
            "Delia Owens",
          ],
          "publisher": "Penguin",
          "publishedDate": "2019-10-22",
          "description": "<b>A beautiful, deluxe edition of the #1 <i>New York Times </i>bestseller—with over 15 million copies sold—that will make the perfect holiday gift or treat for yourself. <br><br>A Reese Witherspoon x Hello Sunshine Book Club Pick<br><b>A <i>Business Insider </i>Defining Book of the Decade</b><br><br>“I can't even express how much I love this book! I didn't want this story to end!”—Reese Witherspoon</b><br><br>At once an exquisite ode to the natural world, a heartbreaking coming-of-age story, and a surprising tale of possible murder, <i>Where the Crawdads Sing</i> has touched the hearts of millions of readers around the world, and this beautiful deluxe edition features:<br><br>  <b>•</b>  new, personal note from the author<br>  <b>•</b>  updated linen jacket with foil<br>  <b>•</b>  foil-stamped case with cloth spine<br>  <b>•</b>  four-color endpapers<br>  <b>•</b>  premium interior stock<br>  <b>•</b>  four-color map and newly colored interior illustrations<br><br>For years, rumors of the “Marsh Girl” have haunted Barkley Cove, a quiet town on the North Carolina coast. So in late 1969, when handsome Chase Andrews is found dead, the locals immediately suspect Kya Clark, the so-called Marsh Girl. But Kya is not what they say. Sensitive and intelligent, she has survived for years alone in the marsh that she calls home, finding friends in the gulls and lessons in the sand. Then the time comes when she yearns to be touched and loved. When two young men from town become intrigued by her wild beauty, Kya opens herself to a new life—until the unthinkable happens. Through Kya's story, Owens reminds us that we are forever shaped by the children we once were, and that we are all subject to the beautiful and violent secrets that nature keeps.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0593187989",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780593187982",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 384,
          "printedPageCount": 386,
          "dimensions": {
            "height": "23.60 cm",
            "width": "16.10 cm",
            "thickness": "3.30 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Literary",
            "Fiction / Coming of Age",
            "Fiction / Women",
          ],
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.1.0.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=RLmxDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70HBVqnfPszaq5auZ6AfMgNRnQq9i7VN_Cv5YroTdocbfd5-JbeMrkuBzN2yLpIU-I4Gp6-hqzJ7X0kjO2wRdPdpHzJaKze2GatIJZ4FwLwgkbaaIa7FuOxeG_gqu2f3sUVigpF&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=RLmxDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73maznDAc86sm_kwtAggUi2_XpOHg3DJAGp_v7x_YwWgJFhsDG0BLDt_BABCn65k3vW4PdkY_8lJng9Ih3r3Rpj_-P9FvTzNNQxoEnKjBR55GbcVodU8Vq47_cIQ52jI5SH3GXr&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=RLmxDwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72joFBRNSJd1wPYz9NYaU93vfxfZWZ8zGVlJOYR8FmIDOXHiBUeCIrmXmBWHbxZb7GZOnvT31v7oQv4XIsJC6CXgUvQzC1LBenvKd0ZAu9m40d_p-KZUTvI2Bpanph0-SzOxZZ9&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=RLmxDwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73jVW3XeG5EVPwO4iBlXhMLiGerFDAAOXUwQZT9WIipZDm0dAHSvw3X2OpyvXspraj8D2AnKpF4qVQ-8F3Mvcz9pe4huGFhaxTXTibvcZZtzfRUgvLYXH-XkZjPLJYmzVKorb_y&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=RLmxDwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE71ZpR20EL_rJ2kA02ouhzoXmRcLchulqvrP5eEQG9yrRoYpI6Oji2xq-5nncqIoYXcEyEc_NVWEv3Csap0paY00LRTjlYKlYbpkaa0tV1L_bdh1LxooXhpr8LTWlJLnUD1axjv6&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=RLmxDwAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=RLmxDwAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=RLmxDwAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=RLmxDwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      },
    ],
  }, {
    name: "The Rory Gilmore Book Club",
    host: {
      username: User.all[rand(25) + 1].username,
      first_name: User.all[rand(25) + 1].first_name,
      last_name: User.all[rand(25) + 1].last_name,
    },
    description: "This group is for fans of literature and the Gilmore Girls.",
    books: [
      {
        "kind": "books#volume",
        "id": "H1zzDwAAQBAJ",
        "etag": "OyYTVCSWGhg",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/H1zzDwAAQBAJ",
        "volumeInfo": {
          "title": "Nineteen Eighty-Four",
          "subtitle": "The Graphic Novel",
          "authors": [
            "George Orwell",
          ],
          "publisher": "Penguin Books Limited",
          "publishedDate": "2021-04-01",
          "description": "<p><b>The first ever graphic novel adaptation of George Orwell's timeless dystopia</b><br><br>Winston Smith, an outwardly obedient citizen of Airstrip One, dreams secretly of truth and freedom - but his rebellion will come at a terrible cost. George Orwell's dark masterpiece has enthralled readers for over seventy years. Now the dystopian world of Big Brother, telescreens, the Thought Police and Room 101 is vividly brought to new life in this first ever graphic novel adaptation, illustrated by acclaimed artist Fido Nesti.</p>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0141992352",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780141992358",
            },
          ],
          "readingModes": {
            "text": true,
            "image": false,
          },
          "pageCount": 224,
          "printedPageCount": 225,
          "printType": "BOOK",
          "categories": [
            "Comics & Graphic Novels / Literary",
            "Comics & Graphic Novels / Science Fiction",
            "Comics & Graphic Novels / Dystopian",
            "Comics & Graphic Novels / Adaptations",
            "Fiction / Classics",
            "Fiction / Science Fiction / General",
          ],
          "averageRating": 4,
          "ratingsCount": 2,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": true,
          "contentVersion": "1.2.2.0.preview.2",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "comicsContent": true,
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=H1zzDwAAQBAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE71gGN5okRh8eobrJ5HThF9W5fUWcEMOjP8RzGfO7UjLeUvqARl3hbxNBYskj-wxyHxm5U3BZCBHIkHDYbgmlbKFPJa1_ZiU15za26s1dkwYNK_JIuQ_JVdA7Ix9Rt3WZihCszvY&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=H1zzDwAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72Afr6wH34WS4ORCmYLHFlttSBdbDt4DDbJbg9rJ41XxMmowHY1qa0u0gstpn4XrKu60UboqJWMEkpQSaAA7ZbMhhfK5WFU5lW4n17OOpkI0tWOk7onav_dYavcEl54Dy0EvKi4&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=H1zzDwAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=H1zzDwAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=H1zzDwAAQBAJ",
        },
        "layerInfo": {
          "layers": [
            {
              "layerId": "geo",
              "volumeAnnotationsVersion": "2",
            },
          ],
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": true,
          },
          "pdf": {
            "isAvailable": true,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=H1zzDwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "mWHcDAAAQBAJ",
        "etag": "q4LNow8Y4n8",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/mWHcDAAAQBAJ",
        "volumeInfo": {
          "title": "Adventures of Huckleberry Finn",
          "authors": [
            "Mark Twain",
          ],
          "publisher": "Courier Corporation",
          "publishedDate": "1994-05-26",
          "description": "Hilariously picaresque, epic in scope, alive with the poetry and vigor of the American people, Mark Twain's story about a young boy and his journey down the Mississippi was the first great novel to speak in a truly American voice. Influencing subsequent generations of writers -- from Sherwood Anderson to Twain's fellow Missourian, T.S. Eliot, from Ernest Hemingway and William Faulkner to J.D. Salinger -- \"Huckleberry Finn,\" like the river which flows through its pages, is one of the great sources which nourished and still nourishes the literature of America.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0486280616",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780486280615",
            },
          ],
          "readingModes": {
            "text": false,
            "image": true,
          },
          "pageCount": 220,
          "printedPageCount": 227,
          "dimensions": {
            "height": "21.00 cm",
            "width": "12.70 cm",
            "thickness": "1.30 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Classics",
            "Fiction / Action & Adventure",
          ],
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": true,
          "contentVersion": "1.5.0.0.preview.1",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=mWHcDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70_GEVfyB6cCx2I8UM6bkBJ0QITwWiTWxxmaTn1w7PI8sgdEzkZgo3vT_yyEZCYctX4ptPY8Jb69yMAUM9_DIg50SnrGKmTl3iN4W6Eb1P7dhKlYEux32CWKrHMdAhjzUGERWqV&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=mWHcDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71V41rwX6E4PprdU_mT8mQT7EYV6a9Vd1Hcg12wFM_5ysk7HbwHgFz5t6MBBUqMO8C2hNDAzupx19OAw1t5Xv_HI5giIvw5z0aeNaT7qLKgzwir81Q-SsS9hodik14Wks54syR8&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=mWHcDAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71yg_suyHLSKYmI5EljM1Q2cP-0ZgsRADD32rd_FMAhKtXzWY71ZCURAg9sp6akzcYZHXWb39CP4H3JxkdNhHtngOCEB2P4YJGYjPrqiAx4WgJcoe0CKVRKjfHf4wXHWz0E997L&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=mWHcDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72sUq8IRdSj-iEYwO-V6_KBKQ4WZigX07zWHyPhNt98ITL-41y9tRZLp8Yymh1ieBMQJTcVI3ypDBQcaLUBnYit6Cp59_oyYMh8VBjnimZ7H5QFpiyYKE0v1GwZzClqIqENdMIU&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=mWHcDAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE73OsQhTagVAAXmcDp-hWMD3Tp3191unKA3Yxvspcmoon8jizopUQufllhF68-lDHPb-TpJTzxQ-dlUBaeHPQ_1EzNVObo8Iz98C_XXtO3AlMepma1PHzsjqDg5sjsUv0_XRpaq5&source=gbs_api",
            "extraLarge": "http://books.google.com/books/publisher/content?id=mWHcDAAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70YHHT1USU83u1cYkZ_YMznMy2VL5uj50Yo9HZfquF0T9vdoTgdfbgOwCk4DecN1tBYFgaQ1-cKyfwzXw8V88F_k6TG_AKNlu6T_U4O70eKtN0L3WWkjhQZHaUJEL4bjgCf0Vdu&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=mWHcDAAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=mWHcDAAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=mWHcDAAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=mWHcDAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "aEF_Fo7xCzsC",
        "etag": "7ana0ALamqY",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/aEF_Fo7xCzsC",
        "volumeInfo": {
          "title": "The Complete Alice in Wonderland",
          "authors": [
            "Lewis Carroll",
          ],
          "publisher": "Dynamite",
          "publishedDate": "2010-08-03",
          "description": "Join Alice on her whimsical journey down the rabbit hole! For the first time ever, Lewis Carroll's beloved masterpiece is faithfully adapted and illustrated in its entirety, including the long-lost chapter, \"The Wasp in a Wig!\" From her initial meeting with the White Rabbit in Alice's Adventures in Wonderland, to her final dinner party with the entire (and outrageous) Through the Looking Glass cast, every moment of Alice's adventures in that astonishing landscape is captured in gorgeous detail. With old favorites like the Cheshire Cat and the Mad Hatter joined now by a long-forgotten Carroll creation, The Wasp, in one of the book's latter chapters, children and adults alike can rediscover the complete Alice tale and fall in love with Wonderland all over again!",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "1606900854",
            },
            {
              "type": "ISBN_13",
              "identifier": "9781606900857",
            },
          ],
          "readingModes": {
            "text": false,
            "image": true,
          },
          "pageCount": 184,
          "printedPageCount": 188,
          "dimensions": {
            "height": "26.40 cm",
            "width": "17.30 cm",
            "thickness": "1.30 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Comics & Graphic Novels / Fantasy",
          ],
          "averageRating": 4,
          "ratingsCount": 6,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": true,
          "contentVersion": "0.1.0.0.preview.1",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "comicsContent": true,
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=aEF_Fo7xCzsC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE71oN_NV2_nIY2vxUkawNF74NgEp6VC2T1CeXC4vsHr8Fgbm1EtG0qDmxgp4iAtkbrFDd3i0ktysEYq_GhuG2BejvHOuVxhNhgV-yDkFUlsmQXoC8dAVcQ5ci-pJciPTLRhesXLF&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=aEF_Fo7xCzsC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70IQMGIm2njUBzrKJcTszVgnJ4eiEMGB-xhUxNTx9qyFgAV-Bfcg3u9qcqXBnaZDmGV702ddkx0mtZ88Mho1sKfA_6SJ3KjRcNXwbxCecOoadGWiZC92N80bBSwgd_90D9DjSdA&source=gbs_api",
            "small": "http://books.google.com/books/content?id=aEF_Fo7xCzsC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73UfNqafoY3HNIBl9J6u3wpKnfFPBJg2slli5l_FffOvZpJqzoO4xsu8ljAW-ltnTIVC-R6eWlPAFawnXJG0JL9O9UOjX1LCRCFd2grJLwB519fYNGonCpF0V-vxhkExMZeUZo_&source=gbs_api",
            "medium": "http://books.google.com/books/content?id=aEF_Fo7xCzsC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71PFEm_bYUyXoNjshmfI98K-hRDz5bKgpXDBn74l5Lfm93a30UQiOI2E2KIJZmwb2DNMfGv0UASs4Joe0bPXvgLdRNzsKTrHy6kTd_zKpwGvMyqR8epeKzpH-cfQn5mIV4FkdSv&source=gbs_api",
            "large": "http://books.google.com/books/content?id=aEF_Fo7xCzsC&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE71-BswcEy_P4Np5Xx74rEADIQxco85AgyyNjoB0qutblwI0Mk5BGRxsNaYQ01nHWh_P1O0P3BU_Y0WWZ3PCXGp04oIV6NF2xadgchCpVTyYMXq0cytsT8QAIP5gOdmzlIeMNOs3&source=gbs_api",
            "extraLarge": "http://books.google.com/books/content?id=aEF_Fo7xCzsC&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE71eCzUAij6Iea_J5eNB4QemKsAWKpICN9cOi_EFyARyO9lhL6-Tqx9tFNdSvwwY8dIkrr3Krgkyek1AOMDISRzdPjfWg9-WSm-BP_lg1ksUmh2WSoX3F5VhkoDVbXBNHpmSYyw-&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=aEF_Fo7xCzsC&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=aEF_Fo7xCzsC&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=aEF_Fo7xCzsC",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "FOR_SALE",
          "isEbook": true,
          "listPrice": {
            "amount": 20,
            "currencyCode": "USD",
          },
          "retailPrice": {
            "amount": 20,
            "currencyCode": "USD",
          },
          "buyLink": "https://play.google.com/store/books/details?id=aEF_Fo7xCzsC&rdid=book-aEF_Fo7xCzsC&rdot=1&source=gbs_api",
          "offers": [
            {
              "finskyOfferType": 1,
              "listPrice": {
                "amountInMicros": 20000000,
                "currencyCode": "USD",
              },
              "retailPrice": {
                "amountInMicros": 20000000,
                "currencyCode": "USD",
              },
              "giftable": true,
            },
          ],
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.com/books/download/The_Complete_Alice_in_Wonderland-sample-pdf.acsm?id=aEF_Fo7xCzsC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
          },
          "webReaderLink": "http://play.google.com/books/reader?id=aEF_Fo7xCzsC&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "3T61gEg6WhwC",
        "etag": "XJECluxM3AE",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/3T61gEg6WhwC",
        "volumeInfo": {
          "title": "The Amazing Adventures of Kavalier & Clay (with bonus content)",
          "subtitle": "A Novel",
          "authors": [
            "Michael Chabon",
          ],
          "publisher": "Random House Publishing Group",
          "publishedDate": "2012-06-12",
          "description": "<b>WINNER OF THE PULITZER PRIZE • <i>NEW YORK TIMES </i>BESTSELLER • The epic, beloved novel of two boy geniuses dreaming up superheroes in New York’s Golden Age of comics, now with special bonus material by the author—soon to be a Showtime limited series</b><br><b> </b><br><b>“It's absolutely gosh-wow, super-colossal—smart, funny, and a continual pleasure to read.”<i>—The Washington Post Book World</i></b><br><b> </b><br><b>Named one of the 10 Best Books of the Decade by <i>Entertainment Weekly</i> • Finalist for the PEN/Faulkner Award, National Book Critics Circle Award, and <i>Los Angeles Times</i> Book Prize<br></b><br>A “towering, swash-buckling thrill of a book” (<i>Newsweek</i>), hailed as Chabon’s “magnum opus” (<i>The New York Review of Books</i>), <i>The Amazing Adventures of Kavalier & Clay</i> is a triumph of originality, imagination, and storytelling, an exuberant, irresistible novel that begins in New York City in 1939.<br> <br>A young escape artist and budding magician named Joe Kavalier arrives on the doorstep of his cousin, Sammy Clay. While the long shadow of Hitler falls across Europe, America is happily in thrall to the Golden Age of comic books, and in a distant corner of Brooklyn, Sammy is looking for a way to cash in on the craze. He finds the ideal partner in the aloof, artistically gifted Joe, and together they embark on an adventure that takes them deep into the heart of Manhattan, and the heart of old-fashioned American ambition. From the shared fears, dreams, and desires of two teenage boys, they spin comic book tales of the heroic, fascist-fighting Escapist and the beautiful, mysterious Luna Moth, otherworldly mistress of the night. Climbing from the streets of Brooklyn to the top of the Empire State Building, Joe and Sammy carve out lives, and careers, as vivid as cyan and magenta ink.<br> <br>Spanning continents and eras, this superb book by one of America’s finest writers remains one of the defining novels of our modern American age.<br> <br><b>Winner of the Bay Area Book Reviewers Award and the New York Society Library Book Award</b>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0812993675",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780812993677",
            },
          ],
          "readingModes": {
            "text": true,
            "image": false,
          },
          "pageCount": 704,
          "printedPageCount": 706,
          "printType": "BOOK",
          "categories": [
            "Fiction / Action & Adventure",
            "Fiction / Humorous / General",
            "Fiction / Historical / General",
          ],
          "averageRating": 4,
          "ratingsCount": 221,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": true,
          "contentVersion": "4.11.7.0.preview.2",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=3T61gEg6WhwC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73OVOp8cEX9DlVzP7_zj-fjSZejwnB86P0I0rR3yzMmF04g4Jeb7sDIIjYZFuNd5HcncP3t7N564Gq2fA3OXanCNe7jFzVRkTo65uKEG3arlJW8gThm9tkbtAvk2q910B0vG_N7&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=3T61gEg6WhwC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70-z8KUUSnlpMD_Fpqv5zGV__nA1UjMAFTQmM3TgMAQIuhCweQF5VPBlTi2hu1xFTUUR_73T_C7fKjw0gU4v5sC8l2helEbpt0LqLiT18qJyG-XjHgKtpUc9IKNZTVVVUSLJerg&source=gbs_api",
            "small": "http://books.google.com/books/content?id=3T61gEg6WhwC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70NOHVZQ1FMPk9MjU9nR80ZWaqmn_wvXCcdLCc_jJakguCAMVaWYRd5r_2nvN9S_zxaY9l0qoyDpF9ctm3mrL9opamchijoy82wwekxKFP4FKhK_izBvpdQWfJR1QHl5j414gZE&source=gbs_api",
            "medium": "http://books.google.com/books/content?id=3T61gEg6WhwC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71bJNQ_MbCunzkWqF7bDMQR11-hDwh5ewIFvNkNwavAhT2mOqtt8ilQKViqTKnEUvnXnjvXnT4e8TACdbgDMJAPyHFFJLhzExXVbsfQxnjNSCzr0jpPpD0jfDQkRdxEe--57rH7&source=gbs_api",
            "large": "http://books.google.com/books/content?id=3T61gEg6WhwC&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE70Lga4cO7cGze1xg4qggXbgh2DOotr6d206lqyv8Sp6IPxGYLIxMqOWy6qPhKy8f2MMTiODrISaJEmdYhzDkHub0MdVPhVOyDHMyOThcM5nJ1BxfL57Uodl657V_XC0Dl43J3Qr&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=3T61gEg6WhwC&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=3T61gEg6WhwC&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=3T61gEg6WhwC",
        },
        "layerInfo": {
          "layers": [
            {
              "layerId": "geo",
              "volumeAnnotationsVersion": "15",
            },
          ],
        },
        "saleInfo": {
          "country": "US",
          "saleability": "FOR_SALE",
          "isEbook": true,
          "listPrice": {
            "amount": 12.99,
            "currencyCode": "USD",
          },
          "retailPrice": {
            "amount": 12.99,
            "currencyCode": "USD",
          },
          "buyLink": "https://play.google.com/store/books/details?id=3T61gEg6WhwC&rdid=book-3T61gEg6WhwC&rdot=1&source=gbs_api",
          "offers": [
            {
              "finskyOfferType": 1,
              "listPrice": {
                "amountInMicros": 12990000,
                "currencyCode": "USD",
              },
              "retailPrice": {
                "amountInMicros": 12990000,
                "currencyCode": "USD",
              },
              "giftable": true,
            },
          ],
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.com/books/download/The_Amazing_Adventures_of_Kavalier_Clay-sample-epub.acsm?id=3T61gEg6WhwC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=3T61gEg6WhwC&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "STXxjgEACAAJ",
        "etag": "JkAhaToVt2M",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/STXxjgEACAAJ",
        "volumeInfo": {
          "title": "An American Tragedy",
          "authors": [
            "Theodore Dreiser",
          ],
          "publisher": "Signet Classics",
          "publishedDate": "2010",
          "description": "On one level, An American Tragedy is the story of the corruption and destruction of one man, Clyde Griffiths, who forfeits his life in desperate pursuit of success. On a deeper, more profound level, the novel represents a massive portrayal of the society whose values both shape Clyde's tawdry ambitions and seal his fate.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0451531558",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780451531551",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 870,
          "printedPageCount": 870,
          "dimensions": {
            "height": "18.00 cm",
            "width": "10.80 cm",
            "thickness": "3.80 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Classics",
          ],
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=STXxjgEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE7302wtfNsyFxTgKAQ2fL6PUR24R3u2hTYCzScGCGyZb2OkKua7cqU0_t4KJ-_XmcjuU8QZ7iy_6er4kpAjl2FNPJARIrWKlGRkYlAUWApHwkcuBtF1yY9jZ8R3IrFxUyKw_Oh3A&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=STXxjgEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73x-VfYx0hIu0ISIYcrk6VaK4mDImohB7Fwsh6VA0Q91teSYS2mjeMNQfq0fFGzZ4KLWWvAzpnagza3PP7kHI1WUpohlrdDFYPdGi5BrGWq2S-eT4PoH_qcHasGFxkQqrLhUmOU&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=STXxjgEACAAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=STXxjgEACAAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=STXxjgEACAAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=STXxjgEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "Ia5XBAAAQBAJ",
        "etag": "PW+sMzRDTdY",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/Ia5XBAAAQBAJ",
        "volumeInfo": {
          "title": "Angela's Ashes",
          "subtitle": "A Memoir",
          "authors": [
            "Frank McCourt",
          ],
          "publisher": "Simon and Schuster",
          "publishedDate": "1999-05-25",
          "description": "<b>A Pulitzer Prize–winning, #1 New York Times bestseller, <i>Angela’s Ashes</i> is Frank McCourt’s masterful memoir of his childhood in Ireland.</b><br><br>“When I look back on my childhood I wonder how I managed to survive at all. It was, of course, a miserable childhood: the happy childhood is hardly worth your while. Worse than the ordinary miserable childhood is the miserable Irish childhood, and worse yet is the miserable Irish Catholic childhood.”<br> <br>So begins the luminous memoir of Frank McCourt, born in Depression-era Brooklyn to recent Irish immigrants and raised in the slums of Limerick, Ireland. Frank’s mother, Angela, has no money to feed the children since Frank’s father, Malachy, rarely works, and when he does he drinks his wages. Yet Malachy—exasperating, irresponsible, and beguiling—does nurture in Frank an appetite for the one thing he can provide: a story. Frank lives for his father’s tales of Cuchulain, who saved Ireland, and of the Angel on the Seventh Step, who brings his mother babies.<br> <br>Perhaps it is story that accounts for Frank’s survival. Wearing rags for diapers, begging a pig’s head for Christmas dinner and gathering coal from the roadside to light a fire, Frank endures poverty, near-starvation and the casual cruelty of relatives and neighbors—yet lives to tell his tale with eloquence, exuberance, and remarkable forgiveness.<br> <br><i>Angela’s Ashes</i>, imbued on every page with Frank McCourt’s astounding humor and compassion, is a glorious book that bears all the marks of a classic.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "068484267X",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780684842677",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 363,
          "printedPageCount": 384,
          "dimensions": {
            "height": "21.00 cm",
            "width": "14.00 cm",
            "thickness": "2.00 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Biography & Autobiography / General",
            "Biography & Autobiography / Historical",
            "Biography & Autobiography / Literary Figures",
            "Biography & Autobiography / Personal Memoirs",
            "Biography & Autobiography / Survival",
          ],
          "averageRating": 4,
          "ratingsCount": 14,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.8.1.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=Ia5XBAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72ADdTDN_tKDGNr_Fc9kRd925SvPpMbiABmMlmJRmEObh-ksEDKk-KKAkARHDz-B_Xcz_o5ITqy_Dc4U_1F_Aqd3ww2r5olHVwIbMkBncQlePFhXg0aA-OXEO8OH9mFaA1fb2Uf&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=Ia5XBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE724aL0g0r10J3VCAUr1EZ8_gGKumDEpmy5cVmJvJ5t0LS-A42l4AKQU2-77ekcLgSwMJi-GS12Hu54xxCi_PReopznOx82Fz2va_-UYqlo9etPIiOZlDSFHOs1IRucGgpZLTKOQ&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=Ia5XBAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71QnehjjKIOTuZHCL_rHaY_7AAX9SttBBIVX4jSXH_voGOq6znHxQq3n8XjewTb5wjZvxL7mhHLPHd8wGmatazOcdFKVPnoAjgQF-HjPiNrGhbQzFDIMplDANQt6qZivtvxNCIg&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=Ia5XBAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72INKk0bHRWmw9mIXeUFlsnaCqR1wjTLsWlgMqKDyylgsZKsx06udvJZtKU5Md9MqoZzEL1Ge7bYF5OwmrQVb7QC_kgf7TWRRQjvpCg14DFrZF637AlELtkT1bDCSiSFgWjwp_B&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=Ia5XBAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE720PzwHxoClbEIW-SbPc3yvAG20ogrONaNRE10tzhWVauV9N4wf7N2rpZDz-WVGkrDKajUvDERoX4v11oc6Hf5D5lXbEVFuVf8EmwgOnxb00OnlfA_y7NZJnP4XYyjncgKmIXAZ&source=gbs_api",
            "extraLarge": "http://books.google.com/books/publisher/content?id=Ia5XBAAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70YXsxIU0rHsc6qB2JGdknz9eTt4AUkEme7m63DAwBDFlSP_SFZAh7ZJEk_08GqiO6u_vAs0EEvtbZMhz5Eklv-wHMNRx-pJmsk-8xKJINw7Vrup7tMhza9otNfom1Cp6P3Ux3n&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=Ia5XBAAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=Ia5XBAAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=Ia5XBAAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED_FOR_ACCESSIBILITY",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=Ia5XBAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "jqWDCgAAQBAJ",
        "etag": "7OwMT4b10kY",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/jqWDCgAAQBAJ",
        "volumeInfo": {
          "title": "Anna Karenina",
          "authors": [
            "Leo Tolstoy",
          ],
          "publisher": "Simon and Schuster",
          "publishedDate": "2016-01-26",
          "description": "<b><i>Anna Karenina</i> is a powerful meditation on love and marriage, envy and retribution, and the desire for happiness.</b><br><br>Considered one of the greatest novels ever written, <i>Anna Karenina</i> is the story of Anna, her marriage to Karenin, a high-ranking government minister, and her affair with Vronsky, a wealthy and charismatic military officer. This impossible and destructive triangle is set against the courtship and marriage of Levin, a melancholy landowner, and Kitty, a beautiful young woman was also initially sought after by Vronsky. While Anna looks for happiness through love—rashly defying the conventions of Russian society by leaving her husband and son to live with her lover, which finds her condemned and ostracized by her peers and prone to fits of jealousy that alienate Vronsky—Levin embarks on his own search for spiritual fulfillment through marriage, family, and hard work. Surrounding these two central plot threads are dozens of characters whom Tolstoy seamlessly weaves together, making <i>Anna Karenina</i> a breathtaking overview of nineteenth-century Russian society.<br> <br> This edition includes:<br> -A concise introduction that gives the reader important background information<br> -A chronology of the author’s life and work<br> -A timeline of significant events that provides the book’s historical context<br> -An outline of key themes and plot points to guide the reader’s own interpretations<br> -Detailed explanatory notes<br> -Critical analysis and modern perspectives on the work<br> -Discussion questions to promote lively classroom and book group interaction<br> -A list of recommended related books and films to broaden the reader’s experience<br> <br>Simon & Schuster Enriched Classics offer readers affordable editions of great works of literature enhanced by helpful notes and insightful commentary. The scholarship provided in Enriched Classics enables readers to appreciate, understand, and enjoy the world’s finest books to their full potential.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "1451685556",
            },
            {
              "type": "ISBN_13",
              "identifier": "9781451685558",
            },
          ],
          "readingModes": {
            "text": true,
            "image": false,
          },
          "pageCount": 1232,
          "printedPageCount": 1234,
          "printType": "BOOK",
          "categories": [
            "Fiction / General",
            "Fiction / Classics",
            "Fiction / Literary",
            "Fiction / Fantasy / General",
          ],
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "1.7.5.0.preview.2",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=jqWDCgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72jKXbFCi_PbEstBmlONKYFIJkrXQfvdrnYKoR_E5kDqUROlkJJyT9cOTY4dh1hnf0WI8IDCLp-ES0uuxAhrIaTDBZycnH9vZxtPAZs6iiS_vJJo0eKUoO6H55OG1BeizEv4ojD&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=jqWDCgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73UD-C5GmpxvRyl0M5b-yE7Yamg45mQXa4tyhLj4UgcZAQee7Ig0gpIdTQfUMnRpOX33BVVPkER_qSCKz8fgXTzT3ewEjmSUpWBkTKKXhg4I0gacjglHhHCSljfNRAP6BGl9Nmu&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=jqWDCgAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70tD8ZFXLxmMxOF02zV4a68c1_dem8wTnl5WrWNF3uJe0EwUwXijlA0y4823D8dSj9-OJ2JQxw-PFbbjpekxmFFKUfBCWrighZhMRzQbeJ3AB3i2gaFejA0rB89cJOeej_fFc1-&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=jqWDCgAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72aRK4oBkZ6G8-Hm-ri8T-8pVQ83YgC6CQBHw4yKptOZBTHZDiMEaD7pT3TB1HVuYV6uk0LVyDVx7rQ4P-0FgD3epFVqkXw6pdVT8XD99UwXr7rHX9cjtPzEQteur4ogf9B3Yii&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=jqWDCgAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE71zSo6oSikcFyA5J1lM1crZFXyyJarkX0alTJSzywszasljF0lYKvGyZgNMkRvv9a4L7Mrd5cXSDRkMgaplbiWM5Mpnvllesa4qmZcJJ6HjTQ6CFNx2yHPdOmV-oKDUMrlB6QG6&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=jqWDCgAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=jqWDCgAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=jqWDCgAAQBAJ",
        },
        "layerInfo": {
          "layers": [
            {
              "layerId": "geo",
              "volumeAnnotationsVersion": "10",
            },
          ],
        },
        "saleInfo": {
          "country": "US",
          "saleability": "FOR_SALE",
          "isEbook": true,
          "listPrice": {
            "amount": 7.99,
            "currencyCode": "USD",
          },
          "retailPrice": {
            "amount": 7.99,
            "currencyCode": "USD",
          },
          "buyLink": "https://play.google.com/store/books/details?id=jqWDCgAAQBAJ&rdid=book-jqWDCgAAQBAJ&rdot=1&source=gbs_api",
          "offers": [
            {
              "finskyOfferType": 1,
              "listPrice": {
                "amountInMicros": 7990000,
                "currencyCode": "USD",
              },
              "retailPrice": {
                "amountInMicros": 7990000,
                "currencyCode": "USD",
              },
              "giftable": true,
            },
          ],
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED_FOR_ACCESSIBILITY",
          "epub": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.com/books/download/Anna_Karenina-sample-epub.acsm?id=jqWDCgAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=jqWDCgAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "WiJPngEACAAJ",
        "etag": "OJz4CcptJt0",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/WiJPngEACAAJ",
        "volumeInfo": {
          "title": "The Art of War",
          "authors": [
            "Sun-tzu",
          ],
          "publisher": "CreateSpace Independent Publishing Platform",
          "publishedDate": "2014-01-28",
          "description": "Dated to about the fifth century B.C., \"The Art of War\" is considered the world's oldest treatise on war. Attributed to Sun Tzu of the Zhou dynasty, the book is composed of 13 chapters, each addressing a particular aspect of warfare such as planning offenses, military combat, and the employment of spies. Influential in Eastern civilization for millennia and in Western culture since its first translation in the 18th century, the teachings of this book have been applied to scenarios as varied as office politics, the Vietnam War, and American football. Now this living military heirloom is available as part of the \"Word Cloud Classics\" series in a chic, affordable edition for readers everywhere.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "1495354350",
            },
            {
              "type": "ISBN_13",
              "identifier": "9781495354359",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 118,
          "printedPageCount": 118,
          "dimensions": {
            "height": "22.90 cm",
            "width": "15.20 cm",
            "thickness": "0.70 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Political Science / History & Theory",
          ],
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=WiJPngEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE73zG4ckZ_1NEgJ_NFfxuM3W46S1xXpqU8R0W9_aRaxHzpqThF4KagpTMQPlFHKYaO13xfFUq6bOy6UKb5Bc5IuotQvFuQd9zi_4S8NeinLEmvckL8du1zYfyNNe0TkXrtEcHXaM&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=WiJPngEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70WbbD8i_p1aQfqY-ec2qb8_KLVSzIx8qEc_zhWiBDRzytAbAULrqljdZAHotbmZrUMjPeBAPHGP-4JPdaB0VrMl2J7H0wUK0WYdofLitnNbGjj33EY6zizfC8zCVFl4SCS_OyG&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=WiJPngEACAAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=WiJPngEACAAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=WiJPngEACAAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=WiJPngEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      },

    ],
  }, {
    name: "Catching up on Classics",
    host: {
      username: User.all[rand(25) + 1].username,
      first_name: User.all[rand(25) + 1].first_name,
      last_name: User.all[rand(25) + 1].last_name,
    },
    description: "For all Lovers of Classic books",
    books: [
      {
        "kind": "books#volume",
        "id": "IGoeEAAAQBAJ",
        "etag": "5I8Ce2jwNiA",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/IGoeEAAAQBAJ",
        "volumeInfo": {
          "title": "The Great Gatsby",
          "authors": [
            "F. Scott Fitzgerald",
          ],
          "publisher": "Random House Publishing Group",
          "publishedDate": "2021-01-05",
          "description": "<b>The classic novel that continues to haunt our understanding of ambition, love, entitlement, and the American Dream—with an exclusive discussion guide and an introduction by Pulitzer Prize–winning critic Wesley Morris<br><br>One of the Modern Library 100 Best Novels of the Twentieth Century</b><br>  <br>Nick Carraway is an aspiring writer; his cousin, Daisy, is married to the fabulously wealthy Tom Buchanan. Their neighbor, Jay Gatsby, throws extravagant and extraordinary parties in the exclusive and hallowed neighborhood of West Egg. The entanglements between these four characters form the backbone of F. Scott Fitzgerald’s greatest work.<br><br>When it was first published in 1925, <i>The Great Gatsby</i> was heralded “a mystical, glamorous story of today” (<i>The New York Times</i>). Since then, the story of Jay Gatsby and his love for the treacherous, effervescent Daisy Buchanan has become a staple in high school and college classrooms, a beloved favorite of readers everywhere, and the #2 entry in the Modern Library’s own list of the best novels of the twentieth century.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0593133552",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780593133552",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 192,
          "printedPageCount": 194,
          "dimensions": {
            "height": "20.10 cm",
            "width": "13.10 cm",
            "thickness": "1.20 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Classics",
            "Fiction / Literary",
            "Fiction / Coming of Age",
          ],
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=IGoeEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70rs6P06UG1BmAvL9HwZPxN3YsZ_94FvivjmAgsXrWcA5B6l2zk7sTc5e53XvjCAxyc5xDO3errvPRWvpQdL7bW2RGgoiipvYCKQgpJX9MTYKyTmZpuESbbQe53Ue3a6uD1nrQ_&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=IGoeEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72g6hYdVt7B9ScRuvPYRBm4e2Tlf6Lq81HIwp5MRtpuNGHnFC0hPVdgZ-5LfypVSzhKctotFpjxi9I48iBhS-fQMG1WWqbniVDsX0BUvs93TKii2m_WD5VGM26FBXm1rhVoWdVZ&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=IGoeEAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70hVx12IFEA5bJLt1FuWMRKtBG6XhIvif6oE-zRAC3zX6JIUJCbQ3t3ePk-AJ4kSrnBxuhCXEkqaJ2v9ops1Z0o645kU6aQo1AW3uCPQDTYEwMtChLbZgCdrWbiAFOUzkDRcKQP&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=IGoeEAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71HeYay_8uqWwomE1GmDdptYUW9jliwOAWTSqJdpwipcSXa8-ZlKbKaz8yqDr-Ok81n1lKHXZ7ow07UJSrOJKGwdKcSlPZYlg6VXUbkbRtmk7TQ10mYqv9Rh2kHWjUPlj_2n3J5&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=IGoeEAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE72WE0Y3Gqxkbf8ZGWqKcubWG6GZ7EjJv4RyGPf7Exv0R5bPGRcwchweq6IrDX5RcpnG9Vb-UbXUo85wESX-G4kbIhyODjVZvyKHDk5UUKmOLJu8REhcDJ40CeoM_LM5dMzrvErD&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=IGoeEAAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=IGoeEAAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=IGoeEAAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=IGoeEAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "3cBfwgEACAAJ",
        "etag": "50ZadVqqaN0",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/3cBfwgEACAAJ",
        "volumeInfo": {
          "title": "One Hundred Years of Solitude",
          "authors": [
            "Gabriel García Márquez",
          ],
          "publisher": "Penguin Books",
          "publishedDate": "2007",
          "description": "‘Many years later, as he faced the firing squad, Colonel Aureliano Buendía was to remember that distant afternoon when his father took him to discover ice.’Pipes and kettledrums herald the arrival of gypsies on their annual visit to Macondo, the newly founded village where José Arcadio Buendía and his strong-willed wife, Úrsula, have started their new life. As the mysterious Melquíades excites Aureliano Buendía’s father with new inventions and tales of adventure, neither can know the significance of the indecipherable manuscript that the old gypsy passes into their hands. Through plagues of insomnia, civil war, hauntings and vendettas, the many tribulations of the Buendía household push memories of the manuscript aside. Few remember its existence and only one will discover the hidden message that it holds…This new edition of Gabriel García Márquez's most celebrated novel is published to coincide with celebrations to mark the 80th birthday of this Nobel Prize winning author in 2007.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "014103243X",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780141032436",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 422,
          "printedPageCount": 422,
          "dimensions": {
            "height": "20.00 cm",
            "width": "12.90 cm",
            "thickness": "2.60 cm",
          },
          "printType": "BOOK",
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=3cBfwgEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE72SkZwSRRVBnC6ipO79LGIOx-eN2MnllkyX9zMaAFZ70B2RZzpfycS5WHFeGnoEfkj9vF8NJUd8NeqfQZCsjITtS_NyDTIxo3G7uj1OYjBSbNfHWcQlHGPo_93JSZKN3yOQQT14&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=3cBfwgEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73v3M-CmBWR-UvYAumI37to8Bd4Vj93n3jvRmlVZbSiSFn9XgUHirwgI_u-RC2Fl82N4TMvY5KP-lOAU4CLcFz8rE6Txl5ajHwoSwA21EfJ95c3D0Qy0M2pcYia_-Xz-HFHxoN_&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=3cBfwgEACAAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=3cBfwgEACAAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=3cBfwgEACAAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=3cBfwgEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "mYC3yRvvXxMC",
        "etag": "RgrVvN5jJCk",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/mYC3yRvvXxMC",
        "volumeInfo": {
          "title": "In Cold Blood",
          "subtitle": "A True Account of a Multiple Murder and Its Consequences",
          "authors": [
            "Truman Capote",
          ],
          "publisher": "Vintage Books",
          "publishedDate": "1994",
          "description": "<p><b>NATIONAL BESTSELLER - The most famous true crime novel of all time c<b>hills the blood and exercises the intelligence (<i>The New York Review of Books</i>)<b>--</b>and</b> haunted its author long after he finished writing it.<br></b><br> On November 15, 1959, in the small town of Holcomb, Kansas, four members of the Clutter family were savagely murdered by blasts from a shotgun held a few inches from their faces. There was no apparent motive for the crime, and there were almost no clues. <p> In one of the first non-fiction novels ever written, Truman Capote reconstructs the murder and the investigation that led to the capture, trial, and execution of the killers, generating both mesmerizing suspense and astonishing empathy. <i>In Cold Blood</i> is a work that transcends its moment, yielding poignant insights into the nature of American violence.</p>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0679745580",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780679745587",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 343,
          "printedPageCount": 370,
          "dimensions": {
            "height": "21.00 cm",
            "width": "13.20 cm",
            "thickness": "2.00 cm",
          },
          "printType": "BOOK",
          "categories": [
            "HISTORY / United States / State & Local / Midwest (IA, IL, IN, KS, MI, MN, MO, ND, NE, OH, SD, WI)",
            "Social Science / Criminology",
            "True Crime / Murder / General",
          ],
          "averageRating": 4,
          "ratingsCount": 263,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.6.1.0.preview.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=mYC3yRvvXxMC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE71Dicm6OvFDedtHaoHdUMEF32rFumRXTNCvzMpn_x4K1460CsvYEkBpu_Y7e-jOAGXSfGUrSor73bGbLdIrVaJjTh9BI3kp7BORMPbn3bpiAPn4QXLH_bu8SjpmV0nQKziJPuy-&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=mYC3yRvvXxMC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72EqCyWfg_LQOqvIg55PSR7WPOXfLUE9XOBqolKhi9nFnbePHY-uhlGyGK0OFqhgqU108UIqrNjMsQlX6Q0WfkKq_MyfCmaj-1PQ_OtQGhrQtkkq8PAUGlXeswJEpiby3FiaNiP&source=gbs_api",
            "small": "http://books.google.com/books/content?id=mYC3yRvvXxMC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE711OJkmh80cPF7Nv_JIof_qLC_uGGpA3348HdQqhChBFMudLYoGToj72JjXOSW1JKpKNH5FV7NAENHavUOr_vEBKlEJzosSGfixzbLHBCNH-5s13SKeMnNOD9-z0Dhs01ljmcje&source=gbs_api",
            "medium": "http://books.google.com/books/content?id=mYC3yRvvXxMC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73ALWJ3g-NIx7ymXZ4J1eWKGtwcItCHve8C16wKsHSElqyTjgBPLswJ8fY-HepFZWpjwE0i-vce8BSEG7RcXcC6TT_oO_-zpCvRiUaTg00lPTvcM4iPKx18V0Z6BUTB7Mr4tTWp&source=gbs_api",
            "large": "http://books.google.com/books/content?id=mYC3yRvvXxMC&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE71tYdeAj_HHDo8yYx7LdwrHK4U9Az_XBhSNLQKzO-cn8Hs_yzCLUSYjBcN0dTSTTD7n1mmQy9j6S0usjDYy-9ppvzH5aDgrR2AH_JsrjwUTV4fnl_i1Qm3eZ1K9rzBqNXcmrxrS&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=mYC3yRvvXxMC&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=mYC3yRvvXxMC&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=mYC3yRvvXxMC",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=mYC3yRvvXxMC&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "SYu-4-oO3h8C",
        "etag": "ZFMUWm8mE6s",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/SYu-4-oO3h8C",
        "volumeInfo": {
          "title": "Crime and Punishment",
          "authors": [
            "Fedor Mikhailovitch Dostoïevski",
            "Fyodor Dostoyevsky",
          ],
          "publisher": "Penguin Publishing Group",
          "publishedDate": "2003",
          "description": "<b>Nominated as one of America’s best-loved novels by PBS’s <i>The Great American Read</i></b><br><br>Raskolnikov, a destitute and desperate former student, wanders through the slums of St Petersburg and commits a random murder without remorse or regret. He imagines himself to be a great man, a Napoleon: acting for a higher purpose beyond conventional moral law. But as he embarks on a dangerous game of cat and mouse with a suspicious police investigator, Raskolnikov is pursued by the growing voice of his conscience and finds the noose of his own guilt tightening around his neck. Only Sonya, a downtrodden prostitute, can offer the chance of redemption.<p>This vivid translation by David McDuff has been acclaimed as the most accessible version of Dostoyevsky’s great novel, rendering its dialogue with a unique force and naturalism. This edition also includes a new chronology of Dostoyevsky’s life and work.</p>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0140449132",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780140449136",
            },
          ],
          "readingModes": {
            "text": true,
            "image": false,
          },
          "pageCount": 671,
          "printedPageCount": 922,
          "dimensions": {
            "height": "20.00 cm",
            "width": "12.90 cm",
            "thickness": "3.00 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Classics",
            "Fiction / Literary",
            "Fiction / Crime",
          ],
          "averageRating": 5,
          "ratingsCount": 1,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.4.2.0.preview.2",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=SYu-4-oO3h8C&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE71PTEorHdWLMPVefAEHMpXT0RnwhMXg48igIY_DNJRYLgDpvOyr9RrpuxB7v0lMfBPZy8-6lPRAXeayxovh6wu1VfWVBoxUmpdP-hDysO5OL7O2NYAEKaWVAydI6u0aVi6qGIIM&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=SYu-4-oO3h8C&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71fHoqnmwTP8uEBtBc-j4n9V2sh1WB_KcZTUIeQ4_hKvyF7ufL7P0Jp_xCOvviQtCTuncpsuddkR5RC2ILkGGZTOMmGyQZRcGqSkT5g93k5_A0VXgzQnitONS5yRbmSrw8OeoZ0&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=SYu-4-oO3h8C&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=SYu-4-oO3h8C&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=SYu-4-oO3h8C",
        },
        "layerInfo": {
          "layers": [
            {
              "layerId": "geo",
              "volumeAnnotationsVersion": "6",
            },
          ],
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": true,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=SYu-4-oO3h8C&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "d43uBQAAQBAJ",
        "etag": "Gh5rYZaSEqY",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/d43uBQAAQBAJ",
        "volumeInfo": {
          "title": "Persuasion",
          "subtitle": "An Annotated Edition",
          "authors": [
            "Jane Austen",
          ],
          "publisher": "Harvard University Press",
          "publishedDate": "2011-11-07",
          "description": "<p>Published posthumously with <i>Northanger Abbey</i> in 1817, <i>Persuasion</i> crowns Jane Austen's remarkable career. It is her most passionate and introspective love story. This richly illustrated and annotated edition brings her last completed novel to life with previously unmatched vitality. In the same format that so rewarded readers of <i>Pride and Prejudice: An Annotated Edition</i>, it offers running commentary on the novel (conveniently placed alongside Austen's text) to explain difficult words, allusions, and contexts, while bringing together critical observations and scholarship for an enhanced reading experience. The abundance of color illustrations allows the reader to see the characters, locations, clothing, and carriages of the novel, as well as the larger political and historical events that shape its action.</p><p>In his Introduction, distinguished scholar Robert Morrison examines the broken engagement between Anne Elliot and Frederick Wentworth, and the ways in which they wander from one another even as their enduring feelings draw them steadily back together. His notes<i> </i>constitute the most sustained critical commentary ever brought to bear on the novel and explicate its central conflicts as well as its relationship to Austen's other works, and to those of her major contemporaries, including Lord Byron, Walter Scott, and Maria Edgeworth.</p><p>Specialists, Janeites, and first-time readers alike will treasure this annotated and beautifully illustrated edition, which does justice to the elegance and depth of Jane Austen's time-bound and timeless story of loneliness, missed opportunities, and abiding love.</p>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0674049748",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780674049741",
            },
          ],
          "readingModes": {
            "text": false,
            "image": true,
          },
          "pageCount": 341,
          "printedPageCount": 358,
          "dimensions": {
            "height": "25.00 cm",
            "width": "2.40 cm",
            "thickness": "0.30 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Classics",
            "Fiction / Romance / General",
            "Literary Criticism / European / English, Irish, Scottish, Welsh",
          ],
          "averageRating": 4,
          "ratingsCount": 2,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "0.1.1.0.preview.1",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=d43uBQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70IWswO8-ykeEHfASzpXOq0t-BAHl4X35_GRqvj-MQB5yiIyRkomJy-u6GfKgLDw6Upr4PG6qh-2D24T0lw7RVfFPxkG7bIAYjLfCOZBNnsAH9Xwl8dYLZVs-VdZ4SbsthXyFhV&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=d43uBQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70di7_qHKfYGB9pmzm18lKH0QHGLLioFCsKHlgvrW2_oXyx9Jgp_1-xH3DAzSPr6vdeMypcV9Zq4xlbFO6SMAjpYEKa1q0AiYHpuXdejeutsX-dM6nNM8bB5XD9dCTuzryu_d8C&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=d43uBQAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE708tP6UKcKltwG3eVhIvfT1hweyUyQm85ej7z2hFJ4_cGIjDGG8cvE6oxa3YHIH5KWn_hCXEGpX_csFZDPIPKZ0VmoHIG8uhrVxN57caumw8OBYiqZWuvU3L_l3kyOa6rqq6WV0&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=d43uBQAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70Gsp9KDF_PDIa8utLeRTQqLlzXe8R10zy5H1P8xjdJhT9Nmb0SHVSz-7QBQbqOcP3l7vahZKK5Z0LqAzrII1Z4xWWOLJbr8ZMPEmBe6n3rP3TgZQCrdU339Ft6rkEhjwQvOJcY&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=d43uBQAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE71kqjeHUlMvXvYK1dxIMHEzher_wA33Ju5DbIz1GxgxIlBuPKmXuRjSBt1kOyEskQny2x9y-t5D2y6Ak4fxM3pIVpeBj0w2z6djgtIE45w9EnREEqPjTAktqk8d3Oy6IFgjdr31&source=gbs_api",
            "extraLarge": "http://books.google.com/books/publisher/content?id=d43uBQAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE72Vk2SMdGPZ9EcpEe6iW-MgxSTqN1N_qFfrXRfTd6ozKoml-1ZIFGmdtZT9NcEx6kfRLslydcLSN7LLD7Tb1E7RkTECwLco6XAdiiimkSONqkzbBBp2eGP7EgfwhtHjkF8yS8OT&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=d43uBQAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=d43uBQAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=d43uBQAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=d43uBQAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "G7s0EAAAQBAJ",
        "etag": "qaqBpVEYC0k",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/G7s0EAAAQBAJ",
        "volumeInfo": {
          "title": "To the Lighthouse",
          "authors": [
            "Virginia Woolf",
          ],
          "publisher": "Renard Press Limited",
          "publishedDate": "2021-06-24",
          "description": "<p>Described by Virginia Woolf herself as ‘easily the best of my books’, and by her husband Leonard as a ‘masterpiece’, To the Lighthouse, first published in 1927, is one of the milestones of Modernism. Set on the Isle of Skye, over a decade spanning the First World War, the narrative centres on the Ramsay family, and is framed by Mrs Ramsay’s promise to take a trip to the lighthouse the next day – a promise which isn’t to be fulfilled for a decade. Flowing from character to character and from year to year, the novel paints a moving portrait of love, loss and perception.</p><p>Bearing all the hallmarks of Woolf’s prose, with her delicate handling of the complexities of human relationships, To the Lighthouse has earned its reputation – frequently appearing in lists of the best novels of the twentieth century, it has lost not an iota of brilliance.</p><p><br></p>",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "1913724093",
            },
            {
              "type": "ISBN_13",
              "identifier": "9781913724092",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 224,
          "printedPageCount": 224,
          "dimensions": {
            "height": "19.80 cm",
            "width": "12.90 cm",
            "thickness": "1.30 cm",
          },
          "printType": "BOOK",
          "categories": [
            "Fiction / Classics",
            "Fiction / Family Life / General",
          ],
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=G7s0EAAAQBAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE70RqcYXc_jDRJ3InGL0wNYLVcyLKow4nHjtozRPXpSyV1OTx2HzPRz5Qi5NhwR5iVnwUxp_qYakGabGiGtOq2eW399H1dh-Phx-Dw6wBNElAXz_GkNuTHtWjsk5990EGwOlXwiy&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=G7s0EAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73JtixpL4qbKAzDyvGk02-nUNul7gIJx15m1QQYdODdtNgAEacXfpj7xv_ZwV-wsYxYImXZKLK8Yfk2_QgGIQFy3ctLRetsEhLt40A_f9B14HTOKRtsRqbRCFSz55FtKvFpPe-L&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=G7s0EAAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=G7s0EAAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=G7s0EAAAQBAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=G7s0EAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      },
    ],
  }, {
    name: "The Quarantine Club",
    host: {
      username: User.all[rand(25) + 1].username,
      first_name: User.all[rand(25) + 1].first_name,
      last_name: User.all[rand(25) + 1].last_name,
    },
    description: "A group of people who read together during quarantine",
    books: [
      {
        "kind": "books#volume",
        "id": "gV0ergEACAAJ",
        "etag": "nUTSBw6/wuE",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/gV0ergEACAAJ",
        "volumeInfo": {
          "title": "The Dream of the Red Chamber",
          "authors": [
            "Cao Xueqin",
          ],
          "publisher": "CreateSpace Independent Publishing Platform",
          "publishedDate": "2014-10-13",
          "description": "Being one of the four bestselling and greatest classics of Chinese history The Dream of the Red Chamber is one greatest fiction novel that has gained instant popularity. The book was written in the eighteenth century and is widely regarded as the epitome work portraying a widest array of characters. It is a semi-autobiographical book that also portrays rise of Qing Dynasty and fall of Cao's family as a powerful Chinese aristocrat.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "1502800594",
            },
            {
              "type": "ISBN_13",
              "identifier": "9781502800596",
            },
          ],
          "readingModes": {
            "text": false,
            "image": false,
          },
          "pageCount": 250,
          "printedPageCount": 250,
          "dimensions": {
            "height": "27.90 cm",
            "width": "21.60 cm",
            "thickness": "1.30 cm",
          },
          "printType": "BOOK",
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=gV0ergEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE70eGcAP4uozEAxRG79KjqNDEEqyj36y_fAO7XS9Kmk75vJuhjULznc2mE6mnm_178Yi75HXMmmjF00vDDAM5_JK-l_HGYoiVme81-M15lzeVgHJv1xDFaMjwZELz0R3p6Tct3pP&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=gV0ergEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73f6tnLWC8svlAgMV1TjLxHWvkLvzPCBpp2AQA4SJgoTrg6OBkgfahWomNHsfRoN9Vp_GYoZxDSecE0J-uCG6Y2uvjY-R1Rdqd9BiGysSN9O7QvdZ0OiUwGrAB1k7jFEmjPp02e&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=gV0ergEACAAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=gV0ergEACAAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=gV0ergEACAAJ",
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false,
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": false,
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=gV0ergEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false,
        },
      }, {
        "kind": "books#volume",
        "id": "nNjTDwAAQBAJ",
        "etag": "QtxyHcbgSnU",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/nNjTDwAAQBAJ",
        "volumeInfo": {
          "title": "The Midnight Library",
          "subtitle": "A Novel",
          "authors": [
            "Matt Haig",
          ],
          "publisher": "Penguin",
          "publishedDate": "2020-09-29",
          "description": "<b><b><b><b>The #1 <i>New York Times </i>bestselling WORLDWIDE phenomenon </b><br> <br> <b>Winner of the Goodreads Choice Award for Fiction | A Good Morning America Book Club Pick | <i>Independent (</i>London) Ten Best Books of the Year</b><br> <br> <b>\"A feel-good book guaranteed to lift your spirits.\"<i>—The Washington Post</i> <br><br> The dazzling reader-favorite about the choices that go into a life well lived, from the acclaimed author of <i>How To Stop Time </i>and<i> The Comfort Book.</i></b><br> <b> </b></b></b></b><br>Somewhere out beyond the edge of the universe there is a library that contains an infinite number of books, each one the story of another reality. One tells the story of your life as it is, along with another book for the other life you could have lived if you had made a different choice at any point in your life. While we all wonder how our lives might have been, what if you had the chance to go to the library and see for yourself? Would any of these other lives truly be better?<br><br>In <i>The Midnight Library</i>, Matt Haig's enchanting blockbuster novel, Nora Seed finds herself faced with this decision. Faced with the possibility of changing her life for a new one, following a different career, undoing old breakups, realizing her dreams of becoming a glaciologist; she must search within herself as she travels through the Midnight Library to decide what is truly fulfilling in life, and what makes it worth living in the first place.",
          "industryIdentifiers": [
            {
              "type": "ISBN_10",
              "identifier": "0525559485",
            },
            {
              "type": "ISBN_13",
              "identifier": "9780525559481",
            },
          ],
          "readingModes": {
            "text": true,
            "image": false,
          },
          "pageCount": 304,
          "printedPageCount": 308,
          "printType": "BOOK",
          "categories": [
            "Fiction / Women",
            "Fiction / Science Fiction / Time Travel",
            "Fiction / Literary",
          ],
          "averageRating": 4,
          "ratingsCount": 126,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": true,
          "contentVersion": "1.5.5.0.preview.2",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false,
          },
          "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/publisher/content?id=nNjTDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE708cMtwo8s2kDXK2mDea5ZgOAccPLq-1JsmU6xVeo218NWmtI1lCX9U9SqodB958vu15FU1j145BQwdISGC1RV4y5COCNG5fGqK0QoKrh-rNLwCF7CpytaQ3pEM86A060nyB3KL&source=gbs_api",
            "thumbnail": "http://books.google.com/books/publisher/content?id=nNjTDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71XDEqv7wQFT_ZjtvR4V2Qmvb_SFTnT4g1tHEypHbIKQ_9otkB7WOeoEOxRzIyqR5gG3KqHwsmnPKf8q1CDw1wbHIbbuKsWfo_peOsiZraEVmszOtgSI9Ic-6FEtW9GB3zvalIJ&source=gbs_api",
            "small": "http://books.google.com/books/publisher/content?id=nNjTDwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70xYc4tqG3R19ULKcBpb6FGs3Ku4l-CqCCVTOrHffboy5WRszx11XuLMPSCHRvUG_I2aq_APzQUXlRTgAKswSzJiE43q64LxKxZf9Tl4w47hr5lZs4cuonQ_tjcwAADFvGbeRbt&source=gbs_api",
            "medium": "http://books.google.com/books/publisher/content?id=nNjTDwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73-OrglmhYvgwEnCiUaBcGdMavOLHAaQit9VsrDsVnAV0OHVT9IMknnmJRFoXSIvKyMOeVJxM-55UdhNE5hWWq_cbUSjfhAXBi5fc7bXExjlUm4JM8iDirGR1R7-m0LQze95ykl&source=gbs_api",
            "large": "http://books.google.com/books/publisher/content?id=nNjTDwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE72XG7Dxmo2ZtjVFtj-Lm4G2ERyHURUk_4U3Xr_4XAY7GpwxCO1-oGEm2cWjel1udGF26Yhyc22-zvIXuhrEne-N58uoScpkd57f155ovO0sM__Md9ext5_GphbEm6B77I4vgUwu&source=gbs_api",
            "extraLarge": "http://books.google.com/books/publisher/content?id=nNjTDwAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE73G_Fka2SKqiT5isvUTLoxHeheJLrU6k5O2JgoN1gygoDx8eLYAl2MdhyRWXoNqXwNAl6UEMsbASlEVbVECtcTkC6X5PpiX_wAGlbaVZzb8q0lQNfgh45NdEfzVtNm76_hKgnkz&source=gbs_api",
          },
          "language": "en",
          "previewLink": "http://books.google.com/books?id=nNjTDwAAQBAJ&hl=&source=gbs_api",
          "infoLink": "https://play.google.com/store/books/details?id=nNjTDwAAQBAJ&source=gbs_api",
          "canonicalVolumeLink": "https://play.google.com/store/books/details?id=nNjTDwAAQBAJ",
        },
        "layerInfo": {
          "layers": [
            {
              "layerId": "geo",
              "volumeAnnotationsVersion": "5",
            },
          ],
        },
        "saleInfo": {
          "country": "US",
          "saleability": "FOR_SALE",
          "isEbook": true,
          "listPrice": {
            "amount": 7.99,
            "currencyCode": "USD",
          },
          "retailPrice": {
            "amount": 7.99,
            "currencyCode": "USD",
          },
          "buyLink": "https://play.google.com/store/books/details?id=nNjTDwAAQBAJ&rdid=book-nNjTDwAAQBAJ&rdot=1&source=gbs_api",
          "offers": [
            {
              "finskyOfferType": 1,
              "listPrice": {
                "amountInMicros": 7990000,
                "currencyCode": "USD",
              },
              "retailPrice": {
                "amountInMicros": 7990000,
                "currencyCode": "USD",
              },
              "giftable": true,
            },
          ],
        },
        "accessInfo": {
          "country": "US",
          "viewability": "PARTIAL",
          "embeddable": true,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.com/books/download/The_Midnight_Library-sample-epub.acsm?id=nNjTDwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api",
          },
          "pdf": {
            "isAvailable": false,
          },
          "webReaderLink": "http://play.google.com/books/reader?id=nNjTDwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "SAMPLE",
          "quoteSharingAllowed": false,
        },
      },
    ],
  },
])

Clubuser.create!(user_id: 1, bookclub_id: 1)

for bookclub in Bookclub.all
  books = bookclub.books
  for book in books
    Review.create!([
      {
        user_id: User.all[rand(User.all.length)].id,
        rating: (rand(5)+1),
        text: Faker::Lorem.paragraph(sentence_count: rand(7), supplemental: true),
        date: Faker::Date.between(from: 200.days.ago, to: Date.today),
        book_id: book["id"],
        book_name: book["volumeInfo"]["title"],
        book_author: book["volumeInfo"]["authors"][0],
      },
      {
        user_id: User.all[rand(User.all.length)].id,
        rating: (rand(5)+1),
        text: Faker::Lorem.paragraph(sentence_count: rand(7), supplemental: true),
        date: Faker::Date.between(from: 200.days.ago, to: Date.today),
        book_id: book["id"],
        book_name: book["volumeInfo"]["title"],
        book_author: book["volumeInfo"]["authors"][0],
      },
      {
        user_id: User.all[rand(User.all.length)].id,
        rating: (rand(5)+1),
        text: Faker::Lorem.paragraph(sentence_count: rand(7), supplemental: true),
        date: Faker::Date.between(from: 200.days.ago, to: Date.today),
        book_id: book["id"],
        book_name: book["volumeInfo"]["title"],
        book_author: book["volumeInfo"]["authors"][0],
      },
      {
        user_id: User.all[rand(User.all.length)].id,
        rating: (rand(5)+1),
        text: Faker::Lorem.paragraph(sentence_count: rand(7), supplemental: true),
        date: Faker::Date.between(from: 200.days.ago, to: Date.today),
        book_id: book["id"],
        book_name: book["volumeInfo"]["title"],
        book_author: book["volumeInfo"]["authors"][0],
      },
    ])
  end
end

emojis = ["🎉", "👍", "❤️", "😄"]
for user in User.all[1..User.all.length]
  Clubuser.create!([
    {
      user_id: user.id,
      bookclub_id: Bookclub.all[rand(5)].id,
    },
  ])
  Reaction.create!([
    {
      review_id: Review.all[rand(Review.all.length)].id,
      user_id: user.id,
      emoji: emojis[rand(4)],
    },
    {
      review_id: Review.all[rand(Review.all.length)].id,
      user_id: user.id,
      emoji: emojis[rand(4)],
    },
    {
      review_id: Review.all[rand(Review.all.length)].id,
      user_id: user.id,
      emoji: emojis[rand(4)],
    },
    {
      review_id: Review.all[rand(Review.all.length)].id,
      user_id: user.id,
      emoji: emojis[rand(4)],
    },
  ])
end

puts "Completed Seeding Data"