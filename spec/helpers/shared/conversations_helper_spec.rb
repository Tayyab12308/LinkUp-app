require "rails_helper"
RSpec.describe Shared::ConversationsHelper, :type => :helper do
  
  context '#group_conv_seen_status' do
    it 'returns unseen-conv status'
      conversation = create(:group_conversation)
      create(:group_message, conversation_id: conversation.id)
      current_user = create(:user)
      view.stub(:current_user).and_return(current_user)
      expect(helper.group_conv_seen_status(conversation).to eq (
        'unseen-conv'
      )
    end
  
    it 'returns an empty string' do
      user = create(:user)
      conversation = create(:group_conversation)
      create(:group_message, conversation_id: conversation.id, user_id: user.id)
      view.stub(:current_user).and_return(user)
      expect(helper.group_conv_seen_status(conversation)).to eq ''
    end
    
    it 'returna an empty string' do
      user = create(:user)
      conversation = create(:group_conversation)
      message = build(:group_message, conversation_id: conversation.id)
      message.seen_by << user.id
      message.save
      view.stub(:current_user).and_return(user)
      expect(helper.group_conv_seen_status(conversation)).to eq ''
    end
  
end