module MessagesHelper
  def self_or_other(message)
    message.user == User.first ? "self" : "other"
  end

  def message_interlocutor(message)
    message.user == message.conversation.sender ? message.conversation.sender : message.conversation.recipient
  end
end