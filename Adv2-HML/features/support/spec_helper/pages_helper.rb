Dir[File.join(File.dirname(__FILE__), 'pages/*.rb')].each { |file| require file }

module Pages
  module ExemploPage
    class Exemplo
      def exemplo_page
        Pages::Exemplo.new
      end
    end
  end
end
