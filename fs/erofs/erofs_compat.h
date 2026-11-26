/* SPDX-License-Identifier: GPL-2.0 */
/* 4.14 compatibility layer for the MTK 4.14.186 EROFS driver. */
#ifndef __EROFS_COMPAT_414_H
#define __EROFS_COMPAT_414_H

#include <linux/types.h>
#include <linux/atomic.h>
#include <linux/compiler.h>
#include <linux/mm.h>
#include <linux/pagemap.h>
#include <asm/processor.h>

#ifndef EROFS_SUPER_MAGIC_V1
#define EROFS_SUPER_MAGIC_V1 0xE0F5E1E2
#endif

#ifndef attach_page_private
#define attach_page_private(page, data) do {                          \
	get_page(page);                                                   \
	set_page_private((page), (unsigned long)(data));                  \
	SetPagePrivate(page);                                             \
} while (0)
#endif

#ifndef detach_page_private
static inline void *__erofs_detach_page_private(struct page *page)
{
	void *data = (void *)page_private(page);

	if (!data)
		return NULL;
	set_page_private(page, 0);
	ClearPagePrivate(page);
	put_page(page);
	return data;
}
#define detach_page_private(page) __erofs_detach_page_private(page)
#endif

static inline int erofs_compat_cond_read_relaxed(atomic_t *v, int locked)
{
	int val;

	for (;;) {
		val = atomic_read(v);
		if (val != locked)
			break;
		cpu_relax();
	}
	smp_mb();
	return val;
}

#endif /* __EROFS_COMPAT_414_H */
