Post.seed(:id,
  { id: 1, title: '床のきちんとした手入れ方法',
    body: 'めちゃくちゃ拭きまくってください＞＜',
    user_id: 1, main_category_id: 1, sub_category_id: 1 },
  { id: 2, title: '床をふこう',
    body: 'ふけふけふけ〜〜〜',
    user_id: 1, main_category_id: 1, sub_category_id: 1 },
  { id: 3, title: 'なんか記事のタイトル',
    body: 'ここが本文です。',
    user_id: 2, main_category_id: 1, sub_category_id: 1 },
  { id: 4, title: 'ああああああああああああ',
    body: 'いいいいいいいいいいいいいいいいいいいい',
    user_id: 2, main_category_id: 1, sub_category_id: 1 }
)