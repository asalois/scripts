file_name_1 = "good_ones"
file_out_name = file_name_1 + ".csv"
search_for = "qsmf_output_"
sed_in = %{s/,$//}
iter = 2
run_to = 1512
x =run_to/iter
wait_time = 1

`(echo #{file_name_1} && ls #{search_for}* | cut -d . -f 1 | cut -d _ -f 3 | sort -V) > #{file_out_name}`
#system("cat #{file_out_name}")
#system("rm #{file_out_name}")
puts "#!/bin/bash"
puts "#relaunch file"
for i in 1..x do
    if i*iter > 1000 && (i-1)*iter < 1000
        `python3 ~/scripts/give_me_relaunched.py 1000 #{(i-1)*iter} >  found.txt`
        `cat found.txt | awk -vORS=, '{ print $1 }' | sed #{sed_in} > out.txt`
        if not File.zero?("out.txt")
            system("echo sbatch --array=\`cat out.txt\` qsmf_test_1.slurm")
            puts "sleep #{wait_time}s"
        end
        `python3 ~/scripts/give_me_relaunched.py #{(i)*iter} 1001 >  found.txt`
        `cat found.txt | awk -vORS=, '{ print $1 }' | sed #{sed_in} > out.txt`
        if not File.zero?("out.txt")
            system("echo sbatch --array=\`cat out.txt\` qsmf_test_2.slurm")
            puts "sleep #{wait_time}s"
        end
    else
        `python3 ~/scripts/give_me_relaunched.py #{(i)*iter} #{(i -1)*iter +1} >  found.txt`
        `cat found.txt | awk -vORS=, '{ print $1 }' | sed #{sed_in} > out.txt`
        if not File.zero?("out.txt")
            if i*iter < 1001
                system("echo sbatch --array=\`cat out.txt\` qsmf_test_1.slurm")
            else
                system("echo sbatch --array=\`cat out.txt\` qsmf_test_2.slurm")
            end
            puts "sleep #{wait_time}s"
        end
    end
end
`python3 ~/scripts/make_excel.py`
#`rm #{file_out_name}`
`rm out.txt`
`rm found.txt`
system(%{echo "echo Done"})