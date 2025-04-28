FROM rclone/rclone:latest

# Buat direktori config
RUN mkdir -p /config/rclone

# Salin file konfigurasi rclone.conf kalau mau
# Atau nanti bisa dari environment variables

# Set environment variable supaya rclone pakai config dari /config/rclone/rclone.conf
ENV RCLONE_CONFIG=/config/rclone/rclone.conf

# Command saat container dijalankan
CMD ["rclone", "serve", "webdav", "Hstorage:", "--addr", ":8000", "--vfs-cache-mode", "writes"]
