function findConv(conversation_id, type) {
  var messenger_conversations = $('body .conversation');
  if (messenger_conversation.length) {
    return messenger_conversation;
  } else {
    var data_attr = "[data-" + type + "conversation-id='" + conversation_id + "']";
    var conversation = $('body').find(data_attr);
    return conversation;
  }
}

function convRendered(conversation_id, type) {
  if ($('body .conversation').length) {
    return true;
  } else {
    var data_attr = "[data-" + type + "conversation-id='" + conversation_id + "']";
    var conversation = $('body').find(data_attr);
    return conversation.is(':visible'); 
  }
}

function ConvMessagesVisibility(conversation) {
  if ($('body .conversation').length) {
    return true;
  } else {
    var visiblity = conversation.find('.panel-body').is(':visible');
    return visiblity;
  }
}