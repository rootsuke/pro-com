def math_consts(name, value)
  "#{name} = #{value}"
end

constants = [["π", Math::PI], ["e", Math::E]]

constants.each do |constant|
  puts math_consts(*constant)
end

def splatter(hoge, **arg)
  p hoge
  p arg
  piyo = arg[:piyo]
  p piyo
end

splatter('hoge', foo: 'foo', piyo: 'piyo')
