module Whodunnit
  module ApplicationHelper
    def create_edit_entry(item, action = :unknown, custom = nil, by = nil)
      Edit.create(by: (current_user || by), item: item, action: action, ip_address: request.remote_ip, custom: custom.to_s)
    end

    def created_by(e)
      Edit.where(item: e, action: Edit.actions[:a_create]).first.by.presence rescue nil || '_Not found_'
    end

    def last_edit_at(e)
      Edit.where(item: e).first.created_at rescue nil || '_Not found_'
    end

    def last_edit_by(e)
      Edit.where(item: e).first.by.presence rescue nil || '_Not found_'
    end

    def total_edits_on(e)
      Edit.where(item: e).count
    end
  end
end
