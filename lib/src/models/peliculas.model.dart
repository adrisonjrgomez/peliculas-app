class Peliculas{
  List<Pelicula> items = List();
  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList){
    if(jsonList == null) return;
    jsonList.forEach((item){
      final pelicula = Pelicula.fromJsonMap(item);
      items.add(pelicula);
    });
  }
}

class Pelicula {
  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;

  Pelicula({
    this.popularity,
    this.voteCount,
    this.video,
    this.posterPath,
    this.id,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.title,
    this.voteAverage,
    this.overview,
    this.releaseDate,
  });
  Pelicula.fromJsonMap(Map<String, dynamic> json){
    this.popularity       =   json['popularity'] / 1;
    this.voteCount        =   json['vote_count'];
    this.video            =   json['video'];
    this.posterPath       =   json['poster_path'];
    this.id               =   json['id'];
    this.adult            =   json['adult'];
    this.backdropPath     =   json['backdrop_path'];
    this.originalLanguage =   json['original_language'];
    this.originalTitle    =   json['original_title'];
    this.genreIds         =   json['genre_ids'].cast<int>();
    this.title            =   json['title'];
    this.voteAverage      =   json['vote_average'] / 1;
    this.overview         =   json['overview'];
    this.releaseDate      =   json['release_date'];
  }

