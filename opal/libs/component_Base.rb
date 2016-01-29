require_relative 'component_helpers'
module Components
	class Base
		def initialize(native)
			@native = native
		end

		def self.render(args = {}, &block)
	    React::RenderingContext.render(self, *args, &block)
	  end

		def self.inherited(child)
			child.include ::React::Component
		end

		def label_for(id,text=nil,hash={})
			label(*{html_for: id, id: "#{id}_label"}.merge!(hash)){text || id}
		end

		def handle event,*args
			field = yield
			field.on(event) {|e|send("handle_#{event}",e,*args)}
			return field
		end

		def handle_response_for request
			request.on :success do |response|
				yield(response)
			end
			request.on :failure do |response|
				# TODO server failure message
			end
		end

	end
end
