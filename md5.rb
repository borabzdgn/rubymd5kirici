## Bismillahirrahmanirrahim
require "digest/md5"
require "benchmark"

hash = ARGV[0]
word = ARGV[1]

if !hash
	puts 'hash girmiyorsunuz veya yanlış format!'
	exit
end

if !word 
    put 'wordlist nerede?'
end

def md5(string) 
	return Digest::MD5.hexdigest(string)
end

puts Benchmark.measure{
File.foreach(word).with_index do |line|
   if hash == md5(line)
	puts "!!! hash kırıldı !!! \n"
	puts "sifre: " + line
   end
end
}
