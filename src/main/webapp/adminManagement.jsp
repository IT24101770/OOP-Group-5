<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Admin Management</title>
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
                            500: '#0ea5e9',
                            600: '#0284c7',
                            700: '#0369a1',
                        },
                        success: {
                            500: '#10b981',
                            600: '#059669',
                        },
                        danger: {
                            500: '#ef4444',
                            600: '#dc2626',
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
                @apply transition-transform duration-300 hover:scale-[1.02];
            }
        }
    </style>
</head>
<body class="bg-gradient-admin min-h-screen">
<%@ include file="components/navbar.jsp" %>

<div class="container mx-auto px-4 py-12 max-w-6xl">
    <!-- Header Section -->
    <div class="flex flex-col md:flex-row justify-between items-center mb-12 animate-fade-in">
        <div class="text-center md:text-left mb-6 md:mb-0">
            <h1 class="text-3xl font-bold text-gray-800 mb-2">Admin Management</h1>
            <p class="text-gray-600">Manage all administrator accounts and permissions</p>
        </div>
        <a href="add-admin" class="flex items-center px-6 py-3 bg-success-500 hover:bg-success-600 text-white font-medium rounded-lg shadow-md hover-scale transition-all duration-300">
            <i class="fas fa-user-plus mr-2"></i> Add New Admin
        </a>
    </div>

    <!-- Admin Table -->
    <div class="bg-white rounded-xl overflow-hidden card-shadow animate-fade-in">
        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-primary-500">
                <tr>
                    <th scope="col" class="px-6 py-4 text-left text-xs font-medium text-white uppercase tracking-wider">
                        <i class="fas fa-id-card mr-2"></i>ID
                    </th>
                    <th scope="col" class="px-6 py-4 text-left text-xs font-medium text-white uppercase tracking-wider">
                        <i class="fas fa-user mr-2"></i>Name
                    </th>
                    <th scope="col" class="px-6 py-4 text-left text-xs font-medium text-white uppercase tracking-wider">
                        <i class="fas fa-envelope mr-2"></i>Email
                    </th>
                    <th scope="col" class="px-6 py-4 text-left text-xs font-medium text-white uppercase tracking-wider">
                        <i class="fas fa-user-tag mr-2"></i>Role
                    </th>
                    <th scope="col" class="px-6 py-4 text-left text-xs font-medium text-white uppercase tracking-wider">
                        <i class="fas fa-cog mr-2"></i>Actions
                    </th>
                </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                <c:forEach items="${admins}" var="admin">
                    <tr class="hover:bg-gray-50 transition-colors duration-150">
                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                                ${admin.id}
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                ${admin.name}
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                ${admin.email}
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap">
                            <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full
                                ${admin.role == 'admin' ? 'bg-primary-100 text-primary-800' :
                                  admin.role == 'manager' ? 'bg-purple-100 text-purple-800' :
                                  'bg-green-100 text-green-800'}">
                                    ${admin.role}
                            </span>
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                            <div class="flex space-x-4">
                                <a href="view-admin?id=${admin.id}" class="text-primary-600 hover:text-primary-800 transition-colors duration-200"
                                   data-tooltip="View details">
                                    <i class="fas fa-eye"></i>
                                </a>
                                <a href="edit-admin?id=${admin.id}" class="text-blue-600 hover:text-blue-800 transition-colors duration-200"
                                   data-tooltip="Edit admin">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <a href="delete-admin?id=${admin.id}" class="text-danger-600 hover:text-danger-800 transition-colors duration-200"
                                   data-tooltip="Delete admin" onclick="return confirm('Are you sure you want to delete this admin?')">
                                    <i class="fas fa-trash-alt"></i>
                                </a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Pagination (example) -->
    <div class="flex justify-between items-center mt-8 px-4 animate-fade-in">
        <div class="text-sm text-gray-600">
            Showing <span class="font-medium">1</span> to <span class="font-medium">10</span> of <span class="font-medium">${admins.size()}</span> results
        </div>
        <div class="flex space-x-2">
            <button class="px-4 py-2 border rounded-md bg-white text-gray-700 hover:bg-gray-50 transition-colors duration-200">
                Previous
            </button>
            <button class="px-4 py-2 border rounded-md bg-primary-500 text-white hover:bg-primary-600 transition-colors duration-200">
                1
            </button>
            <button class="px-4 py-2 border rounded-md bg-white text-gray-700 hover:bg-gray-50 transition-colors duration-200">
                2
            </button>
            <button class="px-4 py-2 border rounded-md bg-white text-gray-700 hover:bg-gray-50 transition-colors duration-200">
                Next
            </button>
        </div>
    </div>
</div>

<!-- Floating background elements -->
<div class="fixed top-0 left-0 w-full h-full overflow-hidden -z-10">
    <div class="absolute top-20 left-10 w-16 h-16 rounded-full bg-primary-200 opacity-20 animate-float" style="animation-delay: 0.5s;"></div>
    <div class="absolute top-1/3 right-20 w-24 h-24 rounded-full bg-primary-300 opacity-15 animate-float" style="animation-delay: 1s;"></div>
</div>

<!-- Tooltip script -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const actionLinks = document.querySelectorAll('[data-tooltip]');

        actionLinks.forEach(link => {
            const tooltip = document.createElement('span');
            tooltip.className = 'absolute hidden bg-gray-800 text-white text-xs rounded py-1 px-2 -mt-8 whitespace-nowrap';
            tooltip.textContent = link.getAttribute('data-tooltip');
            link.appendChild(tooltip);

            link.addEventListener('mouseenter', () => {
                tooltip.classList.remove('hidden');
            });

            link.addEventListener('mouseleave', () => {
                tooltip.classList.add('hidden');
            });
        });
    });
</script>
</body>
</html>