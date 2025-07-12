<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #e3f2fd;" role="navigation">
  <div class="container-fluid">

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <#-- Brand Name -->
    <a class="navbar-brand" href="<#if themeDisplay??>${themeDisplay.getURLHome()}<#else>/</#if>">
        MR Learning
    </a>

    <div class="collapse navbar-collapse" id="mainNavbar">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        <#if themeDisplay?? && themeDisplay.getLayouts()?? && (themeDisplay.getLayouts()?size > 0)>
          <#list themeDisplay.getLayouts() as layout_item>
            <#if layout_item?? && !layout_item.isHidden()>
              <li class="nav-item">
                <a class="nav-link <#if layout_item.getPlid() == themeDisplay.getPlid()>active</#if>" 
                   href="${layout_item.getRegularURL(request)}">
                  ${layout_item.getName(themeDisplay.getLocale())}
                </a>
              </li>
            </#if>
          </#list>
        </#if>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Page
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Login</a>
            <a class="dropdown-item" href="#">Contact</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Visit us</a>
          </div>
        </li>

       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Course
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">CE</a>
            <a class="dropdown-item" href="#">IT</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">View More</a>
          </div>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#">Services</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>

      </ul>
    </div>
  </div>
</nav>