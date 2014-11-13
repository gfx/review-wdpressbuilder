module ReVIEW
  class WDPRESSBuilder < MARKDOWNBuilder
  end
end

require "review/wdpressbuilder/version"

require 'review/markdownbuilder'

module ReVIEW

  # https://github.com/naoya/md2inao
  class WDPRESSBuilder

    # @override
    def headline(level, label, caption)
      blank
      prefix = "#" * (level - 1)
      puts "#{prefix} #{caption}"
      blank
    end

    # @Override
    def paragraph(lines)
      p = lines.join
      unless /^　/ =~ p
        p = '　' + p
      end
      puts p
      blank
    end

    # @override
    def list_header(id, caption)
      blank
      puts '```'
      if get_chap.nil?
        puts %Q[●リスト#{@chapter.list(id).number}::#{compile_inline(caption)}]
      else
        puts %Q[●リスト#{get_chap}.#{@chapter.list(id).number}::#{compile_inline(caption)}]
      end
    end

    # @override
    def inline_fn(id)
      "(注#{@chapter.footnote(id).number})"
    end

    # @override
    def footnote(id, str)
      puts "(注#{@chapter.footnote(id).number}: #{compile_inline(str)})"
      blank
    end
  end
end
