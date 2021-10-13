module ChuntersHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_chunters_path
    elsif action_name == 'edit'
      chunter_path
    end
  end
end
