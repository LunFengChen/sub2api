<template>
  <AppLayout>
    <div class="flex h-full flex-col space-y-4">
      <!-- Header -->
      <div class="flex items-center justify-between">
        <div>
          <h1 class="text-2xl font-bold text-gray-900 dark:text-white">{{ t('nav.cardShop') }}</h1>
          <p class="mt-1 text-sm text-gray-500 dark:text-gray-400">{{ t('cardShop.description') }}</p>
        </div>
        <a
          :href="SHOP_URL"
          target="_blank"
          rel="noopener noreferrer"
          class="btn btn-secondary flex items-center gap-2 text-sm"
        >
          <svg class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
            <path stroke-linecap="round" stroke-linejoin="round" d="M13.5 6H5.25A2.25 2.25 0 003 8.25v10.5A2.25 2.25 0 005.25 21h10.5A2.25 2.25 0 0018 18.75V10.5m-10.5 6L21 3m0 0h-5.25M21 3v5.25" />
          </svg>
          {{ t('cardShop.openInNewTab') }}
        </a>
      </div>

      <!-- iframe wrapper -->
      <div class="card flex-1 overflow-hidden p-0" style="min-height: 600px;">
        <iframe
          :src="SHOP_URL"
          class="h-full w-full border-0"
          style="min-height: 600px;"
          allow="payment"
          title="Card Shop"
          @load="onLoad"
        />
      </div>
    </div>
  </AppLayout>
</template>

<script setup lang="ts">
import { useI18n } from 'vue-i18n'
import AppLayout from '@/components/layout/AppLayout.vue'

const { t } = useI18n()

const SHOP_URL = 'https://pay.ldxp.cn/shop/VVVME83N'

function onLoad() {
  // iframe loaded successfully
}
</script>
