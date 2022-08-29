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
  {
    username: "laluna",
    first_name: "oliver",
    last_name: "M",
    password: "12345",
  },
  {
    username: "laurel",
    first_name: "Lauren",
    last_name: "L",
    password: "12345",
  },
  {
    username: "simoneB",
    first_name: "simone",
    last_name: "B",
    password: "12345",
  },
])

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
                "Gayle Laakmann McDowell"
            ],
            "publisher": "CareerCup, LLC",
            "publishedDate": "2015",
            "description": "I am not a recruiter. I am a software engineer. And as such, I know what it's like to be asked to whip up brilliant algorithms on the spot and then write flawless code on a whiteboard. I've been through this as a candidate and as an interviewer. Cracking the Coding Interview, 6th Edition is here to help you through this process, teaching you what you need to know and enabling you to perform at your very best. I've coached and interviewed hundreds of software engineers. The result is this book. Learn how to uncover the hints and hidden details in a question, discover how to break down a problem into manageable chunks, develop techniques to unstick yourself when stuck, learn (or re-learn) core computer science concepts, and practice on 189 interview questions and solutions. These interview questions are real; they are not pulled out of computer science textbooks. They reflect what's truly being asked at the top companies, so that you can be as prepared as possible. WHAT'S INSIDE? - 189 programming interview questions, ranging from the basics to the trickiest algorithm problems. - A walk-through of how to derive each solution, so that you can learn how to get there yourself. - Hints on how to solve each of the 189 questions, just like what you would get in a real interview. - Five proven strategies to tackle algorithm questions, so that you can solve questions you haven't seen. - Extensive coverage of essential topics, such as big O time, data structures, and core algorithms. - A behind the scenes look at how top companies like Google and Facebook hire developers. - Techniques to prepare for and ace the soft side of the interview: behavioral questions. - For interviewers and companies: details on what makes a good interview question and hiring process.",
            "industryIdentifiers": [
                {
                    "type": "ISBN_10",
                    "identifier": "0984782850"
                },
                {
                    "type": "ISBN_13",
                    "identifier": "9780984782857"
                }
            ],
            "readingModes": {
                "text": false,
                "image": false
            },
            "pageCount": 696,
            "printedPageCount": 696,
            "dimensions": {
                "height": "23.00 cm",
                "width": "17.90 cm",
                "thickness": "3.60 cm"
            },
            "printType": "BOOK",
            "categories": [
                "Business & Economics / Careers / Job Hunting",
                "Computers / Programming / General",
                "Computers / Software Development & Engineering / General"
            ],
            "averageRating": 3,
            "ratingsCount": 2,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": false,
            "contentVersion": "preview-1.0.0",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/content?id=jD8iswEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE70ojhFl0-vWuqJ_cV51qTlJ-eZViOCCDvPvzLbFfOG_XPAmCwv7zhSZ6GmYv8oLlYejbGBC6abP1D6epvdPVKl8X04Kde6xU9A14AVgME8KKukjK3pB8jpC_F7qhEcKxkevhwZP&source=gbs_api",
                "thumbnail": "http://books.google.com/books/content?id=jD8iswEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73X0oMMvk9q9Wvhsxxtbsaz3MXzhVyTWPNhsBUF4rhHwMJAjcDg7N7nVGl4jtTGf19E_YTgjiMaou-A9exbA6fVrbKlQez-BByNtLMOLKsROrc6gJwo75XBWuFRNanX3IgyIgP8&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=jD8iswEACAAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=jD8iswEACAAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=jD8iswEACAAJ"
        },
        "saleInfo": {
            "country": "US",
            "saleability": "NOT_FOR_SALE",
            "isEbook": false
        },
        "accessInfo": {
            "country": "US",
            "viewability": "NO_PAGES",
            "embeddable": false,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": false
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=jD8iswEACAAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "NONE",
            "quoteSharingAllowed": false
        }
    },{
        "kind": "books#volume",
        "id": "yzkzEAAAQBAJ",
        "etag": "Ry1Cm780xuo",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/yzkzEAAAQBAJ",
        "volumeInfo": {
            "title": "Grokking Algorithms",
            "subtitle": "An illustrated guide for programmers and other curious people",
            "authors": [
                "Aditya Bhargava"
            ],
            "publisher": "Simon and Schuster",
            "publishedDate": "2016-05-12",
            "description": "<b>\"This book does the impossible: it makes math fun and easy!\"</b> - <i>Sander Rossel, COAS Software Systems</i><br> <br> <i>Grokking Algorithms</i> is a fully illustrated, friendly guide that teaches you how to apply common algorithms to the practical problems you face every day as a programmer. You'll start with sorting and searching and, as you build up your skills in thinking algorithmically, you'll tackle more complex concerns such as data compression and artificial intelligence. Each carefully presented example includes helpful diagrams and fully annotated code samples in Python.<br> <br> Learning about algorithms doesn't have to be boring! Get a sneak peek at the fun, illustrated, and friendly examples you'll find in Grokking Algorithms on Manning Publications' YouTube channel.<br> <br> Continue your journey into the world of algorithms with <i>Algorithms in Motion</i>, a practical, hands-on video course available exclusively at Manning.com (www.manning.com/livevideo/algorithms-?in-motion).<br> <br> Purchase of the print book includes a free eBook in PDF, Kindle, and ePub formats from Manning Publications.<br> <br> <b>About the Technology</b><br> <br> An algorithm is nothing more than a step-by-step procedure for solving a problem. The algorithms you'll use most often as a programmer have already been discovered, tested, and proven. If you want to understand them but refuse to slog through dense multipage proofs, this is the book for you. This fully illustrated and engaging guide makes it easy to learn how to use the most important algorithms effectively in your own programs.<br> <br> <b>About the Book</b><br> <br> <i>Grokking Algorithms</i> is a friendly take on this core computer science topic. In it, you'll learn how to apply common algorithms to the practical programming problems you face every day. You'll start with tasks like sorting and searching. As you build up your skills, you'll tackle more complex problems like data compression and artificial intelligence. Each carefully presented example includes helpful diagrams and fully annotated code samples in Python. By the end of this book, you will have mastered widely applicable algorithms as well as how and when to use them.<br> <br> <b>What's Inside</b><br> <br> <br> <br> <br> <br> <br> <br> <br> <ul> <li>Covers search, sort, and graph algorithms</li> <li>Over 400 pictures with detailed walkthroughs</li> <li>Performance trade-offs between algorithms</li> <li>Python-based code samples</li> </ul> <br> <br><br> <br> <br> <b>About the Reader</b><br> <br> This easy-to-read, picture-heavy introduction is suitable for self-taught programmers, engineers, or anyone who wants to brush up on algorithms.<br> <br> <b>About the Author</b><br> <br> <b>Aditya Bhargava</b> is a Software Engineer with a dual background in Computer Science and Fine Arts. He blogs on programming at adit.io.<br> <br> <b>Table of Contents</b><br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br><br> <br> <br> <br> <br><br> <br> <ol> <li>Introduction to algorithms</li> <li>Selection sort</li> <li>Recursion</li> <li>Quicksort</li> <li>Hash tables</li> <li>Breadth-first search</li> <li>Dijkstra's algorithm</li> <li>Greedy algorithms</li> <li>Dynamic programming</li> <li>K-nearest neighbors</li> </ol> <br><br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>",
            "industryIdentifiers": [
                {
                    "type": "ISBN_10",
                    "identifier": "1638353344"
                },
                {
                    "type": "ISBN_13",
                    "identifier": "9781638353348"
                }
            ],
            "readingModes": {
                "text": true,
                "image": false
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
                "Computers / User Interfaces"
            ],
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": true,
            "contentVersion": "0.1.1.0.preview.2",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72vFHRFZwccoHML_p3oVs6lWyybW6gnNdSfpbyP7hQyh5NTAhflwA-DrWaZSGCIK-iLBNCSolzJwFzy7d-hS8c9JYoizka2nqoW-TWSTr08jmJs9KcwH0ifQGoPoTRqb1J-fg_F&source=gbs_api",
                "thumbnail": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71K1WKqQC8V4x8UOh_mj8RYOjXUxnm9Em2HM1BwNgel6If4DKw3iu_z8vof_w77kU2aaA6NL6xQ8RAEtxxIKrZxHcqfbEDVsY9SDuc8lHKaaQiR_55GN3F8RFW_K5gm0goL36vM&source=gbs_api",
                "small": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72rQn9gGr1pms3s-xwdcToVV0jlqZHH9npJlXsHqt-4AalTJkr0_hZIPfYf8KJ_nhqBsFk0P3Lc25rRz7mB0f3OwX-B275qMVfyMvaGlt2L7bgFQc7UbaGfY4HVbnTL3FdxgxHl&source=gbs_api",
                "medium": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72YcsPGbL8L2JDBp2EN2LdwTW-0iIoClc55IgHn9fI__uF9mbcaMwxF4j9Un5Z6P68NWg0I88IDuMQUX5jRlBt-pMO2VLChockT8tDyAcgHm229Zn0NWVUYK1VILg0MacJXN749&source=gbs_api",
                "large": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE73CT4okZMgQccMZ9AvFulosguwn3C0FTxG35_jvc35DHFieZyjB7_WpaiOySM0Vb7YFg5b_UfEpoT9OEB6hp9kjeqY-4HhxvweqP3nMcj6v2W-S3MwKHOyRyKfkrFgIDRBXGV5D&source=gbs_api",
                "extraLarge": "http://books.google.com/books/publisher/content?id=yzkzEAAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70br8VNKwskp2T5Top4w4cHT4q5HFUvNP_ecXQVmGmX4p3YxDKH2VQRlcMgemrsWMMSLr90rQV2I1kxQdhagmalr-e2FUWmnuCJBAWNQqQx6OD4ZDIUGhLPMubaEwsqd12EcoZm&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=yzkzEAAAQBAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=yzkzEAAAQBAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=yzkzEAAAQBAJ"
        },
        "layerInfo": {
            "layers": [
                {
                    "layerId": "geo",
                    "volumeAnnotationsVersion": "2"
                }
            ]
        },
        "saleInfo": {
            "country": "US",
            "saleability": "FOR_SALE",
            "isEbook": true,
            "listPrice": {
                "amount": 34.99,
                "currencyCode": "USD"
            },
            "retailPrice": {
                "amount": 34.99,
                "currencyCode": "USD"
            },
            "buyLink": "https://play.google.com/store/books/details?id=yzkzEAAAQBAJ&rdid=book-yzkzEAAAQBAJ&rdot=1&source=gbs_api",
            "offers": [
                {
                    "finskyOfferType": 1,
                    "listPrice": {
                        "amountInMicros": 34990000,
                        "currencyCode": "USD"
                    },
                    "retailPrice": {
                        "amountInMicros": 34990000,
                        "currencyCode": "USD"
                    },
                    "giftable": true
                }
            ]
        },
        "accessInfo": {
            "country": "US",
            "viewability": "PARTIAL",
            "embeddable": true,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED_FOR_ACCESSIBILITY",
            "epub": {
                "isAvailable": true,
                "acsTokenLink": "http://books.google.com/books/download/Grokking_Algorithms-sample-epub.acsm?id=yzkzEAAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=yzkzEAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "SAMPLE",
            "quoteSharingAllowed": false
        }
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
      },{
        "kind": "books#volume",
        "id": "8bdcAAAAQBAJ",
        "etag": "zUYcU01jfQE",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/8bdcAAAAQBAJ",
        "volumeInfo": {
            "title": "Memórias póstumas de Brás Cubas",
            "authors": [
                "Machado de Assis"
            ],
            "publisher": "Google, Inc.",
            "publishedDate": "1963",
            "readingModes": {
                "text": true,
                "image": true
            },
            "pageCount": 240,
            "printedPageCount": 395,
            "dimensions": {
                "height": "21.00 cm"
            },
            "printType": "BOOK",
            "averageRating": 5,
            "ratingsCount": 3,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": false,
            "contentVersion": "0.2.2.0.full.3",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73HEdvr3asDMqwvC-dAfQLk5oWPzQ3VeluwZRmqPVAe7Db-WhdhV6pBnQwxeP-yoESGfHbU3BAVt5aS5IzjzvfEBaQXLbfHE9DRgvw_ZAKQ-hjO-QkI1ednRLmcIKbZXbGDzswA&source=gbs_api",
                "thumbnail": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70mro3kE-CxRMTGQ4B5j34_VCE9iyuAmo8mwZuXceNXpCgw5t6vbb2XPUHo_uldJycB2kBh1ls7UVjhNcuQdc396Z5BWM-WV2y_6xtxyf-caF-G49aSbtASojJ6wlvarcnFsLBo&source=gbs_api",
                "small": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73vxJkUEP1KE0PozXkPkco60lhl4wqC5eTBJqR0tbuPIaXRIuKvDXj9wYN51iXRNdUoc7G53oaBcWEIqSovy16g_R8tjbhMLfR6wp_TLn7fPIczw2iofNS9oMsewDZrXNLCmMU3&source=gbs_api",
                "medium": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71hJ3tRHysHffSCpW0ESvzlkzDxAHIwUsGO0ocyPFUMryhYfBua35ChL0Gew3bnRPA4XJHvww60wgjNPNSo0mzJzf7W7yRg-tMBYfZdzfuLY9NSlI28l8dcssiT4Fpkhg0VwH6_&source=gbs_api",
                "large": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE72Tqt73E81cm-e2V25-RLuNd8YRxUVWtJA7iKEyZBvzqHW7F5G1LnIp5W8oNv-eX9dbnlJsM2JLnWlf1BRJyLYO5M4NrsQ2cjYeSAVv6VtUFb5dvA-KPPR5ZWe5oi3PrZcQ4xD-&source=gbs_api",
                "extraLarge": "http://books.google.com/books/publisher/content?id=8bdcAAAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE73w6hjGv5y4SloufKjGNMrYCyEZBCI4R83C4IXf5mNhQ_Nu2aDj3IzP5VWd7rCluITdPF3LLlATTDlLFW_X_J9N0C6_1kCRIA0Q6gLoXXRKZqtN0Lb6ocFGY7nJqINgcghd6xyv&source=gbs_api"
            },
            "language": "pt-BR",
            "previewLink": "http://books.google.com/books?id=8bdcAAAAQBAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=8bdcAAAAQBAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=8bdcAAAAQBAJ"
        },
        "layerInfo": {
            "layers": [
                {
                    "layerId": "geo",
                    "volumeAnnotationsVersion": "3"
                }
            ]
        },
        "saleInfo": {
            "country": "US",
            "saleability": "FREE",
            "isEbook": true,
            "buyLink": "https://play.google.com/store/books/details?id=8bdcAAAAQBAJ&rdid=book-8bdcAAAAQBAJ&rdot=1&source=gbs_api"
        },
        "accessInfo": {
            "country": "US",
            "viewability": "ALL_PAGES",
            "embeddable": true,
            "publicDomain": true,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": true,
                "downloadLink": "http://books.google.com/books/download/Mem%C3%B3rias_p%C3%B3stumas_de_Br%C3%A1s_Cubas.epub?id=8bdcAAAAQBAJ&hl=&output=epub&source=gbs_api"
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=8bdcAAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "SAMPLE",
            "quoteSharingAllowed": false
        }
    },{
        "kind": "books#volume",
        "id": "QxbFBAAAQBAJ",
        "etag": "OHAe0CSPr/E",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/QxbFBAAAQBAJ",
        "volumeInfo": {
            "title": "The Three-Body Problem",
            "authors": [
                "Cixin Liu"
            ],
            "publisher": "Macmillan",
            "publishedDate": "2014-11-11",
            "description": "<p><b>Soon to be a Netflix Original Series!<br></b><br><b>An NPR Best Book of the Decade<br></b><br><b>Winner of the Hugo Award for Best Novel</b><br><br>“<i>War of the Worlds</i> for the 21st century.” – <i>Wall Street Journal</i><br><b><i><br>The Three-Body Problem </i>is the first chance for English-speaking readers to experience the Hugo Award-winning phenomenon from China's most beloved science fiction author, Liu Cixin.</b><br><br>Set against the backdrop of China's Cultural Revolution, a secret military project sends signals into space to establish contact with aliens. An alien civilization on the brink of destruction captures the signal and plans to invade Earth. Meanwhile, on Earth, different camps start forming, planning to either welcome the superior beings and help them take over a world seen as corrupt, or to fight against the invasion. The result is a science fiction masterpiece of enormous scope and vision.<br><br><b>The Three-Body Problem Series</b><br><i>The Three-Body Problem</i><br><i>The Dark Forest</i><br><i>Death's End</i><br><br><b>Other Books</b><br><i>Ball Lightning</i> <br><i>Supernova Era<br>To Hold Up The Sky</i> (forthcoming)</p>",
            "industryIdentifiers": [
                {
                    "type": "ISBN_10",
                    "identifier": "0765377063"
                },
                {
                    "type": "ISBN_13",
                    "identifier": "9780765377067"
                }
            ],
            "readingModes": {
                "text": false,
                "image": false
            },
            "pageCount": 399,
            "printedPageCount": 400,
            "dimensions": {
                "height": "25.00 cm",
                "width": "16.10 cm",
                "thickness": "3.60 cm"
            },
            "printType": "BOOK",
            "categories": [
                "Fiction / Science Fiction / General",
                "Fiction / Science Fiction / Hard Science Fiction",
                "Fiction / Science Fiction / Alien Contact",
                "Fiction / World Literature / China / 21st Century"
            ],
            "averageRating": 3.5,
            "ratingsCount": 125,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": false,
            "contentVersion": "0.4.0.0.preview.0",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73r6O0ma5fnAWeoui12_am8-SgsNA_afLn85dqq9i_FuK5978Hc-WhmjeDpHdFWYMi1NWnqjWTIEkPw4fx_MBaLzvyB6wml3RNjytbLvpT6drsaEWfqiL-whmR--CrY0eX6r0Bh&source=gbs_api",
                "thumbnail": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71p5OuB1MH3aDM5z4lyhd0Idd6a4OKSRnI9WE6higwl3RUqsyGIiQxElyFk10y9-CHhbefv-ZI7JvEiV7OVTVO4vQxDbvUJ2oCuSTIg_VGOv3_nCeDmPJ0XgowtvcDPus4yUSzK&source=gbs_api",
                "small": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73W0l2edD4L4DrrJZWgwX4G1YxRAKr6EGZR5jFT0TnQ9xZyBDYSRjP15JK9qaGvWctLZCCmJeeZuMhRMwdpIBuWwHkCVI7LYTjYN6JX0O5bBBxFUUahbSq-_pIfT5EZh240gbeu&source=gbs_api",
                "medium": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70wqeEotk3f3L_cO13BkdB9gusyRSGxookfZmKsYYIczTzjFbL4Q5G2lzI7fEFukyGXn3FdCAxtH8t5MFGum1eIbLqzZ2nVG5MDWpwUne03Kzx8CCkG5hNaEwwY2H9S4fx1EMA3&source=gbs_api",
                "large": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE70IXom0jCVwfST9dYWTBa5lRZFKQZNdH-YM7wvpiCRzjOoeKi9lX3GA4lW2dgCL22X-58q1ngr72X4gQ0CESdvJQBDkqdudROzzHaHMH8HCQlCRdk1heOXd3brBw81C74zxTZlr&source=gbs_api",
                "extraLarge": "http://books.google.com/books/publisher/content?id=QxbFBAAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70zseNexuuOF2O_AM11bAhR-uZyIzyI5D0476YzzsbhmyCGTdiY0aScJ73QKZjLl6A77HkvzMOqo1sJ7N-eMLRgkaCx85eQ44oQZ8akciXaLX3EBmuKhB8gCbQh04iDWZEM7a-t&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=QxbFBAAAQBAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=QxbFBAAAQBAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=QxbFBAAAQBAJ"
        },
        "saleInfo": {
            "country": "US",
            "saleability": "NOT_FOR_SALE",
            "isEbook": false
        },
        "accessInfo": {
            "country": "US",
            "viewability": "PARTIAL",
            "embeddable": true,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": false
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=QxbFBAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "SAMPLE",
            "quoteSharingAllowed": false
        }
    },{
        "kind": "books#volume",
        "id": "dsznmgEACAAJ",
        "etag": "twSUyaajCBA",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/dsznmgEACAAJ",
        "volumeInfo": {
            "title": "Pride & Prejudice",
            "authors": [
                "Jane Austen"
            ],
            "publisher": "Fingerprint Classics",
            "publishedDate": "2013",
            "industryIdentifiers": [
                {
                    "type": "ISBN_10",
                    "identifier": "8172344503"
                },
                {
                    "type": "ISBN_13",
                    "identifier": "9788172344504"
                }
            ],
            "readingModes": {
                "text": false,
                "image": false
            },
            "pageCount": 328,
            "printedPageCount": 328,
            "dimensions": {
                "height": "22.00 cm"
            },
            "printType": "BOOK",
            "averageRating": 5,
            "ratingsCount": 1,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": false,
            "contentVersion": "preview-1.0.0",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/content?id=dsznmgEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE70B-YXUoemx-38lT9UISqJ1oGIxnyIbhZvtmLI5kMyPoLnmPOpBTOLxSCgIKT0PO4PvWtT2O2PMsG_G1kWkXNrV4yQCdgwYWAH_8jYxwU__YQA-q50HDdLgnKuLFONXrlXYsFiD&source=gbs_api",
                "thumbnail": "http://books.google.com/books/content?id=dsznmgEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72kYs7Xx9L66tP8CLBxdv8p8t7ZVs9G6u8NSdcDiVkuXKdpZu1jgTXfmNTIEj6DeZBhphG2y7IpJ53xn671MOfp3RY3QVQk282NemWaDgkKAoLxJax-kMpj1SUSzzWCgrVY_vTG&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=dsznmgEACAAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=dsznmgEACAAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=dsznmgEACAAJ"
        },
        "saleInfo": {
            "country": "US",
            "saleability": "NOT_FOR_SALE",
            "isEbook": false
        },
        "accessInfo": {
            "country": "US",
            "viewability": "NO_PAGES",
            "embeddable": false,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": false
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=dsznmgEACAAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "NONE",
            "quoteSharingAllowed": false
        }
    },{
        "kind": "books#volume",
        "id": "iCzQ4z02cFYC",
        "etag": "Y53MO5LMuxM",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/iCzQ4z02cFYC",
        "volumeInfo": {
            "title": "The Diving Bell and the Butterfly",
            "authors": [
                "Jean-Dominique Bauby"
            ],
            "publisher": "Knopf Doubleday Publishing Group",
            "publishedDate": "2008-03-06",
            "description": "<b>A triumphant memoir by the former editor-in-chief of French <i>Elle</i> that reveals an indomitable spirit and celebrates the liberating power of consciousness. </b><br><br> In 1995, Jean-Dominique Bauby was the editor-in-chief of French Elle, the father of two young children, a 44-year-old man known and loved for his wit, his style, and his impassioned approach to life. By the end of the year he was also the victim of a rare kind of stroke to the brainstem. <br><br> After 20 days in a coma, Bauby awoke into a body which had all but stopped working: only his left eye functioned, allowing him to see and, by blinking it, to make clear that his mind was unimpaired. Almost miraculously, he was soon able to express himself in the richest detail: dictating a word at a time, blinking to select each letter as the alphabet was recited to him slowly, over and over again. In the same way, he was able eventually to compose this extraordinary book. <br><br> By turns wistful, mischievous, angry, and witty, Bauby bears witness to his determination to live as fully in his mind as he had been able to do in his body. He explains the joy, and deep sadness, of seeing his children and of hearing his aged father's voice on the phone. In magical sequences, he imagines traveling to other places and times and of lying next to the woman he loves. Fed only intravenously, he imagines preparing and tasting the full flavor of delectable dishes. Again and again he returns to an \"inexhaustible reservoir of sensations,\" keeping in touch with himself and the life around him. <br><br> Jean-Dominique Bauby died two days after the French publication of <i>The Diving Bell and the Butterfly</i>. This book is a lasting testament to his life.",
            "industryIdentifiers": [
                {
                    "type": "ISBN_10",
                    "identifier": "0307454835"
                },
                {
                    "type": "ISBN_13",
                    "identifier": "9780307454836"
                }
            ],
            "readingModes": {
                "text": true,
                "image": true
            },
            "pageCount": 146,
            "printedPageCount": 146,
            "printType": "BOOK",
            "categories": [
                "Biography & Autobiography / Editors, Journalists, Publishers",
                "Biography & Autobiography / Personal Memoirs",
                "Self-Help / Death, Grief, Bereavement"
            ],
            "averageRating": 4,
            "ratingsCount": 98,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": true,
            "contentVersion": "0.3.3.0.preview.3",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/content?id=iCzQ4z02cFYC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70lq-nT8rK2oBtMrcnp4IACpRrGE3kRVdoafNCIYIY2huCkz7WCgqeANDTdNRt2Z0MrSDtgV8HTJAiZY_L7VrRYEN6kw_8fka3QagFKhzHfu-FjViWJm4M5aqb09kyYre3CUC-j&source=gbs_api",
                "thumbnail": "http://books.google.com/books/content?id=iCzQ4z02cFYC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71xZtxVjWJzFAPu4fKvjiAJkf0Rm_Gx3lEQw-WRoEj6ldAa5u5ZAgaLcJlF8eEzqZdZM--qp_wxHRkDsKzaAalwSp4UEyLXIVyHMTAVfGgQHconAWO3GtoN-KQW9coXGzkS7uqe&source=gbs_api",
                "small": "http://books.google.com/books/content?id=iCzQ4z02cFYC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72HuaUdwhtiYjZ1ZOeWgBWy39mB-KcBAXEDukBfTQ2YwM3m6Gn-fl9qRTCUKs5sNqQCxyXF-KNDVNDSFTmQyQPB2nx5lweQ4-Nxsc33ZEC-aEIZsLzr07cR9E3DQ0LX2zuK2p0_&source=gbs_api",
                "medium": "http://books.google.com/books/content?id=iCzQ4z02cFYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70R1flpSBtr5IoNaC08vppUdQbfj8_DeIjqUwgqbPClgxc0Bdc7WLVzchNGCmFMMhM7-wVAcqOE2ZmVioB3zIkmYibj-qNjVmvR430gVB9lq70JcKktpJIsJmEgLiO-I1Lw-Hzx&source=gbs_api",
                "large": "http://books.google.com/books/content?id=iCzQ4z02cFYC&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE73zykMyNNEU5WAiVKV4DyiuLrcDsarJm4CpGKuokWB5gnlFwYr5qBqgb9Rpspczj5jCi2Vc3suLTvHkAS3QvQBLKX50ygkM820k4q3Kp1K9bd1Uxg9EyPgdFx-KL85aIvPYKL4K&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=iCzQ4z02cFYC&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=iCzQ4z02cFYC&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=iCzQ4z02cFYC"
        },
        "layerInfo": {
            "layers": [
                {
                    "layerId": "geo",
                    "volumeAnnotationsVersion": "8"
                }
            ]
        },
        "saleInfo": {
            "country": "US",
            "saleability": "FOR_SALE",
            "isEbook": true,
            "listPrice": {
                "amount": 11.99,
                "currencyCode": "USD"
            },
            "retailPrice": {
                "amount": 11.99,
                "currencyCode": "USD"
            },
            "buyLink": "https://play.google.com/store/books/details?id=iCzQ4z02cFYC&rdid=book-iCzQ4z02cFYC&rdot=1&source=gbs_api",
            "offers": [
                {
                    "finskyOfferType": 1,
                    "listPrice": {
                        "amountInMicros": 11990000,
                        "currencyCode": "USD"
                    },
                    "retailPrice": {
                        "amountInMicros": 11990000,
                        "currencyCode": "USD"
                    },
                    "giftable": true
                }
            ]
        },
        "accessInfo": {
            "country": "US",
            "viewability": "PARTIAL",
            "embeddable": true,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": true,
                "acsTokenLink": "http://books.google.com/books/download/The_Diving_Bell_and_the_Butterfly-sample-epub.acsm?id=iCzQ4z02cFYC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
            },
            "pdf": {
                "isAvailable": true,
                "acsTokenLink": "http://books.google.com/books/download/The_Diving_Bell_and_the_Butterfly-sample-pdf.acsm?id=iCzQ4z02cFYC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
            },
            "webReaderLink": "http://play.google.com/books/reader?id=iCzQ4z02cFYC&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "SAMPLE",
            "quoteSharingAllowed": false
        }
    },{
        "kind": "books#volume",
        "id": "ao_9yQEACAAJ",
        "etag": "rvTy63rCPMk",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/ao_9yQEACAAJ",
        "volumeInfo": {
            "title": "The Simple Wild",
            "subtitle": "A Novel",
            "authors": [
                "K.A. Tucker"
            ],
            "publisher": "Atria Books",
            "publishedDate": "2018-08-07",
            "description": "<b>City girl Calla Fletcher attempts to reconnect with her estranged father, and unwittingly finds herself torn between her desire to return to the bustle of Toronto and a budding relationship with a rugged Alaskan pilot in this masterful new romance from acclaimed author K.A. Tucker.</b><br><br>Calla Fletcher was two when her mother took her and fled the Alaskan wild, unable to handle the isolation of the extreme, rural lifestyle, leaving behind Calla’s father, Wren Fletcher, in the process. Calla never looked back, and at twenty-six, a busy life in Toronto is all she knows. But when her father reaches out to inform her that his days are numbered, Calla knows that it’s time to make the long trip back to the remote frontier town where she was born.<br> <br>She braves the roaming wildlife, the odd daylight hours, the exorbitant prices, and even the occasional—dear God—outhouse, all for the chance to connect with her father: a man who, despite his many faults, she can’t help but care for. While she struggles to adjust to this new subarctic environment, Jonah—the quiet, brooding, and proud Alaskan pilot who keeps her father’s charter plane company operational—can’t imagine calling anywhere else home. And he’s clearly waiting with one hand on the throttle to fly this city girl back to where she belongs, convinced that she’s too pampered to handle the wild.<br> <br>Jonah is probably right, but Calla is determined to prove him wrong. As time passes, she unexpectedly finds herself forming a bond with the burly pilot. As his undercurrent of disapproval dwindles, it’s replaced by friendship—or perhaps something deeper? But Calla is not in Alaska to stay and Jonah will never leave. It would be foolish of her to kindle a romance, to take the same path her parents tried—and failed at—years ago.<br> <br>It’s a simple truth that turns out to be not so simple after all.",
            "industryIdentifiers": [
                {
                    "type": "ISBN_10",
                    "identifier": "1501133438"
                },
                {
                    "type": "ISBN_13",
                    "identifier": "9781501133435"
                }
            ],
            "readingModes": {
                "text": false,
                "image": false
            },
            "pageCount": 400,
            "printedPageCount": 400,
            "dimensions": {
                "height": "21.00 cm",
                "width": "13.50 cm",
                "thickness": "2.50 cm"
            },
            "printType": "BOOK",
            "categories": [
                "Fiction / Women",
                "Fiction / Romance / Contemporary",
                "Fiction / Family Life / General"
            ],
            "averageRating": 4.5,
            "ratingsCount": 5,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": false,
            "contentVersion": "preview-1.0.0",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/content?id=ao_9yQEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE7117rR1H1pqJAKQIKhhSe3Hm1vfrD_rD4crFlMPIg0vBZERqqBCEWNo76zyFbwVzgHXv1AF55Rgf8axyg5JgAYmD6PfnQlZcZfvxsu045MKr_XWFEcCH53AgY8efCCrJWtNnDKB&source=gbs_api",
                "thumbnail": "http://books.google.com/books/content?id=ao_9yQEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE7066fbXTLqasFSXmDfP1deK4Mc7A50xECeQ9rKoGAto7dIDBmwFej6iNjCsKdtz3zvPCoJANY49bHDQHJk6Oqzq9or_QgdNj75HnuPYZnbGdb74BCpEsInV-ie3VjF-GvnnFqA5&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=ao_9yQEACAAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=ao_9yQEACAAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=ao_9yQEACAAJ"
        },
        "saleInfo": {
            "country": "US",
            "saleability": "NOT_FOR_SALE",
            "isEbook": false
        },
        "accessInfo": {
            "country": "US",
            "viewability": "NO_PAGES",
            "embeddable": false,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": false
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=ao_9yQEACAAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "NONE",
            "quoteSharingAllowed": false
        }
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
                "Herman Melville"
            ],
            "publisher": "Dreamland - Lebanon",
            "publishedDate": "2016-06-17",
            "description": "<p>Moby Dick is a novel by American author Herman Melville. It was first published in 1851. </p><p>It is considered one of the treasures of world literature. The story of the novel tells the adventures of the wandering sailor Ishmael and his voyage on the whaleship Pequod. </p><p>Pequod is commanded by Captain Ahab. Ishmael soon knows that Ahab seeks one specific whale, Moby Dick, a ferocious, enigmatic white whale. In a previous encounter, the whale destroyed Ahab’s boat and bit off his leg. Ahab intends to take revenge. </p><p> </p><p>This book, under the series <b>‘Young Reader Classic’</b>, tells the story of Ishmael and his voyage in an interesting way. The language used in the book is simple and lucid. The lively and attractive illustrations make the story even more interesting.</p>",
            "readingModes": {
                "text": false,
                "image": true
            },
            "pageCount": 64,
            "printedPageCount": 65,
            "dimensions": {
                "height": "21.00 cm",
                "width": "15.40 cm",
                "thickness": "0.40 cm"
            },
            "printType": "BOOK",
            "categories": [
                "Young Adult Fiction / Classics",
                "Young Adult Fiction / Action & Adventure / General"
            ],
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": true,
            "contentVersion": "preview-1.0.0",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72K6Qmm-CGWZM8vpq690Miu3J7lnVuiLOkKVp7pFDka2WKWCgjWVNENfxFaHJGoO4dSMEfuAPhWZtLbAhum1AOTa7Keej00hLVDmItK2fxQ3sGJYBdVLmaJHtkq8Dhj2Bcvpfi9&source=gbs_api",
                "thumbnail": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70BF7L94xG-aCniyvo6Cyq7T_26aOXUcevs0KNDgAE2U9XYc-HrxDQvyttqluc0Cvj7TwUy43h_7C3ZFSWa5P5_MSRN24n5Ak76v8lvyd-0sakTGuHYzF8r3ry6K8sK8QSmx1lL&source=gbs_api",
                "small": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72c3PQ9U40iRuwcTF2pIRZQ7E6Ch1ZPYi-kWJHI8BT728yNEoumISNUBt78FR67gfRKjOWW8AO4Kc22DX5kTZItplUC7_SeNfblUuUZaKxyhXxe44QY5hN3Lc6FiUSaSjJF-0ls&source=gbs_api",
                "medium": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72ZWY3kSdo_arZBGeEcL39_0JFVwrjIY36f8eJEggZebu0cJThipvYWODXE-bgNsoFtuHoeP7S9BY41WCv9hr62ya8hD3OEGXB1gIo6Neo-hv8VVGSAOGDZCE8ffcMrf51X-14w&source=gbs_api",
                "large": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE71iwzzhiFotNfuJaIr3P0SGKNhKfjR_6REctkxmQjkkRnLPWkNjCOprnOsSZ6bt1dYCidmo3q_DnVY2kBgzUWjcXE-qr7f2sxwbRnEg3HsQYkSxPdPP26vJC5lnPAsnifr8rhj6&source=gbs_api",
                "extraLarge": "http://books.google.com/books/publisher/content?id=VetpDAAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70J7xPznhmqMQgHBcVfU9QQlWkMEGLz7-BueuZVRuPij2DzkSWIq8nNvtdF5s7cR5IR9bjFeGbHFKtBdx24FJ-sfknT7PUtfulvI3-hxhvwd2Sth0Jook2HRA8TBVaLwZ7qZMfZ&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=VetpDAAAQBAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=VetpDAAAQBAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=VetpDAAAQBAJ"
        },
        "saleInfo": {
            "country": "US",
            "saleability": "FOR_SALE",
            "isEbook": true,
            "listPrice": {
                "amount": 5,
                "currencyCode": "USD"
            },
            "retailPrice": {
                "amount": 5,
                "currencyCode": "USD"
            },
            "buyLink": "https://play.google.com/store/books/details?id=VetpDAAAQBAJ&rdid=book-VetpDAAAQBAJ&rdot=1&source=gbs_api",
            "offers": [
                {
                    "finskyOfferType": 1,
                    "listPrice": {
                        "amountInMicros": 5000000,
                        "currencyCode": "USD"
                    },
                    "retailPrice": {
                        "amountInMicros": 5000000,
                        "currencyCode": "USD"
                    },
                    "giftable": true
                }
            ]
        },
        "accessInfo": {
            "country": "US",
            "viewability": "PARTIAL",
            "embeddable": true,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": false
            },
            "pdf": {
                "isAvailable": true,
                "acsTokenLink": "http://books.google.com/books/download/Moby_Dick-sample-pdf.acsm?id=VetpDAAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
            },
            "webReaderLink": "http://play.google.com/books/reader?id=VetpDAAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "SAMPLE",
            "quoteSharingAllowed": false
        }
    },{
        "kind": "books#volume",
        "id": "PGR2AwAAQBAJ",
        "etag": "Uz/xGYIELQk",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/PGR2AwAAQBAJ",
        "volumeInfo": {
            "title": "To Kill a Mockingbird",
            "authors": [
                "Harper Lee"
            ],
            "publisher": "Harper Collins",
            "publishedDate": "2014-07-08",
            "description": "<p>Voted America's Best-Loved Novel in PBS's The Great American Read</p><p>Harper Lee's Pulitzer Prize-winning masterwork of honor and injustice in the deep South—and the heroism of one man in the face of blind and violent hatred</p><p>One of the most cherished stories of all time, To Kill a Mockingbird has been translated into more than forty languages, sold more than forty million copies worldwide, served as the basis for an enormously popular motion picture, and was voted one of the best novels of the twentieth century by librarians across the country. A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice, it views a world of great beauty and savage inequities through the eyes of a young girl, as her father—a crusading local lawyer—risks everything to defend a black man unjustly accused of a terrible crime.</p>",
            "industryIdentifiers": [
                {
                    "type": "ISBN_10",
                    "identifier": "0062368680"
                },
                {
                    "type": "ISBN_13",
                    "identifier": "9780062368683"
                }
            ],
            "readingModes": {
                "text": true,
                "image": false
            },
            "pageCount": 336,
            "printedPageCount": 342,
            "dimensions": {
                "height": "21.00 cm"
            },
            "printType": "BOOK",
            "categories": [
                "Fiction / Classics",
                "Fiction / Coming of Age",
                "Fiction / Literary",
                "Fiction / World Literature / American / 20th Century",
                "Fiction / Media Tie-In",
                "Fiction / Southern"
            ],
            "averageRating": 4.5,
            "ratingsCount": 2164,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": true,
            "contentVersion": "1.26.24.0.preview.2",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72-wTDwioL-SEQSouQRneWbvJGR42YSWJtoqZFXsU4l12JD0QWVTHF3iz8r1AERsW8pPb4ZbDM_2Utx116oPy5pRRwL_voBCqYzA91599dcc3XYPAyTv2Ll6Gb1zGpSZTdO4LDG&source=gbs_api",
                "thumbnail": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72Jck1qLWtQcf3KYS0J6e5odm60OITH9xYaMo94sBAHxYg7gxrGLffYFj9x1QxXgKEkF-zEFGdVIzcVz_wlvR9HrPlj82Fdb8lVPTJfCGcdB27kE0MITyuPGzn1pqJHobeVw4_f&source=gbs_api",
                "small": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73e5vXaXreJwZtc3h0CefUbXpMItsXpicjPJCdqsMOftUNtyjE9hDkJKJAuOTAkUR-PebDG_tejuHMsYkSRU0SgARRtYwSIkG00defN6AkvhdEzKNE3IkO12eDHDNY_b5N1JUqj&source=gbs_api",
                "medium": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72oslq2HNcL1BHiequGy4LeOVWGHwC0lokmK4EOr--A83xDaX_Xgvp312mzxsOolqZVBW_V10G_GHy2V-0ct0rqxDhwUmxjB_ePFcb5UwkMnCoqRrrUvyyieY_9-nAu0JSb60J5&source=gbs_api",
                "large": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE73PvJmCepLuEvBzBPq3yml8BlneD24FMz7AoZg0MkSyUKEedNmMVklJHMiqI_s0rMtVMsFZXWCMBsjfsWFV-ce3QAp-u32y9dld-SFFCTEJz0f1Lj5b6qMkT5uaNaS6ZJgibgPm&source=gbs_api",
                "extraLarge": "http://books.google.com/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE734H0tDj6npeRoEe7seYV3DNs6Cxt9z2hqxT07hpCkK6Z78hHfaJomMU3-aBtbRuiHm5bqTFLF_nX4qKrrMZ27rnbBRxK9sFfsV_J6w0ekq8giQavO-um02qyv9JS-fAQFwVwkY&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=PGR2AwAAQBAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=PGR2AwAAQBAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=PGR2AwAAQBAJ"
        },
        "layerInfo": {
            "layers": [
                {
                    "layerId": "geo",
                    "volumeAnnotationsVersion": "36"
                }
            ]
        },
        "saleInfo": {
            "country": "US",
            "saleability": "FOR_SALE",
            "isEbook": true,
            "listPrice": {
                "amount": 12.99,
                "currencyCode": "USD"
            },
            "retailPrice": {
                "amount": 12.99,
                "currencyCode": "USD"
            },
            "buyLink": "https://play.google.com/store/books/details?id=PGR2AwAAQBAJ&rdid=book-PGR2AwAAQBAJ&rdot=1&source=gbs_api",
            "offers": [
                {
                    "finskyOfferType": 1,
                    "listPrice": {
                        "amountInMicros": 12990000,
                        "currencyCode": "USD"
                    },
                    "retailPrice": {
                        "amountInMicros": 12990000,
                        "currencyCode": "USD"
                    },
                    "giftable": true
                }
            ]
        },
        "accessInfo": {
            "country": "US",
            "viewability": "PARTIAL",
            "embeddable": true,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": true,
                "acsTokenLink": "http://books.google.com/books/download/To_Kill_a_Mockingbird-sample-epub.acsm?id=PGR2AwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=PGR2AwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "SAMPLE",
            "quoteSharingAllowed": false
        }
    },{
        "kind": "books#volume",
        "id": "FmyBAwAAQBAJ",
        "etag": "yc8sFv9mt48",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/FmyBAwAAQBAJ",
        "volumeInfo": {
            "title": "Sapiens",
            "subtitle": "A Brief History of Humankind",
            "authors": [
                "Yuval Noah Harari"
            ],
            "publisher": "Harper Collins",
            "publishedDate": "2015-02-10",
            "description": "<p>New York Times Bestseller</p><p>A Summer Reading Pick for President Barack Obama, Bill Gates, and Mark Zuckerberg </p><p>From a renowned historian comes a groundbreaking narrative of humanity’s creation and evolution—a #1 international bestseller—that explores the ways in which biology and history have defined us and enhanced our understanding of what it means to be “human.”</p><p>One hundred thousand years ago, at least six different species of humans inhabited Earth. Yet today there is only one—homo sapiens. What happened to the others? And what may happen to us?</p><p>Most books about the history of humanity pursue either a historical or a biological approach, but Dr. Yuval Noah Harari breaks the mold with this highly original book that begins about 70,000 years ago with the appearance of modern cognition. From examining the role evolving humans have played in the global ecosystem to charting the rise of empires, Sapiens integrates history and science to reconsider accepted narratives, connect past developments with contemporary concerns, and examine specific events within the context of larger ideas.</p><p>Dr. Harari also compels us to look ahead, because over the last few decades humans have begun to bend laws of natural selection that have governed life for the past four billion years. We are acquiring the ability to design not only the world around us, but also ourselves. Where is this leading us, and what do we want to become?</p><p>Featuring 27 photographs, 6 maps, and 25 illustrations/diagrams, this provocative and insightful work is sure to spark debate and is essential reading for aficionados of Jared Diamond, James Gleick, Matt Ridley, Robert Wright, and Sharon Moalem.</p>",
            "industryIdentifiers": [
                {
                    "type": "ISBN_10",
                    "identifier": "0062316109"
                },
                {
                    "type": "ISBN_13",
                    "identifier": "9780062316103"
                }
            ],
            "readingModes": {
                "text": true,
                "image": false
            },
            "pageCount": 464,
            "printedPageCount": 581,
            "dimensions": {
                "height": "24.00 cm"
            },
            "printType": "BOOK",
            "categories": [
                "Science / Life Sciences / Evolution",
                "History / Civilization",
                "History / World"
            ],
            "averageRating": 4,
            "ratingsCount": 117,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": true,
            "contentVersion": "1.27.20.0.preview.2",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70MBAw5PZujZWDiLtYqNLZCGPDjmEprwHT9GfVS7osfAIl1CbgC2JC36mFBhj7CKL_tvPG2ZbtjO-2iDgpbfxNcFDsRp1o1rreTUUZD8_Xs-oBXap6vSYjthPthmT6eJgtYVCa6&source=gbs_api",
                "thumbnail": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70Dysrx3IhguUvZ_OYSGjgPyINDN_lPf6F4rzZ-zCubwTfV-t0t_jbBWv_Pv4jujBI5uEGjWNd-MiUtmyso1J3Ofna-0LlKQYncGEjCYF-HLQG4odkju8ATyYS0WWJhyylvdTND&source=gbs_api",
                "small": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73Qm9hToK4O1GrS5mrLZlcDbOPQPR5ju38CIWtGLqp3uxL3ODI_PnjV8--VzadJ4acTJoxEzCEWcY4GfZ99t3Lk6nZWgkVYLp1aXmzJLbeQqym_u7SEjhuKpYMlprxSIOiGaWoI&source=gbs_api",
                "medium": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE704VKkr44BYtS1zNf9AfbKHFNxvwlHxC-t1sveZFC_k1VhdTHAoFYOHtD7gl62SsHcOrF8_1HEur7AoaXs2FX1r3eoracsNH46JlNqqVg7XCdhAP2oO8L5cvhpU5Zd1ntdzZZeK&source=gbs_api",
                "large": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE70D--SdnhYWKd_lLEhsacIlTYOJs8tl3C1Zp5ciWmVP_Rc3U4qeLGFKHZuxQs8hHWAm5dt95N_1K8XA1o_z4f6R1eTSazrhoE4cuq5kGGeM_kWCDiM_p8HK7Km0oAKyodPRW8s3&source=gbs_api",
                "extraLarge": "http://books.google.com/books/publisher/content?id=FmyBAwAAQBAJ&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70Rhl_euAQBbwC4ZYH7DKpgNusxKQXQI4Q-8ZWfb6tUYmCw_17Yv9RckfOixNm20BlEfMpxgAVtFh-JCUM5xOzH87XiCnPP7SZRHnJw-_s_u7a52esPkQOXwYjkcXePTABeKuUc&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=FmyBAwAAQBAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=FmyBAwAAQBAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=FmyBAwAAQBAJ"
        },
        "layerInfo": {
            "layers": [
                {
                    "layerId": "geo",
                    "volumeAnnotationsVersion": "29"
                }
            ]
        },
        "saleInfo": {
            "country": "US",
            "saleability": "FOR_SALE",
            "isEbook": true,
            "listPrice": {
                "amount": 14.99,
                "currencyCode": "USD"
            },
            "retailPrice": {
                "amount": 14.99,
                "currencyCode": "USD"
            },
            "buyLink": "https://play.google.com/store/books/details?id=FmyBAwAAQBAJ&rdid=book-FmyBAwAAQBAJ&rdot=1&source=gbs_api",
            "offers": [
                {
                    "finskyOfferType": 1,
                    "listPrice": {
                        "amountInMicros": 14990000,
                        "currencyCode": "USD"
                    },
                    "retailPrice": {
                        "amountInMicros": 14990000,
                        "currencyCode": "USD"
                    },
                    "giftable": true
                }
            ]
        },
        "accessInfo": {
            "country": "US",
            "viewability": "PARTIAL",
            "embeddable": true,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": true,
                "acsTokenLink": "http://books.google.com/books/download/Sapiens-sample-epub.acsm?id=FmyBAwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=FmyBAwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "SAMPLE",
            "quoteSharingAllowed": false
        }
    },{
        "kind": "books#volume",
        "id": "YDzTCwAAQBAJ",
        "etag": "pDIqkX1ynFc",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/YDzTCwAAQBAJ",
        "volumeInfo": {
            "title": "A Game of Thrones",
            "authors": [
                "George R. R. Martin"
            ],
            "publisher": "Bantam Books",
            "publishedDate": "2011",
            "description": "<b>A NEW ORIGINAL SERIES, NOW ON HBO.<br></b><br>Here is the first volume in George R. R. Martin's magnificent cycle of novels that includes <i>A Clash of Kings</i> and <i>A Storm of Swords</i>. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin's stunning series is destined to stand as one of the great achievements of imaginative fiction.<br><br><b>A GAME OF THRONES<br><br></b>Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom's protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.<br><br>Here an enigmatic band of warriors bear swords of no human metal; a tribe of fierce wildlings carry men off into madness; a cruel young dragon prince barters his sister to win back his throne; and a determined woman undertakes the most treacherous of journeys. Amid plots and counterplots, tragedy and betrayal, victory and terror, the fate of the Starks, their allies, and their enemies hangs perilously in the balance, as each endeavors to win that deadliest of conflicts: the game of thrones.",
            "industryIdentifiers": [
                {
                    "type": "ISBN_10",
                    "identifier": "0553593714"
                },
                {
                    "type": "ISBN_13",
                    "identifier": "9780553593716"
                }
            ],
            "readingModes": {
                "text": false,
                "image": false
            },
            "pageCount": 835,
            "printedPageCount": 866,
            "dimensions": {
                "height": "18.00 cm",
                "width": "10.70 cm",
                "thickness": "3.50 cm"
            },
            "printType": "BOOK",
            "categories": [
                "FICTION / Action & Adventure",
                "Fiction / Fantasy / Epic",
                "FICTION / Media Tie-In"
            ],
            "averageRating": 4,
            "ratingsCount": 2620,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": false,
            "contentVersion": "0.5.0.0.preview.0",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/publisher/content?id=YDzTCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73LMTgXCVOLSYwd4GkP0ENmpvny2gZpTe8lMyoQfsZ5sJMutTPDZRS-aOOct-hO-jzkljXsiVfRARzQGXNlFw12NiYhv6HY3zd8nwd3zsUgSc4yKQWa9nhH9zUmdOHBTe7XfLu2&source=gbs_api",
                "thumbnail": "http://books.google.com/books/publisher/content?id=YDzTCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71v6sE5xN-er6ed7HtHcrFuRMN2A7QUs-thSVSFLegcdfTfgTQpQLzQ2Cd-4A6kOgAyOOssEo9qLavS89x27xBWb-FrBjP8bMgUWZhna1v-77LphdGaSvQLSG1w4KxJgy7htQol&source=gbs_api",
                "small": "http://books.google.com/books/publisher/content?id=YDzTCwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71w5W7GUd_ljoFG2CizLtuZq4tksdg22MQZRQZltK_wfneMdKywRT2-iXn2woBSnApAohetff4_rSgvtKPaU_WB6URCCBtfT3Gjmy_fL6k7ZmMZvbr-wKlKSuwsKI8SiWYDhjw0&source=gbs_api",
                "medium": "http://books.google.com/books/publisher/content?id=YDzTCwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70pdMWBVa630nWYt7xoApp8jVQJByTudQRSrpPFm5GXy3e4jJlmo3Y6UyMIbbEGIPB-3sGcIdqRLUled8wgg1_9Y0SEQYwXe-Fin1StR1RyJO33gSiY9q5U3eHYTWTB-0Y0eG2f&source=gbs_api",
                "large": "http://books.google.com/books/publisher/content?id=YDzTCwAAQBAJ&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE73O6KJ-jvUxxqr9_aUxK062aICmsASeID069MYTimJUTyHQB6sTMi9NfwEm0n0Ze7F9DlkgKeyaWhkODNR9Nmr1cr2vU7iIftuiCy1l-gcuXmoN7C1nSsWK-l7GSPOp-gtixb4b&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=YDzTCwAAQBAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=YDzTCwAAQBAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=YDzTCwAAQBAJ"
        },
        "saleInfo": {
            "country": "US",
            "saleability": "NOT_FOR_SALE",
            "isEbook": false
        },
        "accessInfo": {
            "country": "US",
            "viewability": "PARTIAL",
            "embeddable": true,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": false
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=YDzTCwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "SAMPLE",
            "quoteSharingAllowed": false
        }
    },{
        "kind": "books#volume",
        "id": "GZAoAQAAIAAJ",
        "etag": "4yN6BIv/fCw",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/GZAoAQAAIAAJ",
        "volumeInfo": {
            "title": "Harry Potter and the Deathly Hallows",
            "authors": [
                "J. K. Rowling"
            ],
            "publisher": "Arthur A. Levine Books",
            "publishedDate": "2007",
            "description": "'His hand closed automatically around the fake Horcrux, but in spite of everything, in spite of the dark and twisting path he saw stretching ahead for himself, in spite of the final meeting with Voldemort he knew must come, whether in a month, in a year, or in ten, he felt his heart lift at the thought that there was still one last golden day of peace left to enjoy with Ron and Hermione.' With these words \"Harry Potter and the Half-Blood Prince\" draws to a close. And here, in this seventh and final book, Harry discovers what fate truly has in store for him as he inexorably makes his way to that final meeting with Voldemort. In this thrilling climax to the phenomenally bestselling series, J.K. Rowling will reveal all to her eagerly waiting readers.",
            "industryIdentifiers": [
                {
                    "type": "ISBN_10",
                    "identifier": "0545010225"
                },
                {
                    "type": "ISBN_13",
                    "identifier": "9780545010221"
                }
            ],
            "readingModes": {
                "text": false,
                "image": false
            },
            "pageCount": 759,
            "printedPageCount": 792,
            "dimensions": {
                "height": "24.00 cm",
                "width": "15.20 cm",
                "thickness": "5.10 cm"
            },
            "printType": "BOOK",
            "categories": [
                "Juvenile Fiction / Fantasy & Magic"
            ],
            "averageRating": 4.5,
            "ratingsCount": 3526,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": false,
            "contentVersion": "4.2.2.0.preview.0",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "imageLinks": {
                "smallThumbnail": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE730b1DbBKD93vwFev3YclxjQMsqgitoTZdsLX0fk7E9BherqwUQ8kdXnu-iEa3m0Gdon2w3hPzKHeSdfGO4IyTSUG7IyKkJ11Ow6yinevt3b5kEWOAqlW9n5FpIERwFB2j4wU3M&source=gbs_api",
                "thumbnail": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70tN-61LM8CJfAYoO-nmrotJlFpQ6t3qeBFQ5SEqfjIcYAhD7KMlfOmI4h1atnv23mn3cnHyrZ-6CwRwYZNT8HGt3s1JQmvY_z7NZ-gjKJywLyHRsizcsXIYwjsUDw-G5cgktmg&source=gbs_api",
                "small": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=2&imgtk=AFLRE70OIGUg_ebBTUaJi-Xf773_uRMhY5UCwkTzSlvMsBEu7QMbyelT3pPtwPMobi656DrPYgI1UKrUHX28Yey4VgEDW9E5J9SGUrnT-uFLb4o5hHI-c3-feZK76FVPnu-hbRJc5tsu&source=gbs_api",
                "medium": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=3&imgtk=AFLRE72ot9NqwQ0Pt58Kv4UseRGMsH-koDXZDZ61qOKqCQaWTakHXwfbQv1aJQvSfrML2xJDkT-DwZvITXzLJPE_gCAiD_L8sHhif5JCb70xVJuiRin02_RuXA6i2Bn__gAd-8xyEmk1&source=gbs_api",
                "large": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=4&imgtk=AFLRE71ox9HAeP17qkAe_YHynkWfPuE8ogCm2P_iIMK-Gnt6pdnklkrFV_aAy6IOCZn7WyjdEvtUcXDKKGwULx9j9mvXmJYZw-cOwzMr5CRlGXYCAOZCf7NHvqD-USMa0zDAe0NYRgOh&source=gbs_api",
                "extraLarge": "http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=6&imgtk=AFLRE731TsPGZ1ml7uMpukHj3EIlSXafv6D8X0NQHxrS31beR_Jjj8WjLSMNb4nLhYuMk_IC3XemjAwSseXpnpRbPam3W8idqwSEcayrgQkZd02MFxT76xee2VX4u11LuEfPv_PSksre&source=gbs_api"
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=GZAoAQAAIAAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=GZAoAQAAIAAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=GZAoAQAAIAAJ"
        },
        "saleInfo": {
            "country": "US",
            "saleability": "NOT_FOR_SALE",
            "isEbook": false
        },
        "accessInfo": {
            "country": "US",
            "viewability": "NO_PAGES",
            "embeddable": false,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": false
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=GZAoAQAAIAAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "NONE",
            "quoteSharingAllowed": false
        }
    },{
        "kind": "books#volume",
        "id": "byPJwAEACAAJ",
        "etag": "+lZQIhVLAP4",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/byPJwAEACAAJ",
        "volumeInfo": {
            "title": "O Cortico",
            "authors": [
                "Aluísio Azevedo"
            ],
            "publisher": "Martins",
            "publishedDate": "1970",
            "readingModes": {
                "text": false,
                "image": false
            },
            "pageCount": 254,
            "printedPageCount": 254,
            "printType": "BOOK",
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": false,
            "contentVersion": "preview-1.0.0",
            "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
            },
            "language": "en",
            "previewLink": "http://books.google.com/books?id=byPJwAEACAAJ&hl=&source=gbs_api",
            "infoLink": "https://play.google.com/store/books/details?id=byPJwAEACAAJ&source=gbs_api",
            "canonicalVolumeLink": "https://play.google.com/store/books/details?id=byPJwAEACAAJ"
        },
        "saleInfo": {
            "country": "US",
            "saleability": "NOT_FOR_SALE",
            "isEbook": false
        },
        "accessInfo": {
            "country": "US",
            "viewability": "NO_PAGES",
            "embeddable": false,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {
                "isAvailable": false
            },
            "pdf": {
                "isAvailable": false
            },
            "webReaderLink": "http://play.google.com/books/reader?id=byPJwAEACAAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "NONE",
            "quoteSharingAllowed": false
        }
    },
    ],
  },
  {
    user_id: 1,
    name: "Did Not Finish",
    books: [],
  },
])

