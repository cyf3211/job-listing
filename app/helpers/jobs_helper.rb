module JobsHelper
  def render_job_status(job)
    if job.is_hidden
      content_tag(:span,"", :style=>"color:#f0ad4e", :class => "fa fa-lock")
    else
      content_tag(:span,"",:style=>"color:#5cb85c", :class => "fa fa-globe")
    end
  end
end
