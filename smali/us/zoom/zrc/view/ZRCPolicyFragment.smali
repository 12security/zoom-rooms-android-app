.class public Lus/zoom/zrc/view/ZRCPolicyFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCPolicyFragment.java"


# instance fields
.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private isTablet:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWeb:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ZRCPolicyFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ZRCPolicyFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 37
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    return-object p0
.end method

.method private clearWebCacheAndCookie()V
    .locals 3

    .line 184
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 185
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 186
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 187
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 188
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 189
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 192
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    const-class v0, Lus/zoom/zrc/view/ZRCPolicyFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCDialogFragment;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lus/zoom/zrc/view/ZRCPolicyFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ZRCPolicyFragment;-><init>()V

    .line 54
    :cond_1
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPolicyFragment;->clearWebCacheAndCookie()V

    .line 180
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->dismiss()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->currentDomain()Ljava/lang/String;

    move-result-object p1

    .line 165
    sget v0, Lus/zoom/zrcbox/R$string;->language:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCPolicyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/privacy.html?onlycontent=1&nohyperlink=1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/privacy?onlycontent=1&nohyperlink=1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->context:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->isTablet:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/ZRCPolicyFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 73
    iget-object p3, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->convertView:Landroid/view/View;

    if-nez p3, :cond_1

    .line 74
    sget p3, Lus/zoom/zrcbox/R$layout;->zrc_policy_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->convertView:Landroid/view/View;

    .line 75
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_done:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/ZRCTextViewButton;

    if-eqz p1, :cond_0

    .line 77
    sget p2, Lus/zoom/zrcbox/R$string;->title_done:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/ZRCPolicyFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 78
    new-instance p2, Lus/zoom/zrc/view/ZRCPolicyFragment$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ZRCPolicyFragment$1;-><init>(Lus/zoom/zrc/view/ZRCPolicyFragment;)V

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/ZRCTextViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->web:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    .line 86
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 88
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 89
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 90
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 91
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 92
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 93
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 94
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 95
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 96
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object p2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 97
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    new-instance p2, Lus/zoom/zrc/view/ZRCPolicyFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ZRCPolicyFragment$2;-><init>(Lus/zoom/zrc/view/ZRCPolicyFragment;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 101
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    new-instance p2, Lus/zoom/zrc/view/ZRCPolicyFragment$3;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ZRCPolicyFragment$3;-><init>(Lus/zoom/zrc/view/ZRCPolicyFragment;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 107
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->mWeb:Landroid/webkit/WebView;

    new-instance p2, Lus/zoom/zrc/view/ZRCPolicyFragment$4;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ZRCPolicyFragment$4;-><init>(Lus/zoom/zrc/view/ZRCPolicyFragment;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewManager;

    if-eqz p1, :cond_2

    .line 156
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->convertView:Landroid/view/View;

    invoke-interface {p1, p2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 158
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 197
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 198
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->isTablet:Z

    const v1, 0x3f666666    # 0.9f

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPolicyFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPolicyFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCPolicyFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    return-void
.end method