Review.create!([
  {
    user_id: 1,
    rating: 5,
    text: "Cesserent qu instruite epluchant cependant escadrons le. Visages passent vit donjons nos hauteur feu les. Jeunes autour encore toi est tenons cet wagons sortes.",
    date: "Jan 10, 2022",
    book_id: "rWgrDwAAQBAJ",
    book_name: "Sartre",
    book_author: "Mathilde Ramadier",
  },
  {
    user_id: 2,
    rating: 5,
    text: "Prudence profonde coupoles prennent roc pas precieux pourquoi. Ennemies massacre triomphe les cavernes des six toi. Je or devant blason palais et epouse sa atroce. Se on rendre ah sortit annees jusque jambes voyage. Chantant traverse soutenir net campagne sur remettre. Demeurons cet six art toutefois resterait les. Firmament sortaient net echauffer aux reprendre preferait eux.",
    date: "Jan 11, 2022",
    book_id: "rWgrDwAAQBAJ",
    book_name: "Sartre",
    book_author: "Mathilde Ramadier",
  },
  {
    user_id: 3,
    rating: 5,
    text: "Linge selon court ans toi sabre heros. Connut toi mirent art ton trouve enleve hideur eux balaye. Cornette or coussins recupera allaient viennent heureuse as. Obtenir promene ils regarde dit des. Roches police eux ahuris pleine marche moi demain. Essor verte noces oui non temps creve.",
    date: "Mar 12, 2022",
    book_id: "rWgrDwAAQBAJ",
    book_name: "Sartre",
    book_author: "Mathilde Ramadier",

  },
  {
    user_id: 4,
    rating: 5,
    text: "Comme verts mes comme ces nul fut. Et ah te avons rente rouge je. Il ainsi il cause oh croix utile or. Jeunesse poitrine en epanouir la reparler la. Jet noble force par arret ras voila votre peu. Les ete appareil supplice vit epandent. Collines dissiper cavalier octogone la magasins ca. Sur casernes eut pic criaient couvrent defoncat heureuse. Bon oeil aux mats tuer chez poil peur. Saut poil il fils un nous je eu idee. Si mais haut oh ah quoi loin. Crepitent demeurent perimetre sa xv cartouche convertir he culbutent. Cercle qu valoir ca bruits le ca. Oeufs feu dit sorte rente trois ecole mur moins.",
    date: "June 10, 2022",
    book_id: "rWgrDwAAQBAJ",
    book_name: "Sartre",
    book_author: "Mathilde Ramadier",
  },
  {
    user_id: 4,
    rating: 3,
    text: "Meh.",
    date: "June 10, 2022",
    book_id: "rWgrDwAAQBAJ",
    book_name: "Sartre",
    book_author: "Mathilde Ramadier",
  },

])

