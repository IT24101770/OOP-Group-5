<%-- navbar.jsp --%>
<nav class="navbar">
    <div class="navbar-container">
        <div class="navbar-brand">
            <a href="index.jsp">G5</a>
        </div>

        <div class="navbar-links">
            <a href="index.jsp" class="nav-link">
                <i class="fas fa-home"></i> Home
            </a>
            <a href="admin-management" class="nav-link">
                <i class="fas fa-user-shield"></i> Admin
            </a>
            <a href="order-list" class="nav-link">
                <i class="fas fa-clipboard-list"></i> Orders
            </a>
        </div>

        <button class="navbar-toggle" aria-label="Toggle navigation">
            <span class="hamburger"></span>
        </button>
    </div>
</nav>

<style>
    /* Base Styles */
    .navbar {
        background: linear-gradient(135deg, #3498db, #2c3e50);
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        position: sticky;
        top: 0;
        z-index: 1000;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .navbar-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
    }

    .navbar-brand a {
        color: white;
        font-size: 1.5rem;
        font-weight: 700;
        text-decoration: none;
        padding: 15px 0;
        display: block;
    }

    .navbar-links {
        display: flex;
        gap: 15px;
    }

    .nav-link {
        color: white;
        text-decoration: none;
        padding: 15px 10px;
        display: flex;
        align-items: center;
        gap: 8px;
        transition: all 0.3s ease;
        border-radius: 4px;
    }

    .nav-link:hover {
        background-color: rgba(255,255,255,0.2);
        transform: translateY(-2px);
    }

    .navbar-toggle {
        display: none;
        background: none;
        border: none;
        color: white;
        font-size: 1.5rem;
        cursor: pointer;
    }

    .hamburger {
        display: block;
        width: 25px;
        height: 3px;
        background: white;
        position: relative;
    }

    .hamburger::before,
    .hamburger::after {
        content: '';
        position: absolute;
        width: 100%;
        height: 100%;
        background: white;
        left: 0;
    }

    .hamburger::before {
        top: -8px;
    }

    .hamburger::after {
        bottom: -8px;
    }

    /* Responsive Styles */
    @media (max-width: 768px) {
        .navbar-links {
            position: fixed;
            top: 60px;
            left: -100%;
            width: 100%;
            flex-direction: column;
            background: linear-gradient(135deg, #3498db, #2c3e50);
            padding: 20px;
            transition: left 0.3s ease;
            gap: 10px;
        }

        .navbar-links.active {
            left: 0;
        }

        .nav-link {
            padding: 12px;
            justify-content: center;
        }

        .navbar-toggle {
            display: block;
        }
    }
</style>

<script>
    // Mobile menu toggle functionality
    document.addEventListener('DOMContentLoaded', function() {
        const toggle = document.querySelector('.navbar-toggle');
        const menu = document.querySelector('.navbar-links');

        toggle.addEventListener('click', function() {
            menu.classList.toggle('active');
        });
    });
</script>