package com.onlinebookstore.Service;

import com.onlinebookstore.Model.Admin;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class AdminService {
    private static final String FILE_PATH = "./db/Admins.txt";

    public boolean addAdmin(Admin admin) {
        try {
            File file = new File(FILE_PATH);

            // Create parent directories if needed
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }

            try (BufferedWriter writer = new BufferedWriter(new FileWriter(file, true))) {
                writer.write(admin.toString());
                writer.newLine();
            }
            return true;
        } catch (IOException e) {
            System.err.println("Error saving admin:");
            e.printStackTrace();
            return false;
        }
    }

    public static List<Admin> getAllAdmins() {
        List<Admin> admins = new ArrayList<>();
        File file = new File(FILE_PATH);

        if (!file.exists()) return admins;

        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split("\\|");
                if (parts.length == 5) {
                    admins.add(new Admin(
                            Integer.parseInt(parts[0]),  // id
                            parts[1],                   // name
                            parts[2],                   // email
                            parts[3],                   // password
                            parts[4]
                    ));
                }
            }
        } catch (IOException e) {
            System.err.println("Error reading admins:");
            e.printStackTrace();
        }
        return admins;
    }

    public Admin getAdminById(int id) {
        return getAllAdmins().stream()
                .filter(admin -> admin.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public Admin getAdminByEmail(String email) {
        return getAllAdmins().stream()
                .filter(admin -> admin.getEmail().equals(email))
                .findFirst()
                .orElse(null);
    }

    public boolean updateAdmin(Admin updatedAdmin) {
        List<Admin> allAdmins = getAllAdmins();
        boolean found = false;

        for (int i = 0; i < allAdmins.size(); i++) {
            if (allAdmins.get(i).getId() == updatedAdmin.getId()) {
                allAdmins.set(i, updatedAdmin);
                found = true;
                break;
            }
        }

        if (!found) {
            return false;
        }

        return writeAllAdmins(allAdmins);
    }

    public boolean deleteAdmin(int id) {
        List<Admin> allAdmins = getAllAdmins();
        List<Admin> updatedAdmins = allAdmins.stream()
                .filter(admin -> admin.getId() != id)
                .collect(Collectors.toList());

        if (updatedAdmins.size() == allAdmins.size()) {
            return false; // No admin was deleted
        }
        return writeAllAdmins(updatedAdmins);
    }

    private boolean writeAllAdmins(List<Admin> admins) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH))) {
            for (Admin admin : admins) {
                writer.write(admin.toString());
                writer.newLine();
            }
            return true;
        } catch (IOException e) {
            System.err.println("Error writing admins:");
            e.printStackTrace();
            return false;
        }
    }

    public boolean validateAdmin(String email, String password) {
        Admin admin = getAdminByEmail(email);
        return admin != null && admin.getPassword().equals(password);
    }
}