# この makefile は、msys や cygwin などの Unix 互換環境上で利用することを想定している。
# ビルドには xdev68k が必要。
# https://github.com/yosshin4004/xdev68k

# 必要な環境変数が定義されていることを確認する。
ifndef XDEV68K_DIR
	$(error ERROR : XDEV68K_DIR is not defined.)
endif

# デフォルトサフィックスを削除
.SUFFIXES:

# 各種コマンド短縮名
CXX = ${XDEV68K_DIR}/m68k-toolchain/bin/m68k-elf-g++
CC = ${XDEV68K_DIR}/m68k-toolchain/bin/m68k-elf-gcc
GAS2HAS = perl ${XDEV68K_DIR}/util/x68k_gas2has.pl -cpu 68000 -inc doscall.inc -inc iocscall.inc
RUN68 = ${XDEV68K_DIR}/run68/run68
HAS = $(RUN68) ${XDEV68K_DIR}/x68k_bin/HAS060.X
#HLK = $(RUN68) ${XDEV68K_DIR}/x68k_bin/hlk301.x
HLK = $(RUN68) ${XDEV68K_DIR}/x68k_bin/LK.X

# 実行ファイル名
TARGET_FILE = KMDGEN.X

# Document file
DOCUMENT_FILE = KMDGEN.DOC

# Distribution package 
PACKAGE_FILE = ../KMDGN010.ZIP

# aubio library path
AUBIO_DIR = ../aubio-0.4.9/src

# ヘッダ検索パス
INCLUDE_FLAGS = -I${XDEV68K_DIR}/include/xc -I${XDEV68K_DIR}/include/xdev68k -I${AUBIO_DIR}

# コンパイルフラグ
COMMON_FLAGS = -m68000 -Os $(INCLUDE_FLAGS)
#COMMON_FLAGS = -m68060 -msoft-float -Os $(INCLUDE_FLAGS)
CFLAGS = $(COMMON_FLAGS) -fno-conserve-stack -Wno-builtin-declaration-mismatch -fcall-used-d2 \
				-fexec-charset=cp932 -fcall-used-a2 -fverbose-asm \
				-D_TIME_T_DECLARED -D_CLOCK_T_DECLARED \
				-DHAVE_CONFIG_H -DHAVE_AUBIO_DOUBLE=1

# *.c ソースファイル
C_SRCS = himem.c main.c

# *.s ソースファイル
ASM_SRCS = 
#nas_adpcmlib.s

# *.h source files
HEADER_SRCS = himem.h kmdgen.h
#himem.h pcm.h adpcm.h nas_macro.h nas_adpcm.h kmdgen.h

# リンク対象のライブラリファイル
LIBS =\
	${XDEV68K_DIR}/lib/xc/CLIB.L \
	${XDEV68K_DIR}/lib/xc/DOSLIB.L \
	${XDEV68K_DIR}/lib/xc/IOCSLIB.L \
	${XDEV68K_DIR}/lib/xc/FLOATFNC.L \
	${AUBIO_DIR}/io/_build/audio_unit.o \
	${AUBIO_DIR}/io/_build/ioutils.o \
	${AUBIO_DIR}/io/_build/source_s44read.o \
	${AUBIO_DIR}/io/_build/source_wavread.o \
	${AUBIO_DIR}/io/_build/source.o \
	${AUBIO_DIR}/onset/_build/onset.o \
	${AUBIO_DIR}/onset/_build/peakpicker.o \
	${AUBIO_DIR}/spectral/_build/awhitening.o \
	${AUBIO_DIR}/spectral/_build/dct_accelerate.o \
	${AUBIO_DIR}/spectral/_build/dct_fftw.o \
	${AUBIO_DIR}/spectral/_build/dct_ipp.o \
	${AUBIO_DIR}/spectral/_build/dct_ooura.o \
	${AUBIO_DIR}/spectral/_build/dct_plain.o \
	${AUBIO_DIR}/spectral/_build/dct.o \
	${AUBIO_DIR}/spectral/_build/fft.o \
	${AUBIO_DIR}/spectral/_build/filterbank_mel.o \
	${AUBIO_DIR}/spectral/_build/filterbank.o \
	${AUBIO_DIR}/spectral/_build/mfcc.o \
	${AUBIO_DIR}/spectral/_build/ooura_fft8g.o \
	${AUBIO_DIR}/spectral/_build/phasevoc.o \
	${AUBIO_DIR}/spectral/_build/specdesc.o \
	${AUBIO_DIR}/spectral/_build/statistics.o \
	${AUBIO_DIR}/spectral/_build/tss.o \
	${AUBIO_DIR}/tempo/_build/beattracking.o \
	${AUBIO_DIR}/tempo/_build/tempo.o \
	${AUBIO_DIR}/temporal/_build/a_weighting.o \
	${AUBIO_DIR}/temporal/_build/biquad.o \
	${AUBIO_DIR}/temporal/_build/c_weighting.o \
	${AUBIO_DIR}/temporal/_build/filter.o \
	${AUBIO_DIR}/temporal/_build/resampler.o \
	${AUBIO_DIR}/utils/_build/hist.o \
	${AUBIO_DIR}/utils/_build/log.o \
	${AUBIO_DIR}/utils/_build/parameter.o \
	${AUBIO_DIR}/utils/_build/scale.o \
	${AUBIO_DIR}/utils/_build/strutils.o \
	${AUBIO_DIR}/_build/cvec.o \
	${AUBIO_DIR}/_build/fmat.o \
	${AUBIO_DIR}/_build/fvec.o \
	${AUBIO_DIR}/_build/lvec.o \
	${AUBIO_DIR}/_build/mathutils.o \
	${AUBIO_DIR}/_build/musicutils.o \
	${AUBIO_DIR}/_build/vecutils.o \
	${XDEV68K_DIR}/lib/m68k_elf/m68000/libgcc.a

