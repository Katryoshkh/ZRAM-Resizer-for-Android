MODDIR=${0%/*}
until [ "$(getprop sys.boot_completed)" = "1" ]; do
	sleep 1
done

ZRAM_DEV="/dev/block/zram0"
ZRAM_SYS="/sys/block/zram0"
ZRAM_SIZE_BYTES=4294967296
ZRAM_ALGO="zstd"
swapoff "$ZRAM_DEV" 2>/dev/null
echo 1 > "$ZRAM_SYS/reset"
echo "$ZRAM_ALGO" > "$ZRAM_SYS/comp_algorithm" 2>/dev/null
echo 1 > "$ZRAM_SYS/max_comp_streams"
echo 0 > "$ZRAM_SYS/disksize"
chmod 644 "$ZRAM_SYS/disksize"
echo "$ZRAM_SIZE_BYTES" > "$ZRAM_SYS/disksize"
chmod 444 "$ZRAM_SYS/disksize"
mkswap "$ZRAM_DEV" > /dev/null 2>&1
swapon "$ZRAM_DEV" > /dev/null 2>&1
