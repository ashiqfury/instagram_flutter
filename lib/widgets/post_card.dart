import 'package:flutter/material.dart';
import 'package:instagram_flutter/utils/colors.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mobileBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        //? header section
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ).copyWith(right: 0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(
                    'https://instagram.fmaa12-2.fna.fbcdn.net/v/t51.2885-19/271701277_676708760142882_7222603007484482991_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fmaa12-2.fna.fbcdn.net&_nc_cat=106&_nc_ohc=FEAAZKNcQkQAX_xASvU&edm=ALQROFkBAAAA&ccb=7-4&oh=00_AT-_wmLCdgbvVi7tlsGhJSNJJ53VeERmCNui4EZUex7X5A&oe=6269069E&_nc_sid=30a2ef',
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'anawzir___',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        child: ListView(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shrinkWrap: true,
                          children: const [
                            'Delete',
                          ]
                              .map(
                                (e) => InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16,
                                    ),
                                    child: Text(e),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
          //? image section
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            child: Image.network(
              'https://instagram.fmaa12-3.fna.fbcdn.net/v/t51.2885-15/277906294_368761708478467_6917862117072200814_n.webp?stp=c209.0.662.662a_dst-webp_e35_s320x320&cb=9ad74b5e-95d2b877&_nc_ht=instagram.fmaa12-3.fna.fbcdn.net&_nc_cat=107&_nc_ohc=wxWAeMIzq-kAX8RrZsG&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT99OJSKCgW1I7myk97U7RwWmyFHMEIvUgV6fc2kcd8wSQ&oe=626A7DC8&_nc_sid=7bff83',
              fit: BoxFit.cover,
            ),
          ),
          //? like, comment section
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
                color: Colors.red,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border),
                  ),
                ),
              ),
            ],
          ),
          //? description and number of comments
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTextStyle(
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontWeight: FontWeight.w800),
                  child: Text(
                    '2,407 likes',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  width: double.infinity,
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: primaryColor),
                      children: [
                        TextSpan(
                          text: 'anawzir___',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              '  yoi papaaaww...! you will always present in each and every project I am building.. 😘',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: const Text(
                      'View all 724 comments',
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: const Text(
                    '5 minutes ago',
                    style: TextStyle(
                      color: secondaryColor,
                      // fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
