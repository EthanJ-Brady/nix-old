{ pkgs, ... }:

{
    home.packages = with pkgs; [
        todoist 
        todoist-electron
    ];

    programs.zsh.shellAliases.todoist = "todoist --header --color --indent";
    programs.zsh.shellAliases.todo = "todoist --header --color --indent l -f \"(@agendas | @anywhere | @calls | @computer | @errands | @home | @listen | @read | @school | @work)\"";
}
