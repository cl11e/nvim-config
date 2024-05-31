if status is-interactive
    # Commands to run in interactive sessions can go here
end
abbr --add ee exit
abbr --add vv nvim
abbr --add pp pnpm
abbr --add bb ./build.sh
abbr --add t tmux
abbr --add tt pnpm run test
abbr --add gk git checkout
abbr --add g  git clone
abbr --add gt  git pull
abbr --add drrr redis-server --loadmodule ~/opt/search/redisearch.so
abbr --add drrc redis-cli
abbr --add vl pnpm run slicemachine
abbr --add vd pnpm run dev
abbr --add vc pnpm run clean
abbr --add jj pnpm run dev 
abbr --add kk pnpm run build
abbr --add nm cargo run
abbr --add nn cargo run
abbr --add mn cargo test
abbr --add wrr wormhole receive
abbr --add ws wormhole send
abbr --add ww wrangler
abbr --add wd wrangler dev
abbr --add wp wrangler publish
abbr --add vp pnpm run preview
abbr --add gp "git add . --all && git commit -m 'update' && git push"
abbr --add zz "zig build -Dtarget=x86_64-linux -Dcpu=x86_64+avx"
abbr --add zzz zig test
abbr --add config-fish "nvim ~/.config/fish/config.fish"


#set -U GPG_TTY $(tty)

# pnpm
set -gx PNPM_HOME "/home/overfleet/opt/node21/bin/"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

set -gx LIBTORCH "/home/user/opt/libtorch"

# Wasmer
export WASMER_DIR="/home/user/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
