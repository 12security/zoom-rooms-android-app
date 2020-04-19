.class Lus/zoom/zrc/logging/ZRCAppLogger$2;
.super Ljava/lang/Object;
.source "ZRCAppLogger.java"

# interfaces
.implements Lus/zoom/androidlib/util/ILogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/logging/ZRCAppLogger;->getAndroidLibLogger()Lus/zoom/androidlib/util/ILogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/logging/ZRCAppLogger;


# direct methods
.method constructor <init>(Lus/zoom/zrc/logging/ZRCAppLogger;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger$2;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger$2;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-static {v0, p1, p2, p3, p4}, Lus/zoom/zrc/logging/ZRCAppLogger;->access$300(Lus/zoom/zrc/logging/ZRCAppLogger;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public needLogThreadId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
