<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Delete Admin - Bookstore Management</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            danger: {
              50: '#fef2f2',
              100: '#fee2e2',
              500: '#ef4444',
              600: '#dc2626',
              700: '#b91c1c',
            },
            primary: {
              500: '#0ea5e9',
              600: '#0284c7',
            }
          },
          animation: {
            'fade-in': 'fadeIn 0.5s ease-in-out',
            'shake': 'shake 0.5s ease-in-out',
          },
          keyframes: {
            fadeIn: {
              '0%': { opacity: '0', transform: 'translateY(10px)' },
              '100%': { opacity: '1', transform: 'translateY(0)' },
            },
            shake: {
              '0%, 100%': { transform: 'translateX(0)' },
              '10%, 30%, 50%, 70%, 90%': { transform: 'translateX(-5px)' },
              '20%, 40%, 60%, 80%': { transform: 'translateX(5px)' },
            }
          }
        }
      }
    }
  </script>
  <style type="text/tailwindcss">
    @layer utilities {
      .bg-gradient-danger {
        background: linear-gradient(135deg, #fef2f2 0%, #fee2e2 50%, #fecaca 100%);
      }
      .card-shadow {
        box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
      }
      .hover-scale {
        @apply transition-transform duration-300 hover:scale-[1.02];
      }
    }
  </style>
</head>
<body class="bg-gradient-danger min-h-screen">
<%@ include file="components/navbar.jsp" %>

<div class="container mx-auto px-4 py-12 max-w-md animate-fade-in">
  <!-- Warning Card -->
  <div class="bg-white rounded-xl p-8 card-shadow text-center">
    <!-- Warning Icon -->
    <div class="mx-auto w-20 h-20 flex items-center justify-center bg-danger-100 rounded-full mb-6 animate-shake">
      <i class="fas fa-exclamation-triangle text-3xl text-danger-600"></i>
    </div>

    <h1 class="text-2xl font-bold text-danger-700 mb-4">Delete Administrator</h1>
    <p class="text-gray-700 mb-6">Are you sure you want to permanently delete this admin account?</p>

    <!-- Admin Details -->
    <div class="bg-gray-50 rounded-lg p-4 mb-6 text-left">
      <div class="grid grid-cols-2 gap-4 mb-3">
        <div>
          <p class="text-sm font-medium text-gray-500">ID</p>
          <p class="font-semibold">${admin.id}</p>
        </div>
        <div>
          <p class="text-sm font-medium text-gray-500">Role</p>
          <p class="font-semibold capitalize">${admin.role}</p>
        </div>
      </div>
      <div class="mb-3">
        <p class="text-sm font-medium text-gray-500">Name</p>
        <p class="font-semibold">${admin.name}</p>
      </div>
      <div>
        <p class="text-sm font-medium text-gray-500">Email</p>
        <p class="font-semibold">${admin.email}</p>
      </div>
    </div>

    <!-- Warning Message -->
    <div class="bg-yellow-50 border-l-4 border-yellow-400 p-4 mb-6 text-left">
      <div class="flex">
        <div class="flex-shrink-0">
          <i class="fas fa-exclamation-circle text-yellow-500"></i>
        </div>
        <div class="ml-3">
          <p class="text-sm text-yellow-700">
            This action cannot be undone. All data associated with this admin will be permanently removed.
          </p>
        </div>
      </div>
    </div>

    <!-- Form -->
    <form action="delete-admin" method="post" class="space-y-4">
      <input type="hidden" name="id" value="${admin.id}">
      <div class="flex flex-col sm:flex-row justify-center gap-4">
        <button type="submit"
                class="px-6 py-3 bg-danger-600 hover:bg-danger-700 text-white font-medium rounded-lg shadow-md hover-scale transition-all duration-300 flex items-center justify-center">
          <i class="fas fa-trash-alt mr-2"></i> Confirm Delete
        </button>
        <a href="admin-management"
           class="px-6 py-3 bg-white border border-gray-300 hover:bg-gray-50 text-gray-700 font-medium rounded-lg shadow-sm hover-scale transition-all duration-300 flex items-center justify-center">
          <i class="fas fa-times mr-2"></i> Cancel
        </a>
      </div>
    </form>
  </div>
</div>

<!-- Floating background elements -->
<div class="fixed top-0 left-0 w-full h-full overflow-hidden -z-10">
  <div class="absolute top-20 left-10 w-16 h-16 rounded-full bg-danger-200 opacity-20 animate-float" style="animation-delay: 0.5s;"></div>
  <div class="absolute top-1/3 right-20 w-24 h-24 rounded-full bg-danger-300 opacity-15 animate-float" style="animation-delay: 1s;"></div>
</div>
</body>
</html>