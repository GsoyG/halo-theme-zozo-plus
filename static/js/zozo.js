'use strict';

// back-to-top
$(document).ready((function (_this) {
  return function () {
    let bt
    bt = $('#back_to_top')
    if ($(document).width() > 480) {
      $(window).scroll(function () {
        let st
        st = $(window).scrollTop()
        if (st > 30) {
          bt.css('pointer-events', 'auto')
          return bt.css('opacity', '1')
        } else {
          bt.css('pointer-events', 'none')
          return bt.css('opacity', '0')
        }
      })
      return bt.click(function () {
        $('body,html').animate({
          scrollTop: 0,
        }, 500)
        return false
      })
    }
  }
})(this))

// nav-toggle
$(document).ready((function (_this) {
  return function () {
    let nav,icon
    icon = $('#menu_icon')
    nav = $('#site_nav')
    icon.click(function () {
      nav.slideToggle(250)
    })
  }
})(this))

// dark-mode
let theme,html
theme = localStorage.getItem('theme-mode')
html = $('html')

if (theme === 'dark') {
  html.attr('theme-mode', 'dark')
}
else {
  html.attr('theme-mode', 'light')
}
$(document).ready((function (_this) {
  return function () {
    let darkIcon,lightIcon
    darkIcon = $('#mode_icon_dark')
    lightIcon = $('#mode_icon_light')

    function setDarkMode() {
      lightIcon.css('opacity', '1')
      lightIcon.css('pointer-events', 'auto')
      darkIcon.css('opacity', '0')
      darkIcon.css('pointer-events', 'none')
      html.attr('theme-mode', 'dark')
      localStorage.setItem('theme-mode', 'dark')
    }
    function setLightMode() {
      lightIcon.css('opacity', '0')
      lightIcon.css('pointer-events', 'none')
      darkIcon.css('opacity', '1')
      darkIcon.css('pointer-events', 'auto')
      html.attr('theme-mode', 'light')
      localStorage.setItem('theme-mode', 'light')
    }

    if (theme === 'dark') {
      setDarkMode()
    }
    else {
      setLightMode()
    }

    darkIcon.click(function () {
      setDarkMode()
    })
    lightIcon.click(function () {
      setLightMode()
    })
  }
})(this))
