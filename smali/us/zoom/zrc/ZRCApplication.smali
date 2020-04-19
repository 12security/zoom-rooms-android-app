.class public Lus/zoom/zrc/ZRCApplication;
.super Landroid/app/Application;
.source "ZRCApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/ZRCApplication$ZRCLogApplication;,
        Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;,
        Lus/zoom/zrc/ZRCApplication$IZRCApplication;
    }
.end annotation


# static fields
.field public static sAppLocale:Ljava/util/Locale;

.field private static sContext:Lus/zoom/zrc/ZRCApplication;

.field public static sSysLocale:Ljava/util/Locale;


# instance fields
.field private myApplication:Lus/zoom/zrc/ZRCApplication$IZRCApplication;

.field private supportsTrioSettings:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lus/zoom/zrc/ZRCApplication;
    .locals 1

    .line 63
    sget-object v0, Lus/zoom/zrc/ZRCApplication;->sContext:Lus/zoom/zrc/ZRCApplication;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getMemoryUsage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lus/zoom/zrc/ZRCApplication;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lus/zoom/zrc/ZRCApplication;->supportsTrioSettings:Z

    return p1
.end method

.method public static getInstance()Lus/zoom/zrc/ZRCApplication;
    .locals 1

    .line 71
    sget-object v0, Lus/zoom/zrc/ZRCApplication;->sContext:Lus/zoom/zrc/ZRCApplication;

    return-object v0
.end method

.method private static getMemoryUsage()Ljava/lang/String;
    .locals 5

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initApplication()V
    .locals 5

    .line 158
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, ""

    const-string v2, "activity"

    .line 162
    invoke-virtual {p0, v2}, Lus/zoom/zrc/ZRCApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 166
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_0

    .line 167
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":logging"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Lus/zoom/zrc/ZRCApplication$ZRCLogApplication;

    invoke-direct {v0, v1}, Lus/zoom/zrc/ZRCApplication$ZRCLogApplication;-><init>(Lus/zoom/zrc/ZRCApplication$1;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCApplication;->myApplication:Lus/zoom/zrc/ZRCApplication$IZRCApplication;

    goto :goto_1

    .line 176
    :cond_2
    new-instance v0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;

    invoke-direct {v0, v1}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;-><init>(Lus/zoom/zrc/ZRCApplication$1;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCApplication;->myApplication:Lus/zoom/zrc/ZRCApplication$IZRCApplication;

    :goto_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 5

    .line 101
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    :try_start_0
    const-string p1, "androidx.multidex.MultiDex"

    .line 103
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "install"

    const/4 v1, 0x1

    .line 104
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 105
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public changeLocaleTo(Ljava/util/Locale;)V
    .locals 2

    .line 145
    sput-object p1, Lus/zoom/zrc/ZRCApplication;->sAppLocale:Ljava/util/Locale;

    .line 146
    sget-object v0, Lus/zoom/zrc/ZRCApplication;->sContext:Lus/zoom/zrc/ZRCApplication;

    invoke-static {v0, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->changeLocaleTo(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v0, 0x0

    .line 147
    :goto_0
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getInProcessActivityCountInStack()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 148
    invoke-static {v0}, Lus/zoom/androidlib/app/ZMActivity;->getInProcessActivityInStackAt(I)Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-static {v1, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->changeLocaleTo(Landroid/content/Context;Ljava/util/Locale;)V

    .line 151
    invoke-virtual {v1}, Lus/zoom/androidlib/app/ZMActivity;->recreate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/ZRCApplication;->myApplication:Lus/zoom/zrc/ZRCApplication$IZRCApplication;

    invoke-virtual {p1}, Lus/zoom/zrc/ZRCApplication$IZRCApplication;->onLocaleChanged()V

    return-void
.end method

.method public isSupportsTrioSettings()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lus/zoom/zrc/ZRCApplication;->supportsTrioSettings:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 131
    sget-object v0, Lus/zoom/zrc/ZRCApplication;->sSysLocale:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lus/zoom/zrc/ZRCApplication;->sSysLocale:Ljava/util/Locale;

    .line 133
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lus/zoom/zrc/ZRCApplication;->sAppLocale:Ljava/util/Locale;

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/ZRCApplication;->myApplication:Lus/zoom/zrc/ZRCApplication$IZRCApplication;

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication$IZRCApplication;->onLocaleChanged()V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    iget-object v0, p0, Lus/zoom/zrc/ZRCApplication;->myApplication:Lus/zoom/zrc/ZRCApplication$IZRCApplication;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/ZRCApplication$IZRCApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 80
    sput-object p0, Lus/zoom/zrc/ZRCApplication;->sContext:Lus/zoom/zrc/ZRCApplication;

    .line 81
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 83
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lus/zoom/zrc/ZRCApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 84
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v1, Lus/zoom/zrc/ZRCApplication;->sSysLocale:Ljava/util/Locale;

    .line 85
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lus/zoom/zrc/ZRCApplication;->sAppLocale:Ljava/util/Locale;

    .line 87
    invoke-static {p0}, Lcom/zipow/cmmlib/CmmProxySettings;->initialize(Landroid/content/Context;)V

    .line 88
    new-instance v0, Lus/zoom/zrc/X509Utils;

    invoke-direct {v0}, Lus/zoom/zrc/X509Utils;-><init>()V

    sput-object v0, Lus/zoom/net/AndroidNetworkLibrary;->x505UtilImp:Lus/zoom/net/X505UtilImp;

    .line 90
    invoke-direct {p0}, Lus/zoom/zrc/ZRCApplication;->initApplication()V

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/ZRCApplication;->myApplication:Lus/zoom/zrc/ZRCApplication$IZRCApplication;

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication$IZRCApplication;->onCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 114
    iget-object v0, p0, Lus/zoom/zrc/ZRCApplication;->myApplication:Lus/zoom/zrc/ZRCApplication$IZRCApplication;

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication$IZRCApplication;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/ZRCApplication;->myApplication:Lus/zoom/zrc/ZRCApplication$IZRCApplication;

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication$IZRCApplication;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/ZRCApplication;->myApplication:Lus/zoom/zrc/ZRCApplication$IZRCApplication;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/ZRCApplication$IZRCApplication;->onTrimMemory(I)V

    return-void
.end method
