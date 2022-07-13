<div class="nav_container animated fadeInDown">
  <div class="site_nav" id="site_nav">
    <ul>
      <@menuTag method="list">
        <#if menus?? && menus?size gt 0>
            <#list menus?sort_by('priority') as menu>
              <li>
                <a href="${menu.url!}">${menu.name!}</a>
              </li>
            </#list>
        </#if>
      </@menuTag>
    </ul>
  </div>
  <div class="menu_icon">
    <#if settings.theme == "none">
      <script type="text/javascript"> // auto dark mode
        let date = new Date();
        let timeMinutesNow = date.getHours() * 60 + date.getMinutes();

        let dateTimeSet = '${settings.theme_time}'.split('-');
        let minutesDarkStart = dateTimeSet[0].split(':')[0] * 60 + parseInt(dateTimeSet[0].split(':')[1]);
        let minutesDarkEnd = dateTimeSet[1].split(':')[0] * 60 + parseInt(dateTimeSet[1].split(':')[1]);

        let timeAutoTheme = 'light';
        if (minutesDarkStart > minutesDarkEnd) {
          if (timeMinutesNow >= minutesDarkStart || timeMinutesNow <= minutesDarkEnd) {
            timeAutoTheme = 'dark';
          }
        }
        else {
          if (timeMinutesNow >= minutesDarkStart && timeMinutesNow <= minutesDarkEnd) {
            timeAutoTheme = 'dark';
          }
        }
        document.getElementsByTagName('html')[0].setAttribute('theme-mode', timeAutoTheme);
        localStorage.setItem('theme-mode', timeAutoTheme);
      </script>
      <a id="mode_icon_dark" style="position: absolute;"><i class="ri-moon-fill"></i></a>
      <a id="mode_icon_light"><i class="ri-sun-fill"></i></a>
    <#else>
      <script type="text/javascript"> // set custom theme
        let themeUser = '${settings.theme}';
        document.getElementsByTagName('html')[0].setAttribute('theme-mode', themeUser);
        localStorage.setItem('theme-mode', themeUser);
      </script>
    </#if>
    <a id="menu_icon"><i class="ri-menu-line"></i></a>
  </div>
</div>
