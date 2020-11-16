enum RequestSortType { feed, trending }

String getRequestSortTypeString(RequestSortType type) {
  return type.toString().split(".")[1];
}

RequestSortType getBookmarkOperation(String type) {
  RequestSortType matchedType = RequestSortType.values.firstWhere((element) => element.toString() == ("RequestSortType." + type));
  return matchedType;
}
