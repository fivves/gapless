void main() {
    print("%s\n", GLib.Checksum.compute_for_string(GLib.ChecksumType.MD5, "test"));
}
