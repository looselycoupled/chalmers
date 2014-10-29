module ProjectsHelper

  def display_action(p)
    if p.inactive?
      link_to "Start", provision_project_path(p), { class: 'btn btn-success', role: 'btn' }

    elsif p.provisioning?
      ""

    elsif p.active?
      link_to "Stop", dismantle_project_path(p), { class: 'btn btn-danger', role: 'btn' }

    elsif p.dismantling?
      ""

    end

  end


end
