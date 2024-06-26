library(rhdf5)


# HDF5 파일 열기
file_path <- "~/Desktop/DF/tmp/VisiumHD/data/Visium_HD_Human_Colon_Cancer_molecule_info.h5"

# 파일 내의 데이터셋 목록 확인
h5ls(file_path)


제공된 HDF5 파일의 구조는 다양한 데이터셋으로 구성되어 있습니다. 각 데이터셋의 이름, 유형, 데이터 클래스, 그리고 차원을 아래 표에 요약하여 정리하였습니다:

````
### HDF5 파일 데이터셋 구조

| 경로/그룹                        | 이름                                      | 유형       | 데이터 클래스 | 차원          |
|---------------------------------|------------------------------------------|------------|----------------|---------------|
| /                               | barcode_idx                               | 데이터셋   | 정수           | 276420392     |
| /                               | barcode_info                              | 그룹       | -              | -             |
| /barcode_info                   | genomes                                   | 데이터셋   | 문자열         | 1             |
| /barcode_info                   | pass_filter                               | 데이터셋   | 정수           | 3 x 8731400   |
| /                               | barcodes                                  | 데이터셋   | 문자열         | 9468111       |
| /                               | count                                     | 데이터셋   | 정수           | 276420392     |
| /                               | feature_idx                               | 데이터셋   | 정수           | 276420392     |
| /                               | features                                  | 그룹       | -              | -             |
| /features                       | _all_tag_keys                             | 데이터셋   | 문자열         | 1             |
| /features                       | feature_type                              | 데이터셋   | 문자열         | 37082         |
| /features                       | genome                                    | 데이터셋   | 문자열         | 37082         |
| /features                       | id                                        | 데이터셋   | 문자열         | 37082         |
| /features                       | name                                      | 데이터셋   | 문자열         | 37082         |
| /features/target_sets           | Visium Human Transcriptome Probe Set v2.0 | 데이터셋   | 정수           | 18085         |
| /                               | gem_group                                 | 데이터셋   | 정수           | 276420392     |
| /                               | library_idx                               | 데이터셋   | 정수           | 276420392     |
| /                               | library_info                              | 데이터셋   | 문자열         | 1             |
| /                               | metrics_json                              | 데이터셋   | 문자열         | 0             |
| /                               | probe_idx                                 | 데이터셋   | 정수           | 276420392     |
| /                               | probes                                    | 그룹       | -              | -             |
| /probes                         | feature_id                                | 데이터셋   | 문자열         | 54580         |
| /probes                         | feature_name                              | 데이터셋   | 문자열         | 54580         |
| /probes                         | filtered_probes                           | 데이터셋   | 열거형         | 54580         |
| /probes                         | included_probes                           | 데이터셋   | 열거형         | 54580         |
| /probes                         | probe_id                                  | 데이터셋   | 문자열         | 54580         |
| /probes                         | region                                    | 데이터셋   | 문자열         | 54580         |
| /                               | umi                                       | 데이터셋   | 정수           | 276420392     |
| /                               | umi_type                                  | 데이터셋   | 정수           | 276420392     |

````
# 특정 데이터셋 읽기
# 'genomes' 데이터셋 읽기
genomes_data <- h5read(file_path, "/probes/probe_id")

# 데이터 출력
print(genomes_data)


# 연습

tmp.data = h5read(file_path, "barcode_idx")
tmp.data
