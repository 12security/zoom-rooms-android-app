.class Lus/zoom/zrc/ZRCApplication$ZRCLogApplication;
.super Lus/zoom/zrc/ZRCApplication$IZRCApplication;
.source "ZRCApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ZRCApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZRCLogApplication"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 416
    invoke-direct {p0, v0}, Lus/zoom/zrc/ZRCApplication$IZRCApplication;-><init>(Lus/zoom/zrc/ZRCApplication$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/ZRCApplication$1;)V
    .locals 0

    .line 416
    invoke-direct {p0}, Lus/zoom/zrc/ZRCApplication$ZRCLogApplication;-><init>()V

    return-void
.end method


# virtual methods
.method onCreate()V
    .locals 1

    .line 419
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->initForLoggingProcess()V

    return-void
.end method
