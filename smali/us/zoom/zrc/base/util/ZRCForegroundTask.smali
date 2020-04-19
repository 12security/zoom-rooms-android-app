.class public abstract Lus/zoom/zrc/base/util/ZRCForegroundTask;
.super Lus/zoom/androidlib/app/ForegroundTask;
.source "ZRCForegroundTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lus/zoom/zrc/ZRCActivity;",
        ">",
        "Lus/zoom/androidlib/app/ForegroundTask;"
    }
.end annotation


# instance fields
.field private hasRun:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lus/zoom/androidlib/app/ForegroundTask;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lus/zoom/zrc/base/util/ZRCForegroundTask;->hasRun:Z

    return-void
.end method


# virtual methods
.method public isValidActivity(Ljava/lang/String;)Z
    .locals 2

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public run(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 1

    .line 16
    iget-boolean v0, p0, Lus/zoom/zrc/base/util/ZRCForegroundTask;->hasRun:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lus/zoom/zrc/base/util/ZRCForegroundTask;->hasRun:Z

    .line 18
    check-cast p1, Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/util/ZRCForegroundTask;->run(Lus/zoom/zrc/ZRCActivity;)V

    return-void
.end method

.method public abstract run(Lus/zoom/zrc/ZRCActivity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
