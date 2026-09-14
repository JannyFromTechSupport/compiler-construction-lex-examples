# Lexical Analysis Exercises 

This repository contains practical exercises on **lexical analysis using Flex (Lex)**. The exercises demonstrate how a lexical analyser recognizes and classifies different types of tokens, including integers, identifiers, keywords, operators, and special characters. 

| Student                  | Admission No. |
|--------------------------|---------------|
| Jonyo Janny              | 166885        |
| Ogutu Cindy Atieno       | 158842        |
| Mukoma Dennis Murage     | 139360        |
| Kemoi Kristina Chebet    | 168652        |
| Mapelu Neema Naserian    | 150176        | 

**NB: All code for these exercises can be found in the `Lex tool Examples.pdf` file.**

## Exercises 

### Example 1: Integers and Identifiers 

**Files:** 

* `scanner.l` 
* `scanner` 
* `lex.yy.c` 

The first scanner recognises:

* Integers
* Identifiers
* Whitespace
* Unknown characters

Example input:

```text
age 25
student1 2026
total 500
```

Example output:

```text
IDENTIFIER: age
INTEGER: 25
IDENTIFIER: student1
INTEGER: 2026
IDENTIFIER: total
INTEGER: 500
```

---

### Example 2: Keywords and Operators

**Files:**

* `scanner2.l`
* `scanner2`

This scanner extends the first example by recognising:

* Keywords: `int`, `if`, `else`, `return`
* Integers
* Identifiers
* Assignment operator
* Arithmetic operators
* Unknown characters

The scanner demonstrates how specific lexical patterns can be assigned different token categories.

---

### Example 3: Scanning a Small Program

**Files:**

* `scanner3.l`
* `scanner3`

This scanner further extends token recognition to include common programming language symbols such as:

* `>=`
* Parentheses: `(` and `)`
* Braces: `{` and `}`
* Semicolons: `;`

This demonstrates how a lexer can identify the individual components of a small source program.

---

### Example 4: Lexical Token Counting

**Files:**

* `scanner4.l`
* `scanner4`
* `text.txt`

The final scanner performs lexical analysis on a small C-like program and counts the number of:

* Keywords
* Identifiers
* Numbers
* Operators
* Special characters

Test program:

```c
int age = 20;
float salary = 50000;
if (age > 18) {
    salary = salary + 1000;
}
```

The scanner reads the program from `test.txt` and displays a summary of the lexical analysis results.

## Tools Used

* **Flex (Lex)** - Generates the lexical analyser
* **GCC** - Compiles the generated C source code
* **C** - Programming language used by the generated scanners

## Running the Scanners

For a `.l` file, generate the C source code using:

```bash
flex scanner.l
```

Compile it using:

```bash
gcc lex.yy.c -o scanner
```

Run it using:

```bash
./scanner
```

The same process can be followed for `scanner2.l`, `scanner3.l`, and `scanner4.l`.

For the fourth example, ensure that `test.txt` is in the same directory as the executable because the scanner reads its input from that file.

## Repository Structure

```text
.
├── Lex tool Examples.pdf
├── README.md
├── lex.yy.c
├── scanner
├── scanner.l
├── scanner2
├── scanner2.l
├── scanner3
├── scanner3.l
├── scanner4
├── scanner4.l
└── test.txt
```

## Learning Outcomes

These exercises demonstrate how lexical analysers:

1. Recognise patterns in source code.
2. Classify input into different token types.
3. Ignore whitespace where appropriate.
4. Detect unknown characters.
5. Recognise operators and special characters.
6. Count and summarise tokens found in a source program.

## Screenshots 

<img width="386" height="248" alt="Screenshot 2026-09-14 092552" src="https://github.com/user-attachments/assets/5b626681-76c0-4d23-9d0d-3b7cb5ffbc07" />

<img width="379" height="188" alt="Screenshot 2026-09-14 093552" src="https://github.com/user-attachments/assets/e72cd0aa-0610-4501-b554-951101e66cde" />

<img width="372" height="300" alt="Screenshot 2026-09-14 094521" src="https://github.com/user-attachments/assets/68a39c5f-880c-43da-b6d4-23ba7414e24a" />

<img width="378" height="246" alt="Screenshot 2026-09-14 094841" src="https://github.com/user-attachments/assets/ad08926d-fd30-4c11-adec-4d7042034ac5" />
