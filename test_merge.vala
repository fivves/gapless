using Gapless;
void main() {
    var store = new GLib.ListStore(typeof(Music));
    var m1 = new Music("uri1", "t1", 0);
    var m2 = new Music("uri2", "t2", 0);
    var m3 = new Music("uri3", "t3", 0);
    var m4 = new Music("uri4", "t4", 0);
    store.append(m1); store.append(m2); store.append(m3); store.append(m4);
    
    var arr = new GenericArray<Music>();
    arr.add(m1); arr.add(m3);
    
    uint pos = 4; // Drop at the end
    Gapless.merge_items_to_store(store, arr, ref pos);
    
    for (int i=0; i<store.get_n_items(); i++) {
        print("%s\n", ((Music)store.get_item(i)).title);
    }
}
