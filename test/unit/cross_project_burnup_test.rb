require File.join(File.dirname(__FILE__), 'unit_test_helper')

class CrossProjectBurnupTest < Test::Unit::TestCase

  PROJECT = 'scrum_template_2_1'

  def test_macro_contents
    cross_project_burnup = CrossProjectBurnup.new(nil, project(PROJECT), nil)
    result = cross_project_burnup.execute
    assert result
  end

  def test_macro_contents_with_a_project_group
    cross_project_burnup = CrossProjectBurnup.new(nil, [project(PROJECT), project(PROJECT)], nil)
    result = cross_project_burnup.execute
    assert result
  end

end
