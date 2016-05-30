require 'middleman_dato/meta_tags/og_meta_tag'

module MiddlemanDato
  module MetaTags
    class OgType < OgMetaTag
      def buildable?
        true
      end

      def name
        'og:type'
      end

      def value
        if !record
          'website'
        elsif record.singleton?
          'website'
        else
          'article'
        end
      end
    end
  end
end