class ArchiveController < ApplicationController
  def index
    @archive_port_calls = PortCall.where(terminal_id: current_user.terminal_id).where('last_line <= ?', DateTime.now)
  end
end
