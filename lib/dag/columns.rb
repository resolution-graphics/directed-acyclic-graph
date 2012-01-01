module Dag

  #Methods that show columns
  module Columns
      def ancestor_id_column_name
        dag_options[:ancestor_id_column]
      end

      def descendant_id_column_name
        dag_options[:descendant_id_column]
      end

      def direct_column_name
        dag_options[:direct_column]
      end

      def count_column_name
        dag_options[:count_column]
      end

      def dag_polymorphic?
        dag_options[:polymorphic]
      end
    end

end