.PHONY: pre, lex-analysis, gram-analysis-txt, gram-analysis-pho, dot-generation, ir-gcc, mcode-generation, code-optimization, code-generation, S-to-exe, asm-generation, obj-generation, antiobj, exe, antiexe
all: pre lex-analysis gram-analysis-pho mcode-generation code-generation S-to-exe
#预处理
pre:
	g++ main.cpp -E -o main.i

#词法分析
lex-analysis:
	clang -E -Xclang -dump-tokens main.cpp >tokens.log 2>&1

gram-analysis-txt:
	g++ -fdump-tree-original-raw lab1.cpp

#语法分析
gram-analysis-pho:
	clang -E -Xclang -ast-dump main.cpp >tree.log 2>&1

#CFG图生成
dot-generation:
	g++ -O0 -fdump-tree-all-graph main.cpp

ir-gcc:
	g++ -O2 -fdump-rtl-all-graph lab1.cpp

#llvm中间代码生成
mcode-generation:
	clang -S -emit-llvm main.cpp -o main.ll

#代码优化
code-optimization:
	llc -print-before-all -print-after-all main.ll > main1.ll 2>&1

#代码生成
code-generation:
	llc main.ll -o main.S

#代码生成结果生成可执行文件
S-to-exe:
	clang++ main.S -o main

#编译器总功能
asm-generation:
	g++ -O0 -o main.S -S -masm=att main.i

#汇编器
obj-generation:
	g++ -O0 -c -o main.o main.S

antiobj:
	objdump -d main.o >main-anti-obj.S
	nm main.o > main-nm-obj.txt

#链接器
exe:
	g++ -O0 -o main main.o

antiexe:
	objdump -d main>main-anti-exe.S
	nm main>main-nm-exe.txt
