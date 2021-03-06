## -----*----- Makefile -----*----- ##

# 音源分離（録音->分離）
exec:
	@python ./melbank.py

# 音源分離（リアルタイム）
realtime:
	@python ./realtime.py

# アナライザ（リアルタイム）
analyzer:
	@python ./spectrum_analyzer.py

# 音声録音
record:
	@python ./lib/scripts/recording.py

# 教師データの元を録音
teach.record:
	@python ./make_teacher.py

# 教師データを作成
teach.build:
	@python ./lib/scripts/shift.py

# 学習
train:
	@python ./train.py