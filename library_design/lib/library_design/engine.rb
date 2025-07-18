module LibraryDesign
  class Engine < ::Rails::Engine
    isolate_namespace LibraryDesign

    # This ensures your assets are included in the asset pipeline
  end
end