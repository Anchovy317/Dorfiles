# ~/.tmux/plugins/mi-timer/mi-timer.tmux

# Variables para el estado (usamos /tmp/ para simplicidad)
setenv -g TIMER_STATE_FILE "/tmp/tmux-mi-timer.state"
setenv -g TIMER_DISPLAY_FILE "/tmp/tmux-mi-timer"

# Función para actualizar la barra (se ejecuta cada segundo via status-interval)
run-shell 'echo "" > "$TIMER_DISPLAY_FILE"'  # inicializa vacío

# Atajo: prefix + T → toggle timer (countup simple)
bind-key T run-shell '
  if [ -f "$TIMER_STATE_FILE" ]; then
    rm -f "$TIMER_STATE_FILE"
    echo "" > "$TIMER_DISPLAY_FILE"
    tmux display "Timer reset!"
  else
    date +%s > "$TIMER_STATE_FILE"
    tmux display "Timer started!"
  fi
'

# Atajo: prefix + R → reset
bind-key R run-shell 'rm -f "$TIMER_STATE_FILE" "$TIMER_DISPLAY_FILE"; tmux display "Timer borrado!"'

# En tu status-right (añádelo manualmente en tmux.conf)
# #(while true; do if [ -f "$TIMER_STATE_FILE" ]; then start=$(cat "$TIMER_STATE_FILE"); now=$(date +%s); elapsed=$((now - start)); printf "⏱️ %02d:%02d " $((elapsed/60)) $((elapsed%60)); else echo ""; fi; sleep 1; done) &
