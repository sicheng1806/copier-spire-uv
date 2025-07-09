# makefile的学习笔记

`Makefile`是`make`命令的输入文件，Make 使用 makefile 来确定哪些目标文件需要更新，并决定哪些实际上需要更新。

## make规则

Makefile的核心是规则。一个规则的语法如下:

```txt
target ... : prerequisites ...
    recipe
    ...
    ...
```

- 目标（target）： 目标通常是程序生成的文件名，也可以是执行动作的名称，例如clean。
- 先决条件（prerequisite）：执行改规则的先决条件。
- 具体操作过程（recipe）：注意需要在每个具体操作面前使用一个Tab键。

## makefile语法

makefile除了规则语法之外，还提供了一些辅助语法。

- 变量定义: 使用`=`的赋值语句。
- 指令：一个指令是让 make 在读取 makefile 时执行一些特殊操作的指示。
  - 读取另一个 makefile。
  - 根据变量的值决定是否使用或忽略 makefile 的一部分。
  - 从包含多行的逐字字符串中定义一个变量。
- 注释：用`#`开头。
- 隐含规则： 一些make可以自动推断出，因此无需写出具体操作。
