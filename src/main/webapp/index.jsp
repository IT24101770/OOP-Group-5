<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Admin Portal - Online Bookstore</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            primary: {
              50: '#f0f9ff',
              100: '#e0f2fe',
              200: '#bae6fd',
              300: '#7dd3fc',
              400: '#38bdf8',
              500: '#0ea5e9',
              600: '#0284c7',
              700: '#0369a1',
              800: '#075985',
              900: '#0c4a6e',
            }
          },
          animation: {
            'fade-in': 'fadeIn 0.5s ease-in-out',
            'float': 'float 3s ease-in-out infinite',
          },
          keyframes: {
            fadeIn: {
              '0%': { opacity: '0', transform: 'translateY(10px)' },
              '100%': { opacity: '1', transform: 'translateY(0)' },
            },
            float: {
              '0%, 100%': { transform: 'translateY(0)' },
              '50%': { transform: 'translateY(-5px)' },
            }
          }
        }
      }
    }
  </script>
  <style type="text/tailwindcss">
    @layer utilities {
      .bg-gradient-admin {
        background: linear-gradient(135deg, #f0f9ff 0%, #e0f2fe 50%, #bae6fd 100%);
      }
      .card-shadow {
        box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
      }
      .hover-scale {
        @apply transition-transform duration-300 hover:scale-105;
      }
    }
  </style>
</head>
<body class="bg-gradient-admin min-h-screen">
<%@ include file="components/navbar.jsp" %>

<div class="container mx-auto px-4 py-12">
  <div class="max-w-4xl mx-auto animate-fade-in">
    <!-- Header with animated icon -->
    <div class="text-center mb-12">
      <div class="inline-block p-4 bg-white rounded-full shadow-lg mb-6 animate-float">
        <i class="fas fa-user-shield text-4xl text-primary-600"></i>
      </div>
      <h1 class="text-4xl font-bold text-gray-800 mb-3">Admin Management Portal</h1>
      <p class="text-lg text-gray-600 max-w-2xl mx-auto">
        Manage your bookstore administration with powerful tools and insights
      </p>
    </div>

    <!-- Main action cards -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 mb-16">
      <!-- View Admins Card -->
      <a href="admin-management"
         class="bg-white rounded-xl p-8 card-shadow hover-scale group transition-all duration-300 border-l-4 border-primary-500 overflow-hidden relative">
        <div class="absolute inset-0 bg-gradient-to-r from-primary-50 to-white opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
        <div class="relative z-10">
          <div class="w-14 h-14 bg-primary-100 rounded-lg flex items-center justify-center mb-6 text-primary-600">
            <i class="fas fa-users text-2xl"></i>
          </div>
          <h3 class="text-xl font-semibold text-gray-800 mb-3">View All Admins</h3>
          <p class="text-gray-600 mb-4">
            Browse and manage all administrator accounts with detailed information and controls.
          </p>
          <div class="text-primary-600 font-medium flex items-center group-hover:translate-x-2 transition-transform duration-300">
            Access dashboard
            <i class="fas fa-arrow-right ml-2"></i>
          </div>
        </div>
      </a>

      <!-- Add Admin Card -->
      <a href="add-admin"
         class="bg-white rounded-xl p-8 card-shadow hover-scale group transition-all duration-300 border-l-4 border-primary-500 overflow-hidden relative">
        <div class="absolute inset-0 bg-gradient-to-r from-primary-50 to-white opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
        <div class="relative z-10">
          <div class="w-14 h-14 bg-primary-100 rounded-lg flex items-center justify-center mb-6 text-primary-600">
            <i class="fas fa-user-plus text-2xl"></i>
          </div>
          <h3 class="text-xl font-semibold text-gray-800 mb-3">Add New Admin</h3>
          <p class="text-gray-600 mb-4">
            Create new administrator accounts with customized permissions and access levels.
          </p>
          <div class="text-primary-600 font-medium flex items-center group-hover:translate-x-2 transition-transform duration-300">
            Create account
            <i class="fas fa-arrow-right ml-2"></i>
          </div>
        </div>
      </a>

      <!-- Order List Card -->
      <a href="order-list"
         class="bg-white rounded-xl p-8 card-shadow hover-scale group transition-all duration-300 border-l-4 border-primary-500 overflow-hidden relative">
        <div class="absolute inset-0 bg-gradient-to-r from-primary-50 to-white opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
        <div class="relative z-10">
          <div class="w-14 h-14 bg-primary-100 rounded-lg flex items-center justify-center mb-6 text-primary-600">
            <i class="fas fa-list text-2xl"></i>
          </div>
          <h3 class="text-xl font-semibold text-gray-800 mb-3">Order List</h3>
          <p class="text-gray-600 mb-4">
            View and manage customer orders placed through the bookstore platform.
          </p>
          <div class="text-primary-600 font-medium flex items-center group-hover:translate-x-2 transition-transform duration-300">
            View orders
            <i class="fas fa-arrow-right ml-2"></i>
          </div>
        </div>
      </a>
    </div>



    <!-- Quick Stats Section -->
    <div class="bg-white rounded-xl p-6 card-shadow mb-12 animate-fade-in">
      <h3 class="text-xl font-semibold text-gray-800 mb-6 flex items-center">
        <i class="fas fa-chart-line text-primary-600 mr-3"></i>
        Quick Statistics
      </h3>
      <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
        <div class="bg-primary-50 p-4 rounded-lg border border-primary-100">
          <p class="text-sm text-primary-800 font-medium">Total Admins</p>
          <p class="text-2xl font-bold text-primary-600">24</p>
          <p class="text-xs text-primary-500 mt-1">+2 this month</p>
        </div>
        <div class="bg-blue-50 p-4 rounded-lg border border-blue-100">
          <p class="text-sm text-blue-800 font-medium">Active Sessions</p>
          <p class="text-2xl font-bold text-blue-600">8</p>
          <p class="text-xs text-blue-500 mt-1">3 mobile</p>
        </div>
        <div class="bg-green-50 p-4 rounded-lg border border-green-100">
          <p class="text-sm text-green-800 font-medium">Recent Activity</p>
          <p class="text-2xl font-bold text-green-600">42</p>
          <p class="text-xs text-green-500 mt-1">today</p>
        </div>
        <div class="bg-purple-50 p-4 rounded-lg border border-purple-100">
          <p class="text-sm text-purple-800 font-medium">Tasks Pending</p>
          <p class="text-2xl font-bold text-purple-600">5</p>
          <p class="text-xs text-purple-500 mt-1">2 high priority</p>
        </div>
      </div>
    </div>

    <!-- Footer -->
    <div class="text-center text-gray-600 text-sm mt-16 animate-fade-in">
      <div class="flex justify-center space-x-6 mb-4">
        <a href="#" class="hover:text-primary-600 transition-colors duration-300">
          <i class="fas fa-shield-alt mr-2"></i> Privacy Policy
        </a>
        <a href="#" class="hover:text-primary-600 transition-colors duration-300">
          <i class="fas fa-file-contract mr-2"></i> Terms of Service
        </a>
        <a href="#" class="hover:text-primary-600 transition-colors duration-300">
          <i class="fas fa-question-circle mr-2"></i> Help Center
        </a>
      </div>
      <p>&copy; 2025 Online Bookstore. All rights reserved.</p>
    </div>
  </div>
</div>

<!-- Animated background elements -->
<div class="fixed top-0 left-0 w-full h-full overflow-hidden -z-10">
  <div class="absolute top-20 left-10 w-16 h-16 rounded-full bg-primary-200 opacity-20 animate-float" style="animation-delay: 0.5s;"></div>
  <div class="absolute top-1/3 right-20 w-24 h-24 rounded-full bg-primary-300 opacity-15 animate-float" style="animation-delay: 1s;"></div>
  <div class="absolute bottom-20 left-1/4 w-20 h-20 rounded-full bg-primary-400 opacity-10 animate-float" style="animation-delay: 1.5s;"></div>
</div>
</body>
</html>