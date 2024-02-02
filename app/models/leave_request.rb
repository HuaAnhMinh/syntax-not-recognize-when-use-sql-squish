# frozen_string_literal: true

class LeaveRequest < ApplicationRecord
  scope :error_here, lambda { |start_date, end_date, day_part|
    statement =
      <<-SQL.squish
        (leave_requests.day_part IS NULL OR leave_requests.day_part = :day_part) AND
        leave_requests.start_date <= :end_date AND leave_requests.end_date >= :start_date
      SQL
    where(statement, start_date: start_date, end_date: end_date, day_part: day_part)
  }
end
