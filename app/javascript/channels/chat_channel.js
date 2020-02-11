import consumer from "./consumer"

consumer.subscriptions.create("ChatChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("server connected...")
  },

  disconnected() {
    console.log("server disconnected....")
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    var messages = $("#chatbox")
    messages.append(data['message'])
    messages.scrollTop(messages[0].scrollHeight)
    // Called when there's incoming data on the websocket for this channel
  }
});
