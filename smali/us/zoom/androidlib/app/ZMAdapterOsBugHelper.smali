.class public Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;
.super Ljava/lang/Object;
.source "ZMAdapterOsBugHelper.java"


# static fields
.field private static final ourInstance:Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;


# instance fields
.field private mCanDraw:Z

.field private mOnOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;

    invoke-direct {v0}, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;-><init>()V

    sput-object v0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->ourInstance:Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->mOnOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->mCanDraw:Z

    return p0
.end method

.method static synthetic access$002(Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->mCanDraw:Z

    return p1
.end method

.method public static getInstance()Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;
    .locals 1

    .line 27
    sget-object v0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->ourInstance:Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;

    return-object v0
.end method


# virtual methods
.method public isNeedListenOverlayPermissionChanged()Z
    .locals 2

    .line 31
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ismCanDraw()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->mCanDraw:Z

    return v0
.end method

.method public startListenOverlayPermissionChange(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    const-string v0, "appops"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->mCanDraw:Z

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 44
    :cond_1
    new-instance v1, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper$1;

    invoke-direct {v1, p0, p1}, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper$1;-><init>(Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;Ljava/lang/String;)V

    iput-object v1, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->mOnOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    const-string p1, "android:system_alert_window"

    const/4 v1, 0x0

    .line 54
    iget-object v2, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->mOnOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/AppOpsManager;->startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public stopListenOverlayPermissionChange(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 60
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->mOnOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    if-eqz v0, :cond_1

    const-string v0, "appops"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->mOnOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {p1, v0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->mOnOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    :cond_1
    return-void
.end method
