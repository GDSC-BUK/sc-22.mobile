import "package:recogram/services/client.dart";

class ForumService {
  Future allMessaegs() async {
    return [
      {
        'user': 'John Doe',
        'messsages': '',
      }
    ];
  }

  // creates client instance to connect to forum service
  var client = Client("https://sc-22-forum-service.herokuapp.com/");

  Map<String, String> headers = {
    "Content-Type": "application/json",
    "Authorization": "Token some-random-token"
  };

  // discussion endpoints

  // POST /discussion/
  startDiscussion(Map<String, String> discussionData) {
    var response = client.post("discussion/", discussionData, headers);

    return response.toString();
  }

  // GET /discusssion/
  getDiscusssions() {
    var response = client.get("discussion/", headers);

    return response.toString();
  }

  // PUT /discussion/:discusssion_id/
  updateDiscussion(String discussionId, Map<String, String> discussionData) {
    var response = client.put("discussion/", discussionData, headers);

    return response.toString();
  }

  // GET /discussion/:discussion_id/
  getDiscussion(String discussionId) {
    var response = client.get("discussion/$discussionId/", headers);

    return response.toString();
  }

  // DELETE /discussion/:discussion_id/
  deleteDiscussion(String discussionId) {
    var response = client.delete("discussion/$discussionId/", headers);

    return response.toString();
  }

  // reply endpoints

  // POST /reply/:discussion_id/new/
  replyDiscussion(
      String discussionId, Map<String, String> discussionReplyData) {
    var response =
        client.post("reply/$discussionId/new/", discussionReplyData, headers);

    return response.toString();
  }

  // GET /reply/:reply_id/
  getDiscussionReply(String replyId) {
    var response = client.get("reply/$replyId/", headers);

    return response.toString();
  }

  // PUT /reply/:reply_id/
  updateDiscussionReply(
      String replyId, Map<String, String> discussionReplyData) {
    var response = client.put("reply/$replyId/", discussionReplyData, headers);

    return response.toString();
  }

  // DELETE /reply/:reply_id
  deleteDiscussionReply(String replyId) {
    var response = client.delete("reply/$replyId/", headers);

    return response.toString();
  }
}
