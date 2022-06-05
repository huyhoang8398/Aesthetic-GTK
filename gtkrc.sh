make_gtkrc() {
  local dest="${1}"
  local name="${2}"
  local theme="${3}"
  local color="${4}"
  local size="${5}"
  local ctype="${6}"
  local window="${7}"

  [[ "${color}" == '-Light' ]] && local ELSE_LIGHT="${color}"
  [[ "${color}" == '-Dark' ]] && local ELSE_DARK="${color}"

  local GTKRC_DIR="${SRC_DIR}/main/gtk-2.0"
  local THEME_DIR="${1}/${2}${3}${4}${5}${6}"

  if [[ "${color}" != '-Dark' ]]; then
    case "$theme" in
      '')
        theme_color='#3c84f7'
        ;;
      -Purple)
        theme_color='#AB47BC'
        ;;
      -Pink)
        theme_color='#EC407A'
        ;;
      -Red)
        theme_color='#E53935'
        ;;
      -Orange)
        theme_color='#F57C00'
        ;;
      -Yellow)
        theme_color='#FBC02D'
        ;;
      -Green)
        theme_color='#4CAF50'
        ;;
      -Teal)
        theme_color='#009688'
        ;;
      -Grey)
        theme_color='#464646'
        ;;
    esac
  else
    case "$theme" in
      '')
        theme_color='#5b9bf8'
        ;;
      -Purple)
        theme_color='#BA68C8'
        ;;
      -Pink)
        theme_color='#F06292'
        ;;
      -Red)
        theme_color='#F44336'
        ;;
      -Orange)
        theme_color='#FB8C00'
        ;;
      -Yellow)
        theme_color='#FFD600'
        ;;
      -Green)
        theme_color='#66BB6A'
        ;;
      -Teal)
        theme_color='#4DB6AC'
        ;;
      -Grey)
        theme_color='#DDDDDD'
        ;;
    esac
  fi

  if [[ "$blackness" == 'true' ]]; then
    case "$ctype" in
      '')
        background_light='#FFFFFF'
        background_dark='#0F0F0F'
        background_darker='#121212'
        background_alt='#212121'
        titlebar_light='#F2F2F2'
        titlebar_dark='#030303'
        ;;
    esac
  else
    case "$ctype" in
      '')
        background_light='#FFFFFF'
        background_dark='#2C2C2C'
        background_darker='#3C3C3C'
        background_alt='#464646'
        titlebar_light='#F2F2F2'
        titlebar_dark='#242424'
        ;;
    esac
  fi

  cp -r "${GTKRC_DIR}/gtkrc${ELSE_DARK:-}-default"                              "${THEME_DIR}/gtk-2.0/gtkrc"
  sed -i "s/#FFFFFF/${background_light}/g"                                      "${THEME_DIR}/gtk-2.0/gtkrc"
  sed -i "s/#2C2C2C/${background_dark}/g"                                       "${THEME_DIR}/gtk-2.0/gtkrc"
  sed -i "s/#464646/${background_alt}/g"                                        "${THEME_DIR}/gtk-2.0/gtkrc"

  if [[ "${color}" == '-Dark' ]]; then
    sed -i "s/#5b9bf8/${theme_color}/g"                                         "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#3C3C3C/${background_darker}/g"                                   "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#242424/${titlebar_dark}/g"                                       "${THEME_DIR}/gtk-2.0/gtkrc"
  else
    sed -i "s/#3c84f7/${theme_color}/g"                                         "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#F2F2F2/${titlebar_light}/g"                                      "${THEME_DIR}/gtk-2.0/gtkrc"
  fi
}
