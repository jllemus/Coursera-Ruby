module WillPaginateHelper
    class RootedLinkRenderer < WillPaginate::ActionView::LinkRenderer
      protected
      def link(text, target, attributes = {})
        if target.is_a? Fixnum
          attributes[:rel] = ""
          target = "/?page=#{target}"
        end
        attributes[:href] = target
        tag(:a, text, attributes)
      end
    end
  end