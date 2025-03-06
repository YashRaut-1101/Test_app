if defined?(WillPaginate)
    module WillPaginate
      module ActiveRecord
        module RelationMethods
          def total_entries
            @total_entries ||= count(:all)
          end
        end
      end
    end
end
  