#	${AUBIO_DIR}/notes/_build/notes.o \
	${AUBIO_DIR}/pitch/_build/pitch.o \
	${AUBIO_DIR}/pitch/_build/pitchfcomb.o \
	${AUBIO_DIR}/pitch/_build/pitchmcomb.o \
	${AUBIO_DIR}/pitch/_build/pitchschmitt.o \
	${AUBIO_DIR}/pitch/_build/pitchspecacf.o \
	${AUBIO_DIR}/pitch/_build/pitchyin.o \
	${AUBIO_DIR}/pitch/_build/pitchyinfast.o \
	${AUBIO_DIR}/pitch/_build/pitchyinfft.o \
 	${AUBIO_DIR}/synth/_build/sampler.o \
	${AUBIO_DIR}/synth/_build/wavetable.o \

# 中間ファイル生成用ディレクトリ
INTERMEDIATE_DIR = _build

# オブジェクトファイル
OBJS =	$(addprefix $(INTERMEDIATE_DIR)/,$(patsubst %.c,%.o,$(C_SRCS))) \
	$(addprefix $(INTERMEDIATE_DIR)/,$(patsubst %.s,%.o,$(ASM_SRCS)))

# HLK に入力するリンクリスト
HLK_LINK_LIST = $(INTERMEDIATE_DIR)/_lk_list.tmp

# デフォルトのターゲット
all : ${INTERMEDIATE_DIR}/$(TARGET_FILE)

# 中間生成物の削除
clean : 
	rm -f $(TARGET_FILE)
	rm -rf $(INTERMEDIATE_DIR)

# 実行ファイルの生成
#	HLK に長いパス文字を与えることは難しい。
#	回避策としてリンク対象ファイルを $(INTERMEDIATE_DIR) 以下にコピーし、
#	短い相対パスを用いてリンクを実行させる。
${INTERMEDIATE_DIR}/$(TARGET_FILE) : $(OBJS)
	mkdir -p $(INTERMEDIATE_DIR)
	rm -f $(HLK_LINK_LIST)
	@for FILENAME in $(OBJS); do\
		echo $$FILENAME >> $(HLK_LINK_LIST); \
        done
	@for FILENAME in $(LIBS); do\
		cp $$FILENAME $(INTERMEDIATE_DIR)/`basename $$FILENAME`; \
		echo $(INTERMEDIATE_DIR)/`basename $$FILENAME` >> $(HLK_LINK_LIST); \
        done
	$(HLK) -i $(HLK_LINK_LIST) -o ${INTERMEDIATE_DIR}/$(TARGET_FILE)
	rm -f tmp*.\$$\$$\$$

# *.c ソースのコンパイル
$(INTERMEDIATE_DIR)/%.o : %.c Makefile $(HEADER_SRCS)
	mkdir -p $(INTERMEDIATE_DIR)
	$(CC) -S $(CFLAGS) -o $(INTERMEDIATE_DIR)/$*.m68k-gas.s $<
	$(GAS2HAS) -i $(INTERMEDIATE_DIR)/$*.m68k-gas.s -o $(INTERMEDIATE_DIR)/$*.s
	rm -f $(INTERMEDIATE_DIR)/$*.m68k-gas.s
	$(HAS) -e -u -w0 $(INCLUDE_FLAGS) $(INTERMEDIATE_DIR)/$*.s -o $(INTERMEDIATE_DIR)/$*.o

# *.s ソースのアセンブル
$(INTERMEDIATE_DIR)/%.o : %.s Makefile ${HEADER_SRCS}
	mkdir -p $(INTERMEDIATE_DIR)
	$(HAS) -e -u -w0 $(INCLUDE_FLAGS) $*.s -o $(INTERMEDIATE_DIR)/$*.o

package:
	zip -j ${PACKAGE_FILE} ${INTERMEDIATE_DIR}/${TARGET_FILE} ${DOCUMENT_FILE} 
