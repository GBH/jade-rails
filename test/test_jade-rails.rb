require 'jade-rails'
require 'test/unit'

class JadeTest < Test::Unit::TestCase
  JADE_TEMPLATE_FUNCTION_PATTERN = /^function\s+template\s*\(locals\)\s*\{.*\}$/m

  def test_compile
    template = File.read(File.expand_path('../../vendor/assets/javascripts/jade/sample_template.jade', __FILE__))
    result = Jade.compile(template)
    assert_match(JADE_TEMPLATE_FUNCTION_PATTERN, result)
    assert_no_match(/^\s*<!DOCTYPE html>/, result)
  end

end