require "securerandom"

module Jekyll
    class LeafletMarker < Liquid::Tag

        def initialize(tag_name, input, tokens)
            super
            if input.empty?
                @input = '{}'
            else
                @input = input
            end
        end

        def render(context)
            '{id: "' + SecureRandom.hex + '",
              type: "LeafletMarker",
              value: ' + @input + '},'
        end
    end
end

Liquid::Template.register_tag('leaflet_marker', Jekyll::LeafletMarker)