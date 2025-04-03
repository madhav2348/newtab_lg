class Fevicon {
  // client.DownloadFile(
  //     @"http://www.google.com/s2/favicons?domain=stackoverflow.com",
  //     "stackoverflow.com.ico");
  String getFaviconUrl(String url) {
    var slashIdex = 0;
    var arr = [];

    for (var i in url.split('')) {
      if (i == '/') {
        slashIdex++;
      }
      if (slashIdex == 3) {
        return arr.join('');
      }
      arr.add(i);
    }
    return '';
  }
}
