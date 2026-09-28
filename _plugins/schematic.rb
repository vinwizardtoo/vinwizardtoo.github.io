# Renders a project's `schematic:` front matter (a list of steps with
# `label`, optional `sub` and `tip`) as an inline SVG flow diagram.
#
#   {% schematic project %}              static thumbnail (project cards)
#   {% schematic page interactive %}     focusable steps with tooltips
#
# Steps snake through a 2-column grid; colours come from the theme's CSS
# variables (see _sass/_projects.scss), so it follows light/dark mode.
require "cgi"

module Jekyll
  class SchematicTag < Liquid::Tag
    COLS = 2
    W = 200
    H = 64
    GAP_X = 44
    GAP_Y = 36
    PAD = 10

    def initialize(tag_name, markup, tokens)
      super
      @var, flag = markup.split
      @interactive = flag == "interactive"
    end

    def render(context)
      doc = context[@var]
      steps = doc && doc["schematic"]
      return "" unless steps.is_a?(Array) && !steps.empty?

      cols = [steps.size, COLS].min
      rows = (steps.size + COLS - 1) / COLS
      width = cols * W + (cols - 1) * GAP_X + 2 * PAD
      height = rows * H + (rows - 1) * GAP_Y + 2 * PAD
      uid = "s" + (doc["slug"] || doc["title"]).to_s.gsub(/\W+/, "")[0, 24] + (@interactive ? "i" : "")
      boxes = steps.each_index.map { |i| box(i) }

      arrows = (0...steps.size - 1).map { |i| arrow(boxes[i], boxes[i + 1], uid) }.join
      nodes = steps.each_with_index.map { |s, i| node(s, boxes[i]) }.join
      title = CGI.escapeHTML(steps.map { |s| s["label"] }.join(" → "))

      svg = +%(<svg class="schematic#{@interactive ? " schematic-interactive" : ""}" viewBox="0 0 #{width} #{height}" )
      svg << (@interactive ? %(role="group" aria-label="Schematic: #{title}">) : %(aria-hidden="true" focusable="false">))
      svg << %(<defs><marker id="#{uid}-arrow" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path class="schematic-arrowhead" d="M0 0L10 5L0 10z"/></marker></defs>)
      svg << arrows << nodes << "</svg>"
      return svg unless @interactive

      %(<figure class="schematic-figure">#{svg}<figcaption class="schematic-tip" aria-live="polite">Hover, tap or tab to a step to see what it does.</figcaption></figure>) +
        %(<script defer src="#{context.registers[:site].baseurl}/assets/js/schematic.js"></script>)
    end

    private

    # Snake layout: even rows run left to right, odd rows right to left.
    def box(i)
      row, col = i.divmod(COLS)
      col = COLS - 1 - col if row.odd?
      { x: PAD + col * (W + GAP_X), y: PAD + row * (H + GAP_Y) }
    end

    def arrow(a, b, uid)
      if a[:y] == b[:y]
        y = a[:y] + H / 2
        x1, x2 = b[:x] > a[:x] ? [a[:x] + W, b[:x]] : [a[:x], b[:x] + W]
        line(x1 + 3, y, x2 - (b[:x] > a[:x] ? 3 : -3), y, uid)
      else
        x = a[:x] + W / 2
        line(x, a[:y] + H + 3, x, b[:y] - 3, uid)
      end
    end

    def line(x1, y1, x2, y2, uid)
      %(<line class="schematic-edge" x1="#{x1}" y1="#{y1}" x2="#{x2}" y2="#{y2}" marker-end="url(##{uid}-arrow)"/>)
    end

    def node(step, b)
      label = CGI.escapeHTML(step["label"].to_s)
      sub = step["sub"] && CGI.escapeHTML(step["sub"].to_s)
      tip = CGI.escapeHTML(step["tip"].to_s)
      cx = b[:x] + W / 2
      ly = sub ? b[:y] + 27 : b[:y] + H / 2 + 6
      attrs = @interactive && !tip.empty? ? %( tabindex="0" data-tip="#{label}: #{tip}") : ""
      g = +%(<g class="schematic-node"#{attrs}>)
      g << %(<title>#{label}#{tip.empty? ? "" : ": " + tip}</title>) if @interactive
      g << %(<rect x="#{b[:x]}" y="#{b[:y]}" width="#{W}" height="#{H}" rx="10"/>)
      g << %(<text class="schematic-label" x="#{cx}" y="#{ly}" text-anchor="middle">#{label}</text>)
      g << %(<text class="schematic-sub" x="#{cx}" y="#{b[:y] + 48}" text-anchor="middle">#{sub}</text>) if sub
      g << "</g>"
    end
  end
end

Liquid::Template.register_tag("schematic", Jekyll::SchematicTag)
