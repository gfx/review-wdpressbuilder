module ReVIEW
  class WDPRESSBuilder < MARKDOWNBuilder
  end
end

require "review/wdpressbuilder/version"

require 'review/markdownbuilder'

module ReVIEW

  # https://github.com/naoya/md2inao
  class WDPRESSBuilder

    def list_header(id, caption)
      if get_chap.nil?
        puts %Q[●リスト#{@chapter.list(id).number}::#{compile_inline(caption)}]
      else
        puts %Q[●リスト#{get_chap}.#{@chapter.list(id).number}::#{compile_inline(caption)}]
      end
      puts '```'
    end

    def inline_fn(id)
      "(注#{id})"
    end

    def footnote(id, str)
      puts "注#{id}: #{compile_inline(str)}"
      blank
    end
  end
end
