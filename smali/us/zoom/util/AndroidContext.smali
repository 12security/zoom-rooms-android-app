.class public Lus/zoom/util/AndroidContext;
.super Ljava/lang/Object;
.source "AndroidContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native initAppPackageName(Ljava/lang/String;)V
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 14
    invoke-static {p0}, Lus/zoom/util/AndroidContext;->initAppPackageName(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "context cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
