void main() {
  Search search = Search();
  search.searchData("tarek");
}

class Search {
  Future<void> searchData(String query) async {
    List<Map<String, dynamic>> data = [
      {
        'id': 1,
        'name': 'Tarek',
        'email': '',
      },
      {
        'id': 1,
        'name': 'Tarek',
        'email': '',
      },
      {
        'id': 2,
        'name': 'Ali',
        'email': '',
      },
      {
        'id': 3,
        'name': 'Ahmed',
        'email': '',
      },
      {
        'id': 4,
        'name': 'Mohamed',
        'email': '',
      },
      {
        'id': 5,
        'name': 'Sara',
        'email': '',
      },
      {
        'id': 6,
        'name': 'Hassan',
        'email': '',
      },
      {
        'id': 7,
        'name': 'Fatma',
        'email': '',
      },
      {
        'id': 8,
        'name': 'Omar',
        'email': '',
      },
      {
        'id': 9,
        'name': 'Yasmin',
        'email': '',
      },
      {
        'id': 10,
        'name': 'Ali',
        'email': '',
      },
    ];
    var newData = data.where((element) {
      return element['name']
          .toString()
          .toLowerCase()
          .contains(query.toLowerCase());
    }).toList();
    print('Search results: $newData');
  }
}
