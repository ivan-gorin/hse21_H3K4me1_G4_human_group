# hse21_H3K4me1_G4_human_group

Все участники использовали геном человека, поэтому конвертация из генома мыши не потребовалась.
Все файлы пересечений были объединены с помощью bedtools intersect:
```
bedtools intersect -a H3K4me1_A549.intersect_with_G4.bed -b H3K4me1_GM23338.intersect_with_G4.bed > A549_GM23338_intersect_G4.bed
bedtools intersect -a A549_GM23338_intersect_G4.bed -b H3K4me1_HCT116_intersect_G4.bed > A549_GM23338_HCT116_intersect_G4.bed
```
Затем пики объединены с помощью bedtools merge:
```
sort -k1,1 -k2,2n A549_GM23338_HCT116_intersect_G4.bed | bedtools merge > merged.A549_GM23338_HCT116_intersect_G4.bed
```

# Распределение участков пересечений по длинам
![a](images/len_hist.merged.A549_GM23338_HCT116_intersect_G4.jpg)

# Pie-chart
![a](images/chip_seeker.merged.A549_GM23338_HCT116_intersect_G4.plotAnnoPie.png)
