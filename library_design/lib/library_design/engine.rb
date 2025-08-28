module LibraryDesign
  class Engine < ::Rails::Engine
    isolate_namespace LibraryDesign

    initializer "library_design.engine" do |app|
      ActionView::Base.send :include, LibraryDesign::ViewHelper
    end
  end
end