Reaction.create!([
  {
    review_id: 1,
    user_id: 2,
    emoji: "🎉",
  },
  {
    review_id: 1,
    user_id: 3,
    emoji: "🎉",
  },
  {
    review_id: 1,
    user_id: 4,
    emoji: "🎉",
  },
  {
    review_id: 2,
    user_id: 2,
    emoji: "👍",
  },
  {
    review_id: 2,
    user_id: 3,
    emoji: "👍",
  },
  {
    review_id: 2,
    user_id: 4,
    emoji: "👍",
  },
  {
    review_id: 3,
    user_id: 2,
    emoji: "❤️",
  },
  {
    review_id: 3,
    user_id: 3,
    emoji: "❤️",
  },
  {
    review_id: 3,
    user_id: 4,
    emoji: "❤️",
  },
  {
    review_id: 4,
    user_id: 2,
    emoji: "😄",
  },
  {
    review_id: 4,
    user_id: 3,
    emoji: "😄",
  },
  {
    review_id: 4,
    user_id: 4,
    emoji: "😄",
  },
])

Bookclub.create!([
  {
    name: "Test Book Club",
    host: {
      username: "demouser",
      first_name: "Demo",
      last_name: "User",
      password: "12345",
    },
    description: "A book club for everything you may or may not read!",
  },
])

Clubuser.create!([
  {
    user_id: 1,
    bookclub_id: 1,
  },
  {
    user_id: 2,
    bookclub_id: 1,
  },
  {
    user_id: 4,
    bookclub_id: 1,
  },
  {
    user_id: 3,
    bookclub_id: 1,
  },
])

puts "Completed Seeding Data"