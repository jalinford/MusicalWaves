ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
  #  div :class => "blank_slate_container", :id => "dashboard_default_message" do
  #    span :class => "blank_slate" do
  #      span I18n.t("active_admin.dashboard_welcome.welcome")
  #      small I18n.t("active_admin.dashboard_welcome.call_to_action")
  #    end
  #  end


    panel "Recently Updated Programs" do
      table_for Program.order("updated_at desc").limit(5) do
        column :title do |program|
          link_to program.title, admin_program_path(program)
        end
        column :description do |program|
          program.description.slice(0, 150)
        end
        column("Artists Names") do |program|
          artist_list(program)
          end
      end
      strong { link_to "View All Programs", admin_programs_path }
    end

    columns do
      column do
        panel "Recently Updated Artists" do
          table_for Artist.order("updated_at desc").limit(5) do
            column :name do |artist|
              link_to artist.name, admin_artist_path(artist)
            end
            column :instrument
          end
          strong { link_to "View All Artists", admin_artists_path }
        end
      end
      column do
        panel "Information" do
          para "Let Andrew know if you ever need help with this!"
        end
      end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    end
  end # content
end
