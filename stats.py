#!/usr/bin/env python3
# Build Stats Generator

import os
import json
from pathlib import Path

def count_files():
    """Count files in the project"""
    extensions = {
        'Kotlin': '.kt',
        'XML': '.xml',
        'Gradle': '.gradle',
        'Properties': '.properties',
        'Markdown': '.md',
        'Shell': '.sh',
        'Batch': '.bat',
    }
    
    stats = {}
    total = 0
    
    for lang, ext in extensions.items():
        count = len(list(Path('.').rglob(f'*{ext}')))
        stats[lang] = count
        total += count
    
    return stats, total

def calculate_complexity():
    """Calculate project complexity"""
    kt_files = list(Path('.').rglob('*.kt'))
    
    total_lines = 0
    for file in kt_files:
        try:
            with open(file, 'r', encoding='utf-8') as f:
                total_lines += len(f.readlines())
        except:
            pass
    
    return len(kt_files), total_lines

def main():
    print("=" * 50)
    print("  Chat Liyali Zaman - Project Statistics")
    print("=" * 50)
    print()
    
    stats, total = count_files()
    kt_count, lines = calculate_complexity()
    
    print("📊 File Statistics:")
    for lang, count in stats.items():
        print(f"  {lang:15} : {count:3} files")
    print(f"  {'Total':15} : {total:3} files")
    
    print()
    print("📈 Code Statistics:")
    print(f"  Kotlin Files    : {kt_count}")
    print(f"  Lines of Code   : {lines}")
    
    print()
    print("🎯 Project Info:")
    print(f"  Version         : 1.0.0")
    print(f"  Min SDK         : 24 (Android 7.0)")
    print(f"  Target SDK      : 34 (Android 14+)")
    print(f"  Package         : com.chatliyali.chatapp")
    print(f"  App Name        : شات ليالى زمان")
    
    print()
    print("=" * 50)

if __name__ == '__main__':
    main()
