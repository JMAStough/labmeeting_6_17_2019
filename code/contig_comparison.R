library(tidyverse)

vlp_qc <- read_tsv("data/vlp_contig_qc.tsv")
whole_qc <- read_tsv("data/whole_contig_qc.tsv")
hannigvlp_qc <- read_tsv("data/hannigan_vlp_assembly_contig_qc.tsv")
hannigwhole_qc <- read_tsv("data/hannigan_assembly_whole_contig_qc.tsv")
covlp_qc <- read_tsv("data/vlp_coassembly_contig_qc.tsv")

contigqc <- bind_rows("vlp" = vlp_qc, "whole" = whole_qc, "hannig_vlp" = hannigvlp_qc, "hannig_whole" = hannigwhole_qc,
                        "coassembly" = covlp_qc, .id="id")

num_scaffolds <- ggplot(contigqc, aes(x = id, y = n_scaffolds)) +
  geom_col() +
  labs(x = NULL, y = "Number of Scaffolds") +
  theme_classic()

ggsave("figures/num_scaffolds.png", num_scaffolds)

n50_scaffolds <- ggplot(contigqc, aes(x = id, y = scaf_N50)) +
  geom_col() +
  labs(x = NULL, y = "N50") +
  theme_classic()

ggsave("figures/n50.png", plot = n50_scaffolds)

l50_scaffolds <- ggplot(contigqc, aes(x = id, y = scaf_L50)) +
  geom_col() +
  labs(x = NULL, y = "L50") +
  theme_classic()

ggsave("figures/l50.png", plot = l50_scaffolds)

n90_scaffolds <- ggplot(contigqc, aes(x = id, y = scaf_N90)) +
  geom_col() +
  labs(x = NULL, y = "N90") +
  theme_classic()

ggsave("figures/n90.png", plot = n90_scaffolds)

l90_scaffolds <- ggplot(contigqc, aes(x = id, y = scaf_L90)) +
  geom_col() +
  labs(x = NULL, y = "L90") +
  theme_classic()

ggsave("figures/l90.png", plot = l90_scaffolds)

assembly_score <- ggplot(contigqc, aes(x = id, y = asm_score)) +
  geom_col() +
  labs(x = NULL, y = "Assembly Score") +
  theme_classic()

ggsave("figures/assembly_score.png", plot = assembly_score)

max_scaffold <- ggplot(contigqc, aes(x = id, y = scaf_max)) +
  geom_col() +
  labs(x = NULL, y = "BP") +
  theme_classic()

ggsave("figures/max_scaffold.png", plot = max_scaffold)

scaf_over_50k <- ggplot(contigqc, aes(x = id, y = scaf_n_gt50K)) +
  geom_col() +
  labs(x = NULL, y = "Number of Scaffolds over 50kbp") +
  theme_classic()

ggsave("figures/scaf_over_50k.png", plot = scaf_over_50k)

num_bases_over_50k <- ggplot(contigqc, aes(x = id, y = scaf_l_gt50k)) +
  geom_col() +
  labs(x = NULL, y = "Number of Bases in Scaffolds over 50kbp") +
  theme_classic()

ggsave("figures/bases_over_50k.png", plot = num_bases_over_50k)