  getPosterImgUrl(){
    return (posterPath != null ) ? 'https://image.tmdb.org/t/p/w500/$posterPath' : 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARkAAACzCAMAAACKPpgZAAAAUVBMVEX////MzMyZmZnJycmWlpa1tbWTk5Pu7u7a2tr8/PzNzc3Q0ND39/fy8vL09PTk5OTn5+ff39/V1dWgoKCnp6e+vr7AwMCsrKyzs7ONjY2qqqqF5r5XAAAJgElEQVR4nO2d6XqrKhSGq1hxHpum+9z/hZ4oMgkLtMWICd+P/ewOsfC6Jgbl4yMoKCgoKCgoKCgoKCgoKCgoKCgoKCjoGcqJzm6GP8ob3PbDUBYRUVEOQ9/i5q0R5U2XlRFCKFpr+l6Zde+Jp3pQ0TCR+TzoVGc39Lmq2iEyU2F0oqF9Gzh5N1iMZW06Q/cOblX1G61Ftpz+1Q2nyXaZi2g4WXN24w9UMwBYkCzgl4ZXZVNlmi6T/Nx3GNfNpBrjrs8GbS6PUPaKPpX3mp5GQ48rXXTNK9xPeJSP9C8Xi3G56uWjWOmxuZs57pWSB5X4SS1+jvK1Iz2wbAsaTa8gzV7IbHAh9e5RoOy58XiVz1DxMmbTyx3bX5usayDUH9LOZyuX3AFF7W+cIW8lNqh8AY+qHeWWdW6rnbbyBHXSrf5TPSLXQ6hz1sZT1Aqd+XvClVI/ap208CSJsRc5KNJy+YIOWniSJPN3k2qx5JxOLnmCBDBocJVMcmFUelU0guU7Nfyjrvs0iSHBbR7pro1GTNeF48kDoUa6XvLGUjnvGk1TcDQXG0Q1kSzXaCqOJrrWTF8ZHY2GX7p0e+VjpZvXPAzNlXI3j75PCcPXicIVB4OF3F04Dgg8yKOrTJwPrMWtVNa4RsOHq4PbCx8l1mASAA5Ew8LZNcbdPDQWZKwkonFr9jnP3Vfwp4z5ErUQcZzgtgcNu/IF8hPWWPhxaLjn+l8KsxpPjIoiGrexhkV77+s9XspIBA4Lw2wY4n1RQ2PienrgMDTswoXLq7oXM5liPYd3FBqWnzw3GkMz1ViTY5u2/MnuEkbDEpMuHioZqkr/pUb921Tb0pjvdXoajI1UrKYZk9ioccsfZbfD4zFCbTKZDw2a2oIm3Wc0/q7o0vIXtGslDNvQjFsWY5jReFsI56zX4K/sRbPNaNjwydcdEjRLmEa+ex1qk9HQMYK3iZvFX1NvdqLZZDS55zGYTT+Y3V3NUPEDTfJI0kky//sLo2Hjez8nI5gz6eLv59TL7/m/muSdjp9lV1dVVXfDbVzDkfWpuTr2253ojVMGBpM+p96mt/n/reJQcmDqbjHMJtGRYUMEL7OTuXUzGYrGOilR3xKIjZaM+a6crdrkTAuZOCUOpViNou5LRpNMgskwd/Kx2GO91d62hQxFY5/Kym+pZCkt7n8SkAwtpbycKqc5W585KRkYTfl5/+/+ifim2IijSchwAyUQGctfP1dLmAF2tDAyoEPVxGPS+EbdkaFJfpbvPFwMIENJezgVURnDjEAGzFB05J2kt8Vuvhc0KQ3qEUiGBRr/Kho2rNM3TSBjRRMn41KX/LfEbWqHZQqRoWWmh5M0tJ/ABIRIRodmzikcTUJY1IsVRctVbqDN0KkID0MwrSiAWksiY7eaOCFWg4g/jcQQazA3Wf/+iaL3DNhSKJPZ4lBkQnQkX92nn+IvODexEOzfuhP1c2DksiKzAQ0hgBZ/in++fxK4nhEmyt137W/KLUXomkycklCpoKkomnSOGDVzr2W8AJFhJbhv44PKkjXXZJL78gMwDC9FzH39QYCMrQGnqbHcMoUMs3oYzfxVkW4jw4zWt62etXHUpIkzPB5BaNI5mHZbydBA59uYEluqc8Vm5ltLRjkAGsKg2ehNbHTiW6mHLUlzTYZMYo5AhiJheF6Hy8eNZMoXIfM1fTMHq2GCZqb39V5kkoWMBg3iaAiZ5K3IUJt5oCE91VrNO9oMjTMGNM34WnFma26K54LsDqwoEDTz96t4Ixlfc1NtGbYo9czcASSuKChoZuGN9QwbuPlWz+ytgcmqbLfMTBnQDFevgXePm0gHlyACxRr4g7sbcJpst0yJMyTQUItQ0Sxe0aw/BpGxGe15oh0CAqA6C0FGBrRaAZP310abwZZAd54s87AKGVLr0UizHQ1ExjIPfaJ2zQPPKMhvluk+NNebB7bMw6pk6M4YBKNBGjS2tQP/Hm1nfq6PgBoyCVms/ChSMNZo0ABk2PSMb4WekBv0lZaGDFt6bEcwQ6kOBZCpfS1nhJumXzzQkaGLSg9XGNN5AnxB0xmsBiDTmU32VNHdCPoQqCUTxwxj+/01r/ij+asOthqADA3APu6FYLsRjPtn1lYjcMybhr1eW0QzRw6GBtg/Y96Jca7M254AMo8wrDd/MNboyZg3fJ0sFmi0tw0iE6ej/jZDsUZPpvc4zPBAo61oQDIPNvfVu8HIV0Cs0ZOhD2X4GGaEPe66xGkgE0/7rDLqg3V2i5UMJaDRkmElg397RCax5uncw0RmhpPG4/1+H+NpE3lKFm5Fh2JhWEum97eamUVNWjfjaSFD8CSr4aUOjZYM3Yrs33CSqDUkiC1kBMFoUg0Z7LczCW9X0cTBH/MTk+ojlD9zHNag+VEvzh6S8W0+j4m1UHX3Ntup5eXKKhrVLhrDHfFERzy2p6BRZX1I8Xzxp8odmrUVDXNiLx/HWNQeYDRWNMxkfI2/k9hje07Xw8xo2Bqgf6sGovpDgqERDQv7Pg6zuSrDzf2DDGj4j7xN2UT9MeEQRJNDr3XxTuxpdscthdDwtz16HWUmtYcEYQiN7q1a3oq96MpxeaFDw18b5+tYUhR/aaTj5UINmkFh5bX4mxEdP1euoFm97dF7cRN3vf9phYZbp8/jAlFCix3XGBKaSsJ0DfFU6vrMHOm97wzMNXxpFn/ZtuspE+kEmwvlJSrB0J+AxvNhgSzhfdtHo/H0zSqgegHNgbHmAuMlRdmBaEQwF4q+VPzMHFS6jQQVD/DOffUZysXTIFyWfOIRTtc8SU9E43AoLO4fuSaYFRpHwUY82OqyYFZHUTo5eVQ6DO26YFZ3+O8H1krH5zpPeU+W1Jfib0VZV0icHbXwNIkB83Gff5+kaulA9yvMbtokn/6Fst9t/lkddH+deQeTKvmE7N/YTb3i4rh0PE/yMdKPjnV7gmferQ4fv95QCdbq6PFHLO63Gk6dKZ99CU+iyvv1tAoqe2yznBwrZ9U7OT7XL9VqH1ExtDXUz7xuhwKpPH176NiFukKdjkMIlVnb1VVOCeXTS4LbrEQKlb8XRN5qdeS8iAdFRVFOKgrype7XfnfQ/TUEsdmgl+YySUnBG7nsS/QXFc52Gg6KspdK1AZV3aAPJTosaOhepeLdpKrL1JysUimy98JCtFQsejzIXO28gSrcZkM5Z2qmqByyFr+hrWg0lXf1fMpXXVfVGxtKUFBQUFBQUFBQUFBQUFBQUFBQUFDQ0/Q/p1JqTrm80AEAAAAASUVORK5CYII=';
  }

  String toString() => '{id: $id, title: $title, realease_date: $releaseDate}';
}
 