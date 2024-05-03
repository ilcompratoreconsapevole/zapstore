import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zapstore/services/session_service.dart';
import 'package:zapstore/widgets/card.dart';

class UserAvatar extends HookConsumerWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(loggedInUser);
    return CircularImage(url: user?.avatarUrl, size: 46);
  }
}
