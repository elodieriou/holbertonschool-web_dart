String inner() {
  return 'Hello Agent ';
}

void outer(String name, String id) {
  String greeting = inner() + name.split(' ')[1][0] + '.' + name.split(' ')[0];
  print('$greeting your id is $id');
}
