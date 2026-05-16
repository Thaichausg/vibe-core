#!/usr/bin/env node

const { Command } = require('commander');
const fs = require('fs-extra');
const path = require('path');
const chalk = require('chalk');

const program = new Command();

program
  .name('vibe')
  .description('Vibe-Core CLI - Manage your AI Coding Context')
  .version('1.1.0');

// COMMAND: init
program
  .command('init')
  .description('Initialize Vibe-Core scaffold in the current directory')
  .action(async () => {
    try {
      const vibeHub = process.env.VIBE_HUB;
      if (!vibeHub) {
        console.error(chalk.red('Error: VIBE_HUB environment variable is not set.'));
        console.log('Please run the system-setup script first.');
        return;
      }

      const scaffoldPath = path.resolve(vibeHub, '../project-scaffold');
      const destPath = process.cwd();

      console.log(chalk.blue(`Initializing Vibe-Core from: ${scaffoldPath}...`));
      
      await fs.copy(scaffoldPath, destPath, { overwrite: false });
      
      console.log(chalk.green('✔ [SUCCESS] Memory files injected!'));
      console.log(chalk.yellow('Next step: Open CLAUDE_GUIDE.md or paste the init prompt to your AI.'));
    } catch (err) {
      console.error(chalk.red(`Error: ${err.message}`));
    }
  });

// COMMAND: compress
program
  .command('compress')
  .description('Summarize and compress STATE.md to save AI tokens')
  .action(async () => {
    const statePath = path.join(process.cwd(), '.planning', 'STATE.md');
    
    if (!await fs.pathExists(statePath)) {
      console.error(chalk.red('Error: .planning/STATE.md not found in this directory.'));
      return;
    }

    try {
      let content = await fs.readFile(statePath, 'utf8');
      const lines = content.split('\n');
      
      let newContent = [];
      let handoffIndex = -1;
      
      // Basic logic: Find the "Handoff Notes" section
      for (let i = 0; i < lines.length; i++) {
        if (lines[i].includes('## 🤝 Handoff Notes')) {
          handoffIndex = i;
          break;
        }
      }

      if (handoffIndex === -1) {
        console.log(chalk.yellow('No Handoff Notes section found to compress.'));
        return;
      }

      // Keep everything up to the Handoff header
      newContent = lines.slice(0, handoffIndex + 2);
      
      const handoffNotes = lines.slice(handoffIndex + 2).filter(line => line.trim() !== '');
      
      if (handoffNotes.length <= 4) {
        console.log(chalk.cyan('Handoff Notes are already concise. No compression needed.'));
        return;
      }

      // Archive old notes into a summary block
      const oldNotes = handoffNotes.slice(0, handoffNotes.length - 2);
      const latestNotes = handoffNotes.slice(handoffNotes.length - 2);
      
      const summaryDate = new Date().toISOString().split('T')[0];
      newContent.push(`- **[ARCHIVE] - Summary of previous phases (Compressed on ${summaryDate})**:`);
      newContent.push(`  - Successfully processed ${oldNotes.length} previous handoff entries into this archive.`);
      newContent.push('');
      newContent.push(...latestNotes);

      await fs.writeFile(statePath, newContent.join('\n'));
      
      console.log(chalk.green('✔ [SUCCESS] STATE.md has been compressed!'));
      console.log(chalk.gray(`Archived ${oldNotes.length} old notes, kept the 2 most recent entries.`));
    } catch (err) {
      console.error(chalk.red(`Error: ${err.message}`));
    }
  });

program.parse(process.argv);
