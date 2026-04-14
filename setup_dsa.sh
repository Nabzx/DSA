#!/usr/bin/env bash
set -e

ROOT="dsa"

mkdir -p "$ROOT"/{0_notes,1_patterns,2_leetcode,3_revision,4_mocks}
mkdir -p "$ROOT/1_patterns"/{sliding_window,two_pointers,binary_search,dfs_bfs,dynamic_programming,backtracking}

create_notebook() {
  file=$1
  title=$2

  if [ ! -f "$file" ]; then
    printf '{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": ["# %s"]
  },
  {
   "cell_type": "code",
   "metadata": {},
   "execution_count": null,
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {},
 "nbformat": 4,
 "nbformat_minor": 5
}' "$title" > "$file"
  fi
}

# Notes
create_notebook "$ROOT/0_notes/big_o.ipynb" "Big O"
create_notebook "$ROOT/0_notes/recursion.ipynb" "Recursion"
create_notebook "$ROOT/0_notes/binary_search.ipynb" "Binary Search"
create_notebook "$ROOT/0_notes/graphs.ipynb" "Graphs"

# Patterns
for p in sliding_window two_pointers binary_search dfs_bfs dynamic_programming backtracking; do
  create_notebook "$ROOT/1_patterns/$p/theory.ipynb" "$p theory"
  create_notebook "$ROOT/1_patterns/$p/template.ipynb" "$p template"
  create_notebook "$ROOT/1_patterns/$p/practice.ipynb" "$p practice"
done

# Leetcode
create_notebook "$ROOT/2_leetcode/blind_75.ipynb" "Blind 75"
create_notebook "$ROOT/2_leetcode/neetcode_150.ipynb" "Neetcode 150"
create_notebook "$ROOT/2_leetcode/daily_practice.ipynb" "Daily Practice"

# Revision
create_notebook "$ROOT/3_revision/weak_problems.ipynb" "Weak Problems"
create_notebook "$ROOT/3_revision/must_revisit.ipynb" "Must Revisit"

# Mocks
create_notebook "$ROOT/4_mocks/mock1.ipynb" "Mock 1"
create_notebook "$ROOT/4_mocks/mock2.ipynb" "Mock 2"

echo "Done"