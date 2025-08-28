module LibraryDesign
  class Engine < ::Rails::Engine
    isolate_namespace LibraryDesign

    initializer "library_design.engine" do |app|
      ActionView::Base.send :include, LibraryDesign::ListItemCountHelper
      ActionView::Base.send :include, LibraryDesign::PreviousNextHelper
    end
  end
end