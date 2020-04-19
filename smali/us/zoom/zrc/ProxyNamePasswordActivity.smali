.class public Lus/zoom/zrc/ProxyNamePasswordActivity;
.super Lus/zoom/zrc/ZRCActivity;
.source "ProxyNamePasswordActivity.java"


# instance fields
.field private description:Ljava/lang/String;

.field private layout:Landroid/view/View;

.field private port:I

.field private proxyHost:Ljava/lang/String;

.field private submit:Landroid/widget/Button;

.field private user_name:Landroid/widget/EditText;

.field private user_pwd:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lus/zoom/zrc/ZRCActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/ProxyNamePasswordActivity;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->proxyHost:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/ProxyNamePasswordActivity;)I
    .locals 0

    .line 18
    iget p0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->port:I

    return p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/ProxyNamePasswordActivity;)Landroid/widget/EditText;
    .locals 0

    .line 18
    iget-object p0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->user_name:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/ProxyNamePasswordActivity;)Landroid/widget/EditText;
    .locals 0

    .line 18
    iget-object p0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->user_pwd:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 30
    invoke-virtual {p0}, Lus/zoom/zrc/ProxyNamePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "proxyHost"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->proxyHost:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lus/zoom/zrc/ProxyNamePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "port"

    const/16 v2, 0x1f90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->port:I

    .line 32
    invoke-virtual {p0}, Lus/zoom/zrc/ProxyNamePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->description:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lus/zoom/zrc/ProxyNamePasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lus/zoom/zrc/ProxyNamePasswordActivity;->checkIsInit()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->setProxyViewshowing(Z)V

    .line 39
    sget p1, Lus/zoom/zrcbox/R$layout;->server_name_password_activity:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0, v2}, Lus/zoom/zrc/ProxyNamePasswordActivity;->setFinishOnTouchOutside(Z)V

    .line 41
    sget p1, Lus/zoom/zrcbox/R$id;->layout:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->layout:Landroid/view/View;

    .line 42
    iget-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->layout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 43
    invoke-static {p0}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    invoke-static {p0}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    sget p1, Lus/zoom/zrcbox/R$id;->user_name:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->user_name:Landroid/widget/EditText;

    .line 46
    sget p1, Lus/zoom/zrcbox/R$id;->user_pwd:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->user_pwd:Landroid/widget/EditText;

    .line 47
    sget p1, Lus/zoom/zrcbox/R$id;->submit:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->submit:Landroid/widget/Button;

    .line 49
    iget-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity;->submit:Landroid/widget/Button;

    new-instance v0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ProxyNamePasswordActivity$1;-><init>(Lus/zoom/zrc/ProxyNamePasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 71
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onDestroy()V

    .line 72
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setProxyViewshowing(Z)V

    return-void
.end method
