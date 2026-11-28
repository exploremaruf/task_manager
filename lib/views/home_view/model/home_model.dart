class HomeModel {
  bool? success;
  String? message;
  Data? data;

  HomeModel({this.success, this.message, this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Pagination? pagination;
  List<Tasks>? tasks;

  Data({this.pagination, this.tasks});

  Data.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
    if (json['tasks'] != null) {
      tasks = <Tasks>[];
      json['tasks'].forEach((v) {
        tasks!.add(new Tasks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    if (this.tasks != null) {
      data['tasks'] = this.tasks!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pagination {
  int? currentPage;
  bool? hasNext;
  bool? hasPrev;
  int? limit;
  int? totalPages;
  int? totalRecords;

  Pagination(
      {this.currentPage,
        this.hasNext,
        this.hasPrev,
        this.limit,
        this.totalPages,
        this.totalRecords});

  Pagination.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    hasNext = json['has_next'];
    hasPrev = json['has_prev'];
    limit = json['limit'];
    totalPages = json['total_pages'];
    totalRecords = json['total_records'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['has_next'] = this.hasNext;
    data['has_prev'] = this.hasPrev;
    data['limit'] = this.limit;
    data['total_pages'] = this.totalPages;
    data['total_records'] = this.totalRecords;
    return data;
  }
}

class Tasks {
  String? tId;
  String? uuid;
  String? title;
  String? content;
  String? status;
  String? createAt;
  String? updateAt;

  Tasks(
      {this.tId,
        this.uuid,
        this.title,
        this.content,
        this.status,
        this.createAt,
        this.updateAt});

  Tasks.fromJson(Map<String, dynamic> json) {
    tId = json['TId'];
    uuid = json['uuid'];
    title = json['title'];
    content = json['content'];
    status = json['status'];
    createAt = json['create_at'];
    updateAt = json['update_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TId'] = this.tId;
    data['uuid'] = this.uuid;
    data['title'] = this.title;
    data['content'] = this.content;
    data['status'] = this.status;
    data['create_at'] = this.createAt;
    data['update_at'] = this.updateAt;
    return data;
  }
}
