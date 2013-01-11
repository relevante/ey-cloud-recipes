define :postgresql9_postgis2 do
  dbname_to_use = params[:name]

  if @node[:postgres_version] == "9.2"
    include_recipe "postgresql9_extensions::ext_postgis2_install"

      load_sql_file do
        db_name dbname_to_use
        supported_versions %w[9.2]
        extname "postgis-2.0.2/postgis"
      end

      load_sql_file do
        db_name dbname_to_use
        supported_versions %w[9.2]
        extname "postgis-2.0/spatial_ref_sys"
      end

      load_sql_file do
        db_name dbname_to_use
        supported_versions %w[9.2]
        extname"postgis-1.5/postgis_comments"
      end
  end
end
