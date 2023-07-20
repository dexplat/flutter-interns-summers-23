import 'package:flutter/material.dart';

import 'profile_allpost.dart';

class AllPostPicture extends StatelessWidget {
  const AllPostPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                    'https://images.unsplash.com/photo-1620544770548-c20f31d0914e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJhbCUyMGJlYXV0eXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  ProfileAllPost(
                      url:
                          'https://images.unsplash.com/photo-1569254994521-ddbb54af5ae8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aG9yaXpvbnRhbHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                  const SizedBox(
                    height: 8,
                  ),
                  ProfileAllPost(
                      url:
                          'https://images.unsplash.com/photo-1533422902779-aff35862e462?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
                  const SizedBox(
                    height: 8,
                  ),
                  ProfileAllPost(
                      url:
                          'https://plus.unsplash.com/premium_photo-1669868116752-acd4bc7bc6a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9yaXpvbnRhbHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
