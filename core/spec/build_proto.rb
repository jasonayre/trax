versions ||= []

(0..9).to_a.repeated_permutation(3).to_a.each do |v|
  versions << v.join("")
end

puts versions.inspect

::File.open("version.proto", "w") do |f|
  versions.each_with_index do |version, i|
      f << "\nV#{version} = #{i};"
  end
end