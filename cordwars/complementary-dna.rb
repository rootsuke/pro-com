# 課題: 与えられたDNAの塩基配列に対して、相補的な塩基配列を求める関数を書きなさい。
# 入出力例: DNA_strand ("ATTGC") -> "TAACG"

def dna_strand_a(dna)
  dic = { A: "T", T: "A", G: "C", C: "G" }
  dna.split('').map { |s| dic[s.to_sym] }.join
end

def dna_strand(dna)
  dic = { "A" => "T", "T" => "A", "G" => "C", "C" => "G" }
  dna.gsub(/[ATGC]/, "A" => "T", "T" => "A", "G" => "C", "C" => "G")
end

puts dna_strand("ATTGC")

