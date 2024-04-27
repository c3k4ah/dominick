String addZero(int index) {
  String numb = index.toString();
  if (numb.length == 2) {
    return numb;
  } else if (numb.length == 1) {
    return '0$numb';
  }
  return '';
}
