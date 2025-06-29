<style>
    :root {
        --vr-font-primary: <?= getFontFamily($activeFonts, 'primary', true); ?>;
        --vr-font-secondary: <?= getFontFamily($activeFonts, 'secondary', true); ?>;
        --vr-font-tertiary: <?= getFontFamily($activeFonts, 'tertiary', true); ?>;
        --vr-theme-color: <?= $activeTheme->theme_color; ?>;
        --vr-block-color: <?= $activeTheme->block_color; ?>;
        --vr-mega-menu-color: <?= $activeTheme->mega_menu_color; ?>;
    }

    .section-videos .video-large .image {
        height: 100% !important;
    }

    <?php if (!empty($adSpaces)):
        foreach ($adSpaces as $item):
            if (!empty($item->desktop_width) && !empty($item->desktop_height)):
                echo '.bn-ds-' . $item->id . '{width: ' . $item->desktop_width . 'px; height: ' . $item->desktop_height . 'px;}';
                echo '.bn-mb-' . $item->id . '{width: ' . $item->mobile_width . 'px; height: ' . $item->mobile_height . 'px;}';
            endif;
        endforeach;
    endif; ?>.modal-newsletter .image {
        background-image: url('<?= getNewsletterImage(); ?>');
    }
</style>
<?php if ($activeTheme->theme == 'news'): ?>
    <style>
        .nav-link {
            transition: none !important
        }

        #nav-top {
            background-color: #fff !important
        }

        #header {
            background-color: var(--vr-block-color) !important
        }

        .mega-menu .menu-left {
            background-color: var(--vr-mega-menu-color)
        }

        .nav-mobile {
            background-color: var(--vr-mega-menu-color)
        }

        .nav-mobile .nav-item .nav-link {
            color: #fff
        }

        .nav-mobile .profile-dropdown-mobile .menu-sub-items .dropdown-item {
            color: #fff
        }

        .nav-mobile .profile-dropdown-mobile {
            border-bottom: 1px solid var(--vr-block-color)
        }

        .nav-mobile .btn-default {
            background-color: var(--vr-theme-color) !important;
            border-color: var(--vr-theme-color) !important;
            color: #fff !important
        }

        #nav-top .navbar-nav .nav-item .nav-link {
            color: #222 !important;
            font-weight: 600;
            font-size: 13px;
            padding: 6px 0
        }

        #nav-top .navbar-nav .nav-item svg {
            color: #222
        }

        #nav-top .navbar-nav .nav-item .nav-link:hover,
        #nav-top .navbar-nav .nav-item .nav-link:active,
        #nav-top .navbar-nav .nav-item .nav-link:focus {
            color: #444 !important
        }

        .profile-dropdown>a img {
            border: 1px solid #d5d5d5
        }

        .profile-dropdown .dropdown-menu {
            top: 0 !important
        }

        .nav-main .navbar-nav .nav-link {
            padding: 10px 14px;
            font-size: 12px;
            color: #fff
        }

        .nav-main .navbar-right .nav-link {
            color: #fff !important
        }

        .nav-main .search-icon svg {
            width: 20px;
            height: 20px
        }

        .nav-main {
            border-bottom: 0
        }

        .news .mega-menu {
            border-top: 0;
            top: 0
        }

        .mega-menu .menu-left {
            background-image: linear-gradient(rgba(0, 0, 0, 0.09) 0 0)
        }

        .mega-menu .menu-left a {
            color: #fff;
            transition: none !important
        }

        .badge-category {
            text-transform: uppercase;
            font-size: 11px
        }

        .section-featured .col-featured-left {
            width: 50% !important;
            padding-right: 20px !important
        }

        .section-featured .col-featured-right {
            width: 25% !important;
            padding-left: 0 !important;
            padding-right: 20px !important
        }

        .section-featured .col-featured-right .col-first .item {
            margin-bottom: 20px
        }

        .top-headlines {
            display: block;
            position: relative;
            width: 25% !important;
            padding-left: 0 !important
        }

        .top-headlines .top-headlines-title {
            margin-bottom: 15px;
            font-size: 30px;
            font-weight: 700;
            letter-spacing: -1px;
            line-height: 1
        }

        .top-headlines .items {
            width: 100%;
            height: 482px;
            display: flex;
            flex-flow: column wrap;
            overflow: hidden
        }

        .top-headlines .item {
            display: block;
            width: 100%;
            position: relative;
            padding-top: 12px;
            margin-top: 12px;
            border-top: 1px solid #ececec
        }

        .top-headlines .item-first {
            border: 0 !important;
            padding-top: 0;
            margin-top: 0
        }

        .top-headlines .item .title {
            margin-top: 0;
            margin-bottom: 3px;
            font-size: 14px;
            line-height: 19px;
            font-weight: 600 !important
        }

        .top-headlines .item .category {
            margin-right: 5px;
            font-size: 11px;
            line-height: 1;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: -.4px
        }

        .top-headlines .item .date {
            font-size: 11px;
            font-weight: 600;
            line-height: 1;
            color: #555;
            letter-spacing: -.4px
        }

        .header-mobile svg {
            color: #fff !important;
            stroke: #fff !important
        }

        .header-mobile-container {
            border-bottom: 0
        }

        .top-headlines .item .category {
            color: var(--vr-theme-color) !important
        }

        .header-mobile,
        .mobile-search-form {
            background-color: var(--vr-block-color) !important
        }

        @media (min-width: 767.98px) {
            .section-featured .col-featured-right .item {
                height: 253px
            }
        }

        @media (max-width: 1399.98px) {
            .section-featured .col-featured-right .item {
                height: 217px
            }
        }

        @media (max-width: 1199.98px) {
            .nav-main .navbar-nav .nav-link {
                padding: 10px 8px
            }

            .top-headlines .items {
                height: 410px
            }
        }

        @media (max-width: 991.98px) {
            .news #header {
                background-color: transparent !important
            }

            .section-featured .col-featured-left {
                width: 100% !important;
                padding-right: 0 !important
            }

            .section-featured .col-featured-right {
                width: 100% !important;
                padding: 0 !important
            }

            .section-featured .col-featured-right .row {
                --bs-gutter-x: .25rem
            }

            .section-featured .col-featured-right .col-12 {
                width: 50% !important
            }

            .top-headlines {
                width: 100% !important;
                padding: 0 15px !important;
                margin-top: 10px;
                margin-bottom: 10px
            }

            .top-headlines .items {
                height: auto
            }
        }

        @media (max-width: 575.98px) {
            .section-featured .col-featured-right .item .post-meta {
                display: none
            }

            .col-featured-right .item .caption .title {
                font-size: 14px;
                line-height: 18px
            }

            .section-featured .col-featured-right .item {
                height: 210px
            }
        }

        @media (max-width: 427.98px) {
            .section-featured .col-featured-right .item {
                height: 185px
            }
        }

        <?php if ($rtl): echo ".section-featured .col-featured-left{padding-right:12px!important;padding-left:20px!important}.section-featured .col-featured-right{padding-left:20px!important;padding-right:0!important}.top-headlines{padding-left:12px!important;padding-right:0!important}@media (max-width: 991.98px){.section-featured .col-featured-left{padding-right:0!important;padding-left:0!important}.section-featured .col-featured-right{padding-left:0!important}.top-headlines{padding:0 15px!important}}";
        endif;
        if ($darkMode): echo "#nav-top .navbar-nav .nav-item .nav-link{color:#fdfdfd!important;font-weight:400}#nav-top .navbar-nav .nav-item .nav-link:hover,#nav-top .navbar-nav .nav-item .nav-link:active,#nav-top .navbar-nav .nav-item .nav-link:focus{color:#fdfdfd!important}.mega-menu .menu-left{background-image:none!important;background-color:#202020!important;padding-right:0!important}.top-headlines .item{border-color:#272727}.header-mobile,.mobile-search-form{background-color:#0f0f0f!important}.nav-mobile .nav-item .nav-link{color:#fdfdfd}.nav-mobile .btn-default{background-color:#1d1d1d!important;border-color:#1d1d1d!important;color:#fdfdfd!important}";
        endif; ?>
    </style><?php endif; ?>
<script>
    var VrConfig = {
        baseURL: '<?= base_url(); ?>',
        csrfTokenName: '<?= csrf_token() ?>',
        sysLangId: '<?= $activeLang->id; ?>',
        authCheck: <?= authCheck() ? 1 : 0; ?>,
        rtl: <?= $rtl ? 'true' : 'false'; ?>,
        isRecaptchaEnabled: '<?= isRecaptchaEnabled($generalSettings) ? 1 : 0; ?>',
        categorySliderIds: [],
        textOk: "<?= clrQuotes(trans("ok")); ?>",
        textYes: "<?= clrQuotes(trans("yes")); ?>",
        textCancel: "<?= clrQuotes(trans("cancel")); ?>",
        textCorrectAnswer: "<?= clrQuotes(trans("correct_answer")); ?>",
        textWrongAnswer: "<?= clrQuotes(trans("wrong_answer")); ?>"
    };
</script>