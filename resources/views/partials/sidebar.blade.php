<nav id="sidebar">
    <div class="sidebar-header">
        <a href="#"><img src="img/message/1.jpg" alt="" />
        </a>
        <h3>{{auth()->user()->name}}</h3>
        <p>{{auth()->user()->role}}</p>
        <strong>AP+</strong>
    </div>
    <div class="left-custom-menu-adp-wrap">
        @if(auth()->user()->role=='Admin')
        <ul class="nav navbar-nav left-sidebar-menu-pro">
            <li class="nav-item">
                <a href="{{ route('dashboard') }}" ><i class="fa big-icon fa-home"></i> <span class="mini-dn">Home</span> </a>

            </li>
            <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa big-icon fa-user"></i> <span class="mini-dn">Admin</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                    <a href="{{route('add_admin')}}" class="dropdown-item">Add Admin</a>
                    <a href="{{route('view_admins')}}" class="dropdown-item">View Admins</a>
                </div>
            </li>
            <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa big-icon fa-user"></i> <span class="mini-dn">Company</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                    <a href="{{ route('add_company') }}" class="dropdown-item">Add Company</a>
                    <a href="{{ route('view_companies') }}" class="dropdown-item">View Companies</a>
                </div>
            </li>
            <li class="nav-item"><a href="#" data-toggle="dropdown" role="button"
                aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa big-icon fa-table"></i> <span class="mini-dn">Token</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                    <a href="{{ route('add_token') }}" class="dropdown-item">Add Token</a>
                    <a href="{{ route('view_tokens') }}" class="dropdown-item">View Tokens</a>
                </div>
            </li>
            <li class="nav-item"><a href="{{ route('view_company_admins') }}" data-toggle="dropdown" role="button"
                aria-expanded="false" class="nav-link dropdown-toggle">
                <i class="fa big-icon fa-user"></i>
                <span class="mini-dn">Company Admin</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">

                    <a href="{{ route('view_company_admins') }}" class="dropdown-item">View Admins</a>
                </div>
            </li>
            <li class="nav-item"><a href="#" data-toggle="dropdown" role="button"
                aria-expanded="false" class="nav-link dropdown-toggle">
                <i class="fa big-icon fa-flask"></i> <span class="mini-dn">City</span>
                <span class="indicator-right-menu mini-dn">
                    <i class="fa indicator-mn fa-angle-left"></i></span></a>
                <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                    <a href="{{ route('add_city') }}" class="dropdown-item">Add City</a>
                    <a href="{{ route('view_cities') }}" class="dropdown-item">View Cities</a>
                </div>
            </li>
            <li class="nav-item">
                <a href="{{ route('view_customers') }}" ><i class="fa big-icon fa-user"></i> <span class="mini-dn">Customers</span> </a>

            </li>
        </ul>
        @elseif(auth()->user()->role=='CompanyAdmin')
        <ul class="nav navbar-nav left-sidebar-menu-pro">
                <li class="nav-item">
                    <a href="{{ route('company_dashboard') }}" ><i class="fa big-icon fa-home"></i> <span class="mini-dn">Home</span> </a>

                </li>
                <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa big-icon fa-user"></i> <span class="mini-dn">Routes</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                    <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                        <a href="{{route('add_route')}}" class="dropdown-item">Add Route</a>
                        <a href="{{route('view_routes')}}" class="dropdown-item">View Route</a>
                    </div>
                </li>

                <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa big-icon fa-flask"></i> <span class="mini-dn">Promotions</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                    <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                        <a href="{{route('add_promotion')}}" class="dropdown-item">Add Promotions</a>
                        <a href="{{route('view_promotions')}}" class="dropdown-item">View Promotions</a>
                    </div>
                </li>

                <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa big-icon fa-flask"></i> <span class="mini-dn">Tickets</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                    <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                        <a href="{{route('view_tickets_pending')}}" class="dropdown-item">Pending</a>
                        <a href="{{route('view_processed_tickets')}}" class="dropdown-item">Used</a>
                        <a href="{{route('view_all_tickets')}}" class="dropdown-item">All Tickets</a>
                    </div>
                </li>


            </ul>
        @endif
    </div>
</nav>
