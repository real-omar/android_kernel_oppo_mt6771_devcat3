#ifndef EROFS_COMPAT_H
#define EROFS_COMPAT_H
#include <linux/idr.h>
#include <linux/kobject.h>
#include <linux/xarray.h>
#include <linux/vmalloc.h>
#include <asm/pgtable.h>
#include <linux/lz4.h>
#include <linux/dirent.h>
#define EROFS_SUPER_MAGIC_V1 0xE0F5E1E2
#ifndef fallthrough
#define fallthrough do { } while (0)
#endif

static inline void *erofs_vm_map_ram_compat(struct page **pages, unsigned int count, int node)
{
	return vm_map_ram(pages, count, node, PAGE_KERNEL);
}
#define vm_map_ram(pages, count, node) erofs_vm_map_ram_compat(pages, count, node)

#ifndef lru_to_page
#define lru_to_page(head) (list_entry((head)->prev, struct page, lru))
#endif
#define kmap_local_page(page) kmap_atomic(page)
#define kunmap_local(addr) kunmap_atomic(addr)
#define atomic_cond_read_relaxed(v, c) ({	\
	typeof((v)->counter) _val;		\
	do {					\
		_val = atomic_read(v);		\
		if (c) break;			\
		cpu_relax();			\
	} while (1);				\
	_val; })
#ifndef DT_UNKNOWN
#define DT_UNKNOWN 0
#define DT_FIFO 1
#define DT_CHR 2
#define DT_DIR 4
#define DT_BLK 6
#define DT_REG 8
#define DT_LNK 10
#define DT_SOCK 12
#endif

/* 4.14 lacks FT_* file types and fs_ftype_to_dtype() */
enum {
	FT_UNKNOWN = 0,
	FT_REG_FILE,
	FT_DIR,
	FT_CHRDEV,
	FT_BLKDEV,
	FT_FIFO,
	FT_SOCK,
	FT_SYMLINK,
};

static inline unsigned char fs_ftype_to_dtype(unsigned int filetype)
{
	switch (filetype) {
	case FT_REG_FILE: return DT_REG;
	case FT_DIR:      return DT_DIR;
	case FT_CHRDEV:   return DT_CHR;
	case FT_BLKDEV:   return DT_BLK;
	case FT_FIFO:     return DT_FIFO;
	case FT_SOCK:     return DT_SOCK;
	case FT_SYMLINK:  return DT_LNK;
	default:          return DT_UNKNOWN;
	}
}

#endif
