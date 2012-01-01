module Dag
  #Methods that show the columns for polymorphic DAGs
  module PolyColumns
    def ancestor_type_column_name
      dag_options[:ancestor_type_column]
    end

    def descendant_type_column_name
      dag_options[:descendant_type_column]
    end
  end
end