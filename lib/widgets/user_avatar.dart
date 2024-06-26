import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zapstore/main.data.dart';
import 'package:zapstore/widgets/card.dart';

class UserAvatar extends HookConsumerWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.settings.watchOne('_').model!.user.value;
    return CircularImage(url: user?.avatarUrl, size: 46);
  }
}
