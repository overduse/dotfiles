return {
  cmd = { 'clangd' },
  filetypes = {'c', 'cpp', 'objc', 'objcpp', 'cuda'},
  root_markders = {
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac', -- AutoTools
    '.git',
  }
}
