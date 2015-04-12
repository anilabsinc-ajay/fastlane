module Fastlane
  module Actions
    class NotifyAction < Action
      def self.run(params)
        require 'terminal-notifier'

        text = params.join(' ')
        TerminalNotifier.notify(text, title: 'fastlane')
      end

      def self.description
        "Shows a Mac OS X notification"
      end
    end
  end